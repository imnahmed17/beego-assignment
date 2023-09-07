<!DOCTYPE html>

<html>
    <head>
        <title>Booking App</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="https://cdn.jsdelivr.net/npm/daisyui@3.7.3/dist/full.css" rel="stylesheet" type="text/css" />
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-solid-straight/css/uicons-solid-straight.css'>
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-rounded/css/uicons-bold-rounded.css'>
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
        <link rel="stylesheet" href="static/css/styles.css">
    </head>

    <body>
        {{ template "home/home-header.tpl" . }}
        <section>
            <div class="h-[320px] bg-[url(https://cdn6.agoda.net/images/MVC/default/background_image/illustrations/bg-agoda-homepage.png)] bg-center bg-no-repeat bg-cover">
                <div class="max-w-6xl mx-auto">
                    <div class="pt-3 w-1/2 absolute top-56 inset-x-1/4 z-20 bg-white rounded-lg flex justify-center gap-6 shadow-lg">
                        <div class="pb-2 flex items-center gap-1 cursor-pointer tab-item active" onclick="openTab('tab1')">
                            <i class="fi fi-ss-hotel text-lg flex items-center"></i>
                            <h6 class="tracking-wide">Hotels &amp; Homes</h6>
                        </div>
                        <div class="pb-2 flex items-center gap-1.5 cursor-pointer tab-item" onclick="openTab('tab2')">
                            <i class="fi fi-ss-house-chimney text-lg flex items-center"></i>
                            <h6 class="tracking-wide">Private stays</h6>
                        </div>
                        <div>
                            <div class="absolute -top-3.5 pl-10">
                                <span class="p-1 bg-[#E12D2D] text-[10px] text-white rounded-sm">New!</span>
                            </div>
                            <div class="pb-2 flex items-center gap-1.5 cursor-pointer tab-item" onclick="openTab('tab3')">
                                <i class="fi fi-ss-calendar text-lg flex items-center"></i>
                                <h6 class="tracking-wide">Long stays</h6>
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

        <script src="/static/js/home-tab.js"></script>
        <script src="/static/js/home-guest.js"></script>
    </body>
</html>
