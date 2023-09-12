package models

type HotelData struct {
	BasicPropertyData struct {
		Location struct {
			City 	string `json:"city"`
		} `json:"location"`
		Photos struct {
			Main struct {
				HighResUrl struct {
					RelativeUrl string `json:"relativeUrl"`
				} `json:"highResUrl"`
			} `json:"main"`
		} `json:"photos"`
		Reviews struct {
			ReviewsCount int `json:"reviewsCount"`
		} `json:"reviews"`
		StarRating struct {
			Value int `json:"value"`
		} `json:"starRating"`
	} `json:"basicPropertyData"`
	DisplayName struct {
		Text string `json:"text"`
	} `json:"displayName"`
	IdDetail string `json:"idDetail"`
	MatchingUnitConfigurations struct {
		CommonConfiguration struct {
			NbAllBeds int `json:"nbAllBeds"`
		} `json:"commonConfiguration"`
	} `json:"matchingUnitConfigurations"`
	PriceDisplayInfoIrene struct {
		DisplayPrice struct {
			AmountPerStay struct {
				AmountRounded string `json:"amountRounded"`
			} `json:"amountPerStay"`
		} `json:"displayPrice"`
	} `json:"priceDisplayInfoIrene"`
}

type HotelDetails struct {
	Data struct {
		BasicPropertyData []struct {
			Location struct {
				City string `json:"city"`
			} `json:"location"`
		} `json:"BasicPropertyData"`
		GenericFacilityHighlight []struct {
			Title string `json:"title"`
		} `json:"GenericFacilityHighlight"`
		HotelTranslation []struct {
			Description string `json:"description"`
		} `json:"HotelTranslation"`
		RTRoomPhoto []struct {
			PhotoURI      string `json:"photoUri"`
		} `json:"RTRoomPhoto"`
	} `json:"data"`
}