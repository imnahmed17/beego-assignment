package controllers

import (
	"bookingApp/models"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	beego "github.com/beego/beego/v2/server/web"
)

var CheckIn string
var CheckOut string
var Destination string

type HotelController struct {
	beego.Controller
}

func (c *HotelController) SearchHotels() {
	Destination = c.GetString("tab1Location")
	c.Data["Destination"] = Destination
	checkIn := c.GetString("t-start")
	CheckIn = checkIn
	checkOut := c.GetString("t-end")
	CheckOut = checkOut
	rooms := c.GetString("tab1Rooms")
	adults := c.GetString("tab1Adults")

	if Destination == "" || checkIn == "" || checkOut == "" || rooms == "" || adults == "" {
		c.Data["Error"] = "Please Fill the all Required Field"
        c.Redirect("/", 302)
        return
	}
	
	url := "https://booking-com13.p.rapidapi.com/stays/properties/list-v2" +
		"?location=" + Destination + 
		"&checkin_date=" + checkIn + 
		"&checkout_date=" + checkOut + 
		"&language_code=en-us&currency_code=USD" +
		"&adults=" + adults + 
		"&rooms=" + rooms

	// fmt.Println(url)

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		c.Data["Error"] = "Error creating request"
		return
	}

	req.Header.Add("X-RapidAPI-Key", "04d45596a9mshafcf88d1434dc85p1fc8acjsnc24ebc76b973")
	req.Header.Add("X-RapidAPI-Host", "booking-com13.p.rapidapi.com")

	hotelDataChan := make(chan models.HotelData)

	go func() {
		res, err := http.DefaultClient.Do(req)
		if err != nil {
			c.Data["Error"] = "Error making the request"
			hotelDataChan <- models.HotelData{}
			return
		}
		
		defer res.Body.Close()
		body, err := io.ReadAll(res.Body)
		if err != nil {
			c.Data["Error"] = "Error reading the response"
			hotelDataChan <- models.HotelData{}
			return
		}
		
		var allHotels models.HotelData
		if err = json.Unmarshal(body, &allHotels); err != nil {
			c.Data["Error"] = "Error parsing JSON response"
			hotelDataChan <- models.HotelData{}
			return
		}

		hotelDataChan <- allHotels
	}()

	extractedData := <- hotelDataChan
	c.Data["Hotels"] = extractedData.Data

	// for _, info := range extractedData {
	// 	fmt.Println("Title:", info.DisplayName.Text)
	// }

	c.TplName = "hotel/hotels.tpl"
}

func (c *HotelController) HotelDetails() {
	c.Data["Destination"] = Destination
	id := c.GetString("id")
	
	if id == "" {
		c.Data["Error"] = "ID not found"
        c.Redirect("/", 302)
        return
	}

	hotelDetails, err := GetHotelDetails(id)
    if err != nil {
        c.Data["Error"] = "Error fetching hotel details: " + err.Error()
        return
    }
	c.Data["HotelDetails"] = hotelDetails.Data

	hotelPhotos, err := GetHotelPhotos(id)
    if err != nil {
        c.Data["Error"] = "Error fetching hotel details: " + err.Error()
        return
    }
	c.Data["HotelPhotos"] = hotelPhotos.Data.Photos

	c.TplName = "hotel/hotel-details.tpl"
}

func GetHotelDetails(id string) (models.HotelDetails, error) {
    url := "https://booking-com13.p.rapidapi.com/stays/properties/detail" +
        "?id_detail=" + id +
        "&checkin_date=" + CheckIn +
        "&checkout_date=" + CheckOut +
        "&language_code=en-us&currency_code=USD"

	// fmt.Println(url)

    req, err := http.NewRequest("GET", url, nil)
    if err != nil {
        return models.HotelDetails{}, err
    }

    req.Header.Add("X-RapidAPI-Key", "04d45596a9mshafcf88d1434dc85p1fc8acjsnc24ebc76b973")
    req.Header.Add("X-RapidAPI-Host", "booking-com13.p.rapidapi.com")

    res, err := http.DefaultClient.Do(req)
    if err != nil {
        return models.HotelDetails{}, err
    }

    defer res.Body.Close()
    body, err := io.ReadAll(res.Body)
    if err != nil {
        return models.HotelDetails{}, err
    }

    var hotelDetails models.HotelDetails
    if err = json.Unmarshal(body, &hotelDetails); err != nil {
        return models.HotelDetails{}, err
    }

    return hotelDetails, nil
}

func GetHotelPhotos(id string) (models.HotelPhotos, error) {
	url := "https://booking-com13.p.rapidapi.com/stays/properties/detail/photos" +
		"?id_detail=" + id +
		"&language_code=en-us"

	fmt.Println(url)

    req, err := http.NewRequest("GET", url, nil)
    if err != nil {
        return models.HotelPhotos{}, err
    }

    req.Header.Add("X-RapidAPI-Key", "04d45596a9mshafcf88d1434dc85p1fc8acjsnc24ebc76b973")
    req.Header.Add("X-RapidAPI-Host", "booking-com13.p.rapidapi.com")

    res, err := http.DefaultClient.Do(req)
    if err != nil {
        return models.HotelPhotos{}, err
    }

    defer res.Body.Close()
    body, err := io.ReadAll(res.Body)
    if err != nil {
        return models.HotelPhotos{}, err
    }

    var hotelPhotos models.HotelPhotos
    if err = json.Unmarshal(body, &hotelPhotos); err != nil {
        return models.HotelPhotos{}, err
    }

    return hotelPhotos, nil
}
