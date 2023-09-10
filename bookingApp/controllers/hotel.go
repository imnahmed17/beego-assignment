package controllers

import (
	beego "github.com/beego/beego/v2/server/web"
	"encoding/json"
	"fmt"
	"io"
	// "log"
    "net/http"
    "regexp"
)

type HotelController struct {
	beego.Controller
}

type LocationResponse struct {
    Data []struct {
		GeoID string `json:"geoId"`
	} `json:"data"`
}

type HotelData struct {
	ID              string `json:"id"`
	Title           string `json:"title"`
	BubbleRating    struct {
		Count  string `json:"count"`
		Rating float64 `json:"rating"`
	} `json:"bubbleRating"`
	Provider        string `json:"provider"`
	PriceForDisplay string `json:"priceForDisplay"`
}

func (c *HotelController) Get() {
    // c.TplName = "index.tpl"
    c.TplName = "hotel/hotels.tpl"
}

func (c *HotelController) SearchHotels() {
	location := c.GetString("tab1Location")
	checkIn := c.GetString("t-start")
	checkOut := c.GetString("t-end")
	rooms := c.GetString("tab1Rooms")
	adults := c.GetString("tab1Adults")

	geoId, err := GetGeoIDFromLocation(location)
	if err != nil {
		c.Data["Error"] = "geoId not found for " + location
		fmt.Println(err)
		return
	}
	
	url := "https://tripadvisor16.p.rapidapi.com/api/v1/hotels/searchHotels" +
		"?geoId=" + geoId +
		"&checkIn=" + checkIn +
		"&checkOut=" + checkOut +
		"&pageNumber=1" +
		"&adults=" + adults +
		"&rooms=" + rooms +
		"&currencyCode=USD"

	fmt.Println(geoId)
	fmt.Println(url)

	// req, err := http.NewRequest("GET", url, nil)
	// if err != nil {
	// 	c.Data["Error"] = "Error creating request"
	// 	return
	// }

	// req.Header.Add("X-RapidAPI-Key", "772359a553msha653b68a858b937p1d633cjsndd93f0a3fbc0")
	// req.Header.Add("X-RapidAPI-Host", "tripadvisor16.p.rapidapi.com")

	// hotelDataChan := make(chan []HotelData)
	// errChan := make(chan error)

	// go func() {
	// 	res, err := http.DefaultClient.Do(req)
	// 	if err != nil {
	// 		c.Data["Error"] = "Error making the request"
	// 		errChan <- err
	// 		return
	// 	}
	// 	defer res.Body.Close()

	// 	body, err := io.ReadAll(res.Body)
	// 	if err != nil {
	// 		c.Data["Error"] = "Error reading the response"
	// 		errChan <- err
	// 		return
	// 	}

	// 	var allHotels struct {
	// 		Data struct {
	// 			Data []HotelData `json:"data"`
	// 		} `json:"data"`
	// 	}

	// 	if err = json.Unmarshal(body, &allHotels); err != nil {
	// 		c.Data["Error"] = "Error parsing JSON response"
	// 		errChan <- err
	// 		return
	// 	}

	// 	hotelDataChan <- allHotels.Data.Data
	// }()

	// extractedData := <- hotelDataChan

	// for _, info := range extractedData {
	// 	fmt.Println("Title:", info.Title)
	// }

	c.TplName = "hotel/hotels.tpl"
}

func (c *HotelController) HotelDetails() {
	// id, _ := c.GetInt(":id")

	c.TplName = "hotel/hotel-details.tpl"
}

func GetGeoIDFromLocation(location string) (string, error) {
	url := fmt.Sprintf("https://tripadvisor16.p.rapidapi.com/api/v1/hotels/searchLocation?query=%s", location)

	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("X-RapidAPI-Key", "772359a553msha653b68a858b937p1d633cjsndd93f0a3fbc0")
	req.Header.Add("X-RapidAPI-Host", "tripadvisor16.p.rapidapi.com")

	res, err := http.DefaultClient.Do(req)
	if err != nil {
		return "", err
	}

	defer res.Body.Close()
	body, err := io.ReadAll(res.Body)
	if err != nil {
		return "", err
	}

	// Define a variable of type LocationResponse
    var locationResponse LocationResponse

    // Unmarshal the JSON response into the struct
    if err := json.Unmarshal(body, &locationResponse); err != nil {
        fmt.Println("Error unmarshaling JSON:", err)
        return "", err
    }

	// Check if there is data in LocationResponse
    // if len(locationResponse.Data) > 0 {
    //     fmt.Println("Data found in LocationResponse:")
    //     for _, data := range locationResponse.Data {
    //         fmt.Println("GeoID:", data.GeoID)
    //     }
    // } else {
    //     fmt.Println("No results found.")
    // }

	// Define a regular expression to match the geoId pattern
	geoIdPattern := `loc;(\d+)`
	re := regexp.MustCompile(geoIdPattern)

	// Find the first match in the response body
	match := re.FindStringSubmatch(string(body))
	fmt.Println(match)

	if len(match) < 2 {
		return "", fmt.Errorf("GeoID not found in the response")
	}

	// Extract the geoId from the match
	geoID := match[1]
	return geoID, nil
}
