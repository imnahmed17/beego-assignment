var departure_date = document.getElementById('departure_date');
var return_date = document.getElementById('return_date');

var defaultDepartureDate = new Date();
var departureDay = defaultDepartureDate.getDate();
var departureMonth = defaultDepartureDate.getMonth() + 1;
var departureYear = defaultDepartureDate.getFullYear();
departure_date.value = `${departureYear}-${departureMonth < 10 ? `0${departureMonth}` : departureMonth}-${departureDay < 10 ? `0${departureDay}` : departureDay}`;

var nextDay = new Date();
nextDay.setDate(nextDay.getDate() + 1);

var defaultReturnDate = new Date(nextDay);
var returnDay = defaultReturnDate.getDate();
var returnMonth = defaultReturnDate.getMonth() + 1;
var returnYear = defaultReturnDate.getFullYear();
return_date.value = `${returnYear}-${returnMonth < 10 ? `0${returnMonth}` : returnMonth}-${returnDay < 10 ? `0${returnDay}` : returnDay}`;

var departure_date_picker = new Pikaday({ 
    field: departure_date,
    format: 'YYYY-MM-DD',
    toString(date, format) {
        const day = date.getDate();
        const month = date.getMonth() + 1;
        const year = date.getFullYear();
        return `${year}-${month < 10 ? `0${month}` : month}-${day < 10 ? `0${day}` : day}`;
    },
    minDate: new Date()
});

var return_date_picker = new Pikaday({ 
    field: return_date,
    format: 'YYYY-MM-DD',
    toString(date, format) {
        const day = date.getDate();
        const month = date.getMonth() + 1;
        const year = date.getFullYear();
        return `${year}-${month < 10 ? `0${month}` : month}-${day < 10 ? `0${day}` : day}`;
    },
    minDate: nextDay
});