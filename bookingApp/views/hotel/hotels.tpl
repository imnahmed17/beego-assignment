{{ template "header.tpl" . }}

{{ template "hotel/hotel-nav.tpl" . }}

<h2 class="mt-3 text-3xl font-medium text-center text-[#013573]">Vacation Rentals in <span class="uppercase">{{ .Location }}</span></h2>

<div class="max-w-6xl mx-auto">
    <div class="px-2 pt-6 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {{ range .Hotels }}
        <div class="border rounded-lg hover:shadow-lg transition-transform duration-200 ease-in-out hover:scale-105">
            <div class="relative">
                <img src="https://cf.bstatic.com{{ .BasicPropertyData.Photos.Main.HighResUrl.RelativeUrl }}" class="w-full h-[209px] rounded-t-lg" alt="" loading="lazy">
                <span class="absolute left-2 bottom-2 px-3 py-1 rounded-md font-medium bg-slate-100 opacity-90">From {{ .PriceDisplayInfoIrene.DisplayPrice.AmountPerStay.AmountRounded }}</span>
            </div>
            <div class="px-4 py-2.5">
                <div class="flex justify-between items-center text-sm">
                    <div class="flex gap-1.5">
                        <i class="fi fi-ss-star flex items-center text-[#00CD92]"></i>
                        <p><span class="font-medium">{{ .BasicPropertyData.StarRating.Value}}.0</span> ({{ .BasicPropertyData.Reviews.ReviewsCount}} Reviews)</p>
                    </div>
                    <p>{{ .MatchingUnitConfigurations.CommonConfiguration.NbAllBeds }} Bed</p>
                </div>
                <h4 class="my-1 font-medium">
                    {{ if gt (len .DisplayName.Text) 39 }}
                        {{ slice .DisplayName.Text 0 39 }}...
                    {{ else }}
                        {{ .DisplayName.Text }}
                    {{ end }}
                </h4>
                <p class="text-sm text-[#013573]">{{ .BasicPropertyData.Location.City }}</p>
                <div class="mt-2 mb-1 flex justify-end">
                    <a href="">
                        <button class="px-4 py-1.5 rounded-md font-semibold text-white bg-[#00CD92]">View Availability</button>
                    </a>
                </div>
            </div>
        </div>
        {{ end }}
    </div>
</div>

{{ template "footer.tpl" . }}