# A Travel Agency

A simple Travel Agency implemented in Beego, featuring Hotel search, Hotel details, Flight search functionality.

## Table of Contents

- [Features](#features)
- [Installation](#installation)

## Features

- Search Hotels.
- View detailed information about a hotel.
- Search Flights.

## Installation

1. Make sure you have Go installed. If not, you can download it from [https://go.dev/dl/](https://go.dev/dl/).

2. Make sure you have Go installed. If not, try this commands:
```bash
go install github.com/beego/beego/v2@latest
go install github.com/beego/bee/v2@latest
code .
```

3. After that type `Ctrl+Shift+P` and select `Go: Install/Update Tools`. Mark all than press ok.

4. Clone this repository:
```bash
git clone https://github.com/imnahmed17/beego-assignment
cd beego-assignment
code .
cd bookingApp
```

5. Project setup:

Create a `conf` folder inside `bookingApi` folder as well as create a `app.conf` file inside `conf` folder (`bookingApi/conf/app.conf`). Now, add these below lines to `app.conf` file:
```bash
appname = bookingApi
httpport = 8080
runmode = dev

rapidapikey = your_api_key
rapidapihost = your_api_host
```
To get RapidApi key and host browse [Booking.com API | RapidAPI](https://rapidapi.com/ntd119/api/booking-com13?fbclid=IwAR2aC91bQeRddPSQZ7szn93Ck7hMdmRUwpZ9EBHQf-RPps0lua_Qe3jLd8I).

6. Run this application:
```bash
bee run
```
Now, open your web browser and navigate to `http://localhost:8080` to access the application.