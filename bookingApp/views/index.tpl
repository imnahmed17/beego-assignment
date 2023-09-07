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
        {{ template "home-header.tpl" . }}
        <section>
            <div class="h-[320px] bg-[url(https://cdn6.agoda.net/images/MVC/default/background_image/illustrations/bg-agoda-homepage.png)] bg-center bg-no-repeat bg-cover">
                <div class="max-w-6xl mx-auto">
                    <div class="text-center text-white">
                        <h3 class="pt-5 mb-1 text-2xl font-bold">HOTELS, RESORTS, HOSTELS & MORE</h3>
                        <h4 class="mb-4 text-xl tracking-wide">Get the best prices on 2,000,000+ properties, worldwide</h4>
                    </div>
                    <div class="relative">
                        <div class="w-full absolute top-0 z-20">
                            <div class="flex justify-center">
                                <div class="pt-3 w-1/2 bg-white rounded-lg flex justify-center gap-6 shadow-lg">
                                    <div class="pb-2 flex items-center gap-1 cursor-pointer tab-item active">
                                        <i class="fi fi-ss-hotel text-lg flex items-center"></i>
                                        <h6 class="tracking-wide">Hotels &amp; Homes</h6>
                                    </div>
                                    <div class="pb-2 flex items-center gap-1.5 cursor-pointer tab-item">
                                        <i class="fi fi-ss-house-chimney text-lg flex items-center"></i>
                                        <h6 class="tracking-wide">Private stays</h6>
                                    </div>
                                    <div>
                                        <div class="absolute -top-3.5 pl-10">
                                            <span class="p-1 bg-[#E12D2D] text-[10px] text-white rounded-sm">New!</span>
                                        </div>
                                        <div class="pb-2 flex items-center gap-1.5 cursor-pointer tab-item">
                                            <i class="fi fi-ss-calendar text-lg flex items-center"></i>
                                            <h6 class="tracking-wide">Long stays</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="px-12 absolute top-8 w-full bg-white rounded-2xl shadow-xl">
                            <form>
                                <label class="mt-8 w-full relative block">
                                    <span class="absolute left-0 top-5">
                                        <i class="fi fi-rs-search text-2xl pl-5"></i>
                                    </span>
                                    <input type="text" placeholder="Dhaka" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 placeholder:text-slate-800 pl-16">
                                </label>
                                <div class="flex gap-4">
                                    <label class="mt-4 w-full relative block">
                                        <span class="absolute left-0 top-5"><i class="fi fi-rs-search text-2xl pl-5"></i></span>
                                        <input type="text" placeholder="Dhaka" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 placeholder:text-slate-800 pl-16">
                                    </label>
                                    <label class="mt-4 w-full relative block">
                                        <span class="absolute left-0 top-5">
                                            <i class="fi fi-rr-users text-2xl pl-5"></i>
                                        </span>
                                        <input type="text" placeholder="Dhaka" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 placeholder:text-slate-800 pl-16" readonly>
                                        <span class="absolute right-0 top-5">
                                            <i class="fi fi-rr-angle-small-down text-xl pr-5"></i>
                                        </span>
                                    </label>
                                </div>
                                <div class="mt-6 mb-12 flex items-center gap-4">
                                    <span class="p-1 bg-[#E12D2D] text-[10px] text-white rounded-sm">Bundle &amp; Save</span>
                                    <div class="px-6 py-1.5 flex rounded-full cursor-pointer hover:bg-indigo-50">
                                        <i class="fi fi-br-plus flex items-center text-blue-600"></i>
                                        <span class="pl-2 text-sm text-[#265FC9]">Add a hotel</span>
                                    </div>
                                </div>
                                <div class="flex justify-center">
                                    <button class="py-4 w-1/2 absolute -bottom-7 bg-[#5392F9] hover:bg-blue-400 text-white text-xl uppercase rounded-md">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
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

        <script src="/static/js/reload.min.js"></script>
    </body>
</html>
