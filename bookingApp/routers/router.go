package routers

import (
	"bookingApp/controllers"
	beego "github.com/beego/beego/v2/server/web"
)

func init() {
    beego.Router("/", &controllers.HotelController{})
	beego.Router("/search", &controllers.HotelController{}, "get:SearchHotels")
	beego.Router("/hotel", &controllers.HotelController{}, "get:HotelDetails")
}
