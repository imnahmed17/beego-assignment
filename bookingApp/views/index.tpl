{{ template "header.tpl" . }}

<div class="px-8 py-3 bg-[#FDEEE6] hidden md:block">
    <div class="flex justify-center items-center gap-6">
        <img src="https://img.agoda.net/images/INTTRV-45/default/Bags-heart_2021-09-30.svg" alt="">
        <span class="text-sm text-black mr-5">Traveling internationally? Get updated information on COVID-19 travel guidance and restrictions.</span>
        <button class="text-xs text-[#5392F9] hover:text-white px-3 py-1 rounded border border-[#5392F9] bg-white hover:bg-[#5392F9]">Learn more</button>
    </div>
</div>

<section>
    <div class="h-[320px] bg-no-repeat bg-center bg-cover" style="background-image: url(https://cdn6.agoda.net/images/MVC/default/background_image/illustrations/bg-agoda-homepage.png);">
        <div class="max-w-6xl mx-auto">
            <div class="pt-3 w-1/2 lg:w-1/3 absolute top-56 inset-x-1/4 lg:inset-x-1/3 z-20 bg-white rounded-lg flex justify-center gap-6 shadow-lg">
                <div class="pb-2 flex items-center gap-1 cursor-pointer tab-item active" onclick="openTab('tab1')">
                    <i class="fi fi-ss-hotel text-lg flex items-center"></i>
                    <h6 class="tracking-wide">Hotels &amp; Homes</h6>
                </div>
                <div class="pb-2 flex items-center gap-1.5 cursor-pointer tab-item" onclick="openTab('tab2')">
                    <i class="fi fi-ss-restaurant text-lg flex items-center"></i>
                    <h6 class="tracking-wide">Restaurants</h6>
                </div>
                <div>
                    <div class="absolute -top-3.5 pl-6">
                        <span class="p-1 bg-[#E12D2D] text-[10px] text-white rounded-sm">New!</span>
                    </div>
                    <div class="pb-2 flex items-center gap-1.5 cursor-pointer tab-item" onclick="openTab('tab3')">
                        <i class="fi fi-ss-plane-departure text-lg flex items-center"></i>
                        <h6 class="tracking-wide">Flights</h6>
                    </div>
                </div>
            </div>
            {{ template "home/home-tab1.tpl" . }}
            {{ template "home/home-tab2.tpl" . }}
            {{ template "home/home-tab3.tpl" . }}
        </div>
    </div>
</section>

<footer>
    <div class="author">
        Official website:
        <a href="http://{{.Website}}">{{.Website}}</a> / Contact me:
        <a class="email" href="mailto:{{.Email}}">{{.Email}}</a>
    </div>
</footer>
<div class="backdrop"></div>

{{ template "footer.tpl" . }}