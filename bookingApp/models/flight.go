package models

type FlightData struct {
	Data struct {
		FilteredFlightsCount int `json:"filteredFlightsCount"`
		Flights []struct {
			ID             string `json:"id"`
			ShareableURL   string `json:"shareableUrl"`
			TravelerPrices []struct {
				Price struct {
					Price struct {
						Currency struct {
							Code string `json:"code"`
						} `json:"currency"`
						Value int `json:"value"`
					} `json:"price"`
					VAT struct {
						Value int `json:"value"`
					} `json:"vat"`
				} `json:"price"`
			} `json:"travelerPrices"`
		} `json:"flights"`
		Routes []struct {
			Destination struct {
				CityCode string `json:"cityCode"`
				CityName string `json:"cityName"`
			} `json:"destination"`
			Origin struct {
				CityCode string `json:"cityCode"`
				CityName string `json:"cityName"`
			} `json:"origin"`
		} `json:"routes"`
	} `json:"data"`
}