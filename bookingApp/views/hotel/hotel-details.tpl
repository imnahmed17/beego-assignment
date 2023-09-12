{{ template "header.tpl" . }}

{{ template "hotel/hotel-nav.tpl" . }}

<div class="max-w-6xl mx-auto px-2 lg:px-0">
    <div class="mt-2 flex items-center gap-3 text-blue-700 hover:text-blue-500 cursor-pointer" onclick="window.history.back();">
        <i class="fi fi-rs-arrow-left flex items-center"></i>
        <p class="text-sm hover:underline">See all properties</p>
    </div>
    <div class="my-2 flex gap-1 text-[#013573]">
        {{ range .HotelDetails.BasicPropertyData }}
            <h4 class="text-lg font-medium">{{ .Location.City }}</h4>
        {{ end }}
        <h4 class="text-lg font-medium">
            | in {{ if lt (len .Destination) 4 }}
                <span class="uppercase">{{ .Destination }}</span>
            {{ else }}
                <span class="capitalize">{{ .Destination }}</span>
            {{ end }}
        </h4>
    </div>
    <div class="flex gap-2">
        <div class="w-full md:w-1/2">
            {{ $limit := 1 }}
            {{ range $index, $photo := .HotelPhotos }}
                {{ if lt $index $limit }}
                    <img class="h-full" src="https://cf.bstatic.com{{ $photo.PhotoUri }}" alt="">
                {{ end }}
            {{ end }}
        </div>
        <div class="md:w-1/2 hidden md:block">
            <div class="grid grid-cols-2 gap-2">
                {{ range $index, $photo := .HotelPhotos }}
                    {{ if and (ge $index 1) (le $index 4) }}
                        <img class="w-full h-full" src="https://cf.bstatic.com{{ $photo.PhotoUri }}" alt="">
                    {{ end }}
                {{ end }}
            </div>
        </div>
    </div>
    {{ range .HotelDetails.BasicPropertyData }}
        <h4 class="my-3 text-lg font-medium text-[#013573]">{{ .Name }}</h4>
    {{ end }}
    {{ range .HotelDetails.HotelTranslation }}
        <p class="text-justify">{{ .Description }}</p>
    {{ end }}
    <div class="my-2 flex gap-1">
        {{ range .HotelDetails.BasicPropertyData }}
            <p>{{ .Location.City }} is located</p>
        {{ end }}
        <p>
            in {{ if lt (len .Destination) 4 }}
                <span class="uppercase">{{ .Destination }}</span>
            {{ else }}
                <span class="capitalize">{{ .Destination }}</span>
            {{ end }}
        </p>
    </div>
    <h4 class="mt-3 mb-2 text-lg font-medium text-[#013573]">Amenities</h4>
    <div class="mb-1 flex flex-col md:flex-row justify-between">
        {{ $limit := 5 }}
        {{ range $index, $item := .HotelDetails.GenericFacilityHighlight }}
            {{ if lt $index $limit }}
                <p>{{ $item.Title }}</p>
            {{ end }}
        {{ end }}
    </div>
    <hr class="mb-4">
</div>

{{ template "footer.tpl" . }}