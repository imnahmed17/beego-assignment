{{ template "header.tpl" . }}

{{ template "flight/flight-nav.tpl" . }}

{{ if .Flights }}
    <div class="mt-3 flex justify-center gap-1 text-3xl font-medium">
        <h2>
            Showing {{ .Length }} flights
        </h2>
        {{ $limit := 1 }}
        {{ range $index, $item := .Flights.Routes }}
            {{ if lt $index $limit }}
            <h2>from {{ $item.Origin.CityCode }} to {{ $item.Destination.CityCode }} and vice versa</h2>
            {{ end }}
        {{ end }}
    </div>
    <p class="text-lg text-center text-slate-500">Price per passenger includes tax and fees</p>

    <div class="max-w-5xl mx-auto px-2 py-6 space-y-4">
        {{ $Departure_date := .Departure_date }}
        {{ $Return_date := .Return_date }}
        {{ range .Flights.Flights }}
            <div class="px-8 py-4 flex justify-between items-center border border-2 rounded-lg shadow-lg">
                <div>
                    <div class="flex items-center gap-5">
                        <p class="px-2 border">Eco Saver</p>
                        <i class="fi fi-ss-luggage-cart text-xl text-green-500"></i>
                        <i class="fi fi-br-plane-prop text-xl"></i>
                        <i class="fi fi-ss-seat-airline text-xl"></i>
                    </div>
                    <div class="py-6">
                        <p>ID: {{ .ID }}</p>
                        <p>Departure Date: {{ $Departure_date }}</p>
                        <p>Return Date: {{ $Return_date }}</p>
                    </div>
                    <div class="flex gap-2 text-green-600">
                        <i class="fi fi-rs-check"></i>
                        <p>Free cancellation within 42 hours of booking completion</p>
                    </div>
                </div>
                <div>
                    <div class="flex justify-end items-end gap-1 text-red-600">
                        {{ $limit := 1 }}
                        {{ range $index, $item := .TravelerPrices }}
                            {{ if lt $index $limit }}
                            <div>{{ $item.Price.Price.Currency.Code }}</div>
                            <div class="text-2xl font-medium">{{ $item.Price.Price.Value }}</div>
                            {{ end }}
                        {{ end }}
                    </div>
                    <p class="-mt-1 text-slate-500 text-right">Average price per passenger</p>
                    <div class="mt-2 mb-1 flex justify-end items-center gap-2 text-lg text-blue-700 hover:text-blue-500 cursor-pointer">
                        <a href="{{ .ShareableURL }}">Flight details</a>
                        <i class="fi fi-br-caret-down flex items-center"></i>
                    </div>
                </div>
            </div>
        {{ end }}
    </div>
{{ else }}
    <h3 class="mt-3 text-3xl font-medium text-center">No flights available</h3>
{{ end }}

{{ template "footer.tpl" . }}