package routers

import (
	"bookingApp/controllers"
	beego "github.com/beego/beego/v2/server/web"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	beego.Router("/search-hotel", &controllers.HotelController{}, "get:SearchHotels")
	beego.Router("/hotel", &controllers.HotelController{}, "get:HotelDetails")
	beego.Router("/search-flight", &controllers.FlightController{}, "get:SearchFlights")
}
