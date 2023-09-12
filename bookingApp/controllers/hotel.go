package controllers

import (
	"bookingApp/models"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	beego "github.com/beego/beego/v2/server/web"
)

type HotelController struct {
	beego.Controller
}

func (c *HotelController) Get() {
    c.TplName = "index.tpl"
    // c.TplName = "hotel/hotels.tpl"
}

func (c *HotelController) SearchHotels() {
	location := c.GetString("tab1Location")
	c.Data["Location"] = location
	checkIn := c.GetString("t-start")
	checkOut := c.GetString("t-end")
	rooms := c.GetString("tab1Rooms")
	adults := c.GetString("tab1Adults")

	url := "https://booking-com13.p.rapidapi.com/stays/properties/list-v2" +
		"?location=" + location + 
		"&checkin_date=" + checkIn + 
		"&checkout_date=" + checkOut + 
		"&language_code=en-us&currency_code=USD" +
		"&adults=" + adults + 
		"&rooms=" + rooms

	fmt.Println(url)

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		c.Data["Error"] = "Error creating request"
		return
	}

	req.Header.Add("X-RapidAPI-Key", "772359a553msha653b68a858b937p1d633cjsndd93f0a3fbc0")
	req.Header.Add("X-RapidAPI-Host", "booking-com13.p.rapidapi.com")

	hotelDataChan := make(chan []models.HotelData)
	errChan := make(chan error)

	go func() {
		res, err := http.DefaultClient.Do(req)
		if err != nil {
			c.Data["Error"] = "Error making the request"
			errChan <- err
			return
		}
		fmt.Println("res:", res)
		defer res.Body.Close()
		body, err := io.ReadAll(res.Body)
		if err != nil {
			c.Data["Error"] = "Error reading the response"
			errChan <- err
			return
		}
		fmt.Println("body:", body)
		var allHotels struct {
			Message string `json:"message"`
			Data 	[]models.HotelData `json:"data"`
		}

		if err = json.Unmarshal(body, &allHotels); err != nil {
			c.Data["Error"] = "Error parsing JSON response"
			errChan <- err
			return
		}

		hotelDataChan <- allHotels.Data
	}()

	extractedData := <- hotelDataChan
	c.Data["Hotels"] = extractedData
	c.Data["Message"] = extractedData

	// for _, info := range extractedData {
	// 	fmt.Println("Title:", info.DisplayName.Text)
	// }

	c.TplName = "hotel/hotels.tpl"
}

func (c *HotelController) HotelDetails() {
	// id, _ := c.GetInt(":id")

	c.TplName = "hotel/hotel-details.tpl"
}
