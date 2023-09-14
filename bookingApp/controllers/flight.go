package controllers

import (
	"bookingApp/models"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	beego "github.com/beego/beego/v2/server/web"
)

type FlightController struct {
	beego.Controller
}

func (c *FlightController) SearchFlights() {
	source := c.GetString("tab2Source")
	c.Data["Location_To"] = source
	destination := c.GetString("tab2Destination")
	c.Data["Location_From"] = destination
	departure_date := c.GetString("tab2Departure_date")
	c.Data["Departure_date"] = departure_date
	return_date := c.GetString("tab2Return_date")
	c.Data["Return_date"] = return_date
	adults := c.GetString("tab2Adults")
	c.Data["Adults"] = adults
	classOfService := c.GetString("tab2ClassOfService")

	if source == "" || destination == "" || departure_date == "" || return_date == "" || adults == "" || classOfService == "" {
		c.Data["Error"] = "Please Fill the all Required Field"
        c.Redirect("/", 302)
        return
	}
	
	url := "https://booking-com13.p.rapidapi.com/flights/return" +
		"?location_from=" + source +
		"&location_to=" + destination +
		"&departure_date=" + departure_date +
		"&return_date=" + return_date +
		"&adult_number=" + adults +
		"&page=1&country_flag=us" +
		"&class=" + classOfService

	fmt.Println(url)

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		c.Data["Error"] = "Error creating request"
		return
	}

	req.Header.Add("X-RapidAPI-Key", "04d45596a9mshafcf88d1434dc85p1fc8acjsnc24ebc76b973")
	req.Header.Add("X-RapidAPI-Host", "booking-com13.p.rapidapi.com")

	flightDataChan := make(chan models.FlightData)

	go func() {
		res, err := http.DefaultClient.Do(req)
		if err != nil {
			c.Data["Error"] = "Error making the request"
			flightDataChan <- models.FlightData{}
			return
		}
		
		defer res.Body.Close()
		body, err := io.ReadAll(res.Body)
		if err != nil {
			c.Data["Error"] = "Error reading the response"
			flightDataChan <- models.FlightData{}
			return
		}
		
		var allFlights models.FlightData
		if err = json.Unmarshal(body, &allFlights); err != nil {
			c.Data["Error"] = "Error parsing JSON response"
			flightDataChan <- models.FlightData{}
			return
		}

		flightDataChan <- allFlights
	}()

	extractedData := <- flightDataChan
	c.Data["Flights"] = extractedData.Data

	fmt.Println("Total flights", extractedData.Data.FilteredFlightsCount)
	c.Data["Length"] = len(extractedData.Data.Flights)

	// for _, info := range extractedData {
	// 	fmt.Println("Title:", info.DisplayName.Text)
	// }

	c.TplName = "flight/flights.tpl"
}