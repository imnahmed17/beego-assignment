{{ template "header.tpl" . }}

<div class="max-w-6xl mx-auto">
    <div class="mt-4 flex items-center gap-3 text-blue-700 hover:text-blue-500 cursor-pointer" onclick="window.history.back();">
        <i class="fi fi-rs-arrow-left flex items-center"></i>
        <p class="text-sm hover:underline">See all properties</p>
    </div>
    <h4>{{ .HotelDetails.BasicPropertyData[0].Location.City }}</h4>
</div>

{{ template "footer.tpl" . }}