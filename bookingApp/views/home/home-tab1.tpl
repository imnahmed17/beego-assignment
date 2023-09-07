<!-- tab 1 div -->
<div id="tab1" class="relative tab-content" style="display: block;">
    <div class="text-center text-white">
        <h3 class="pt-5 mb-1 text-2xl font-bold">HOTELS, RESORTS, HOSTELS & MORE</h3>
        <h4 class="mb-4 text-xl tracking-wide">Get the best prices on 2,000,000+ properties, worldwide</h4>
    </div>
    <div class="px-12 mt-11 w-full bg-[#f8f7f9] rounded-2xl shadow-lg">
        <form class="pt-10">
            <label class="w-full relative block">
                <span class="absolute left-0 top-5">
                    <i class="fi fi-rr-search text-2xl text-slate-500 pl-5"></i>
                </span>
                <input type="text" placeholder="Enter a destination or property" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16" autocomplete="off">
            </label>
            <div class="flex gap-4">
                <label class="mt-4 w-1/2 relative block">
                    <span class="absolute left-0 top-5"><i class="fi fi-rs-search text-2xl pl-5"></i></span>
                    <input type="text" placeholder="Dhaka" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 placeholder:text-slate-800 pl-16">
                </label>
                <div class="mt-4 w-1/2">
                    <label class="relative block">
                        <span class="absolute left-0 top-5">
                            <i class="fi fi-rr-users text-2xl text-slate-500 pl-5"></i>
                        </span>
                        <input id="tab1GuestInput" type="text" placeholder="2 adults 1 room" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16" readonly>
                        <span class="absolute right-0 top-5">
                            <i class="fi fi-rr-angle-small-down text-xl pr-5"></i>
                        </span>
                    </label>
                    <div id="tab1GuestDiv" class="hidden">
                        <div class="px-5 py-3 w-3/4 bg-white">
                            <div class="flex justify-between items-center">
                                <h3 class="font-medium">Room</h3>
                                <div class="flex items-center gap-6">
                                    <button class="text-[#5392F9] rounded-full border-2 border-[#5392F9] h-6 w-6" id="tab1RoomMinusBtn">
                                        <i class="fi fi-rs-minus-small flex justify-center items-start"></i>
                                    </button>
                                    <h3 id="tab1RoomValue" class="text-xl font-semibold"></h3>
                                    <button class="text-[#5392F9] rounded-full border-2 border-[#5392F9] h-6 w-6" id="tab1RoomPlusBtn">
                                        <i class="fi fi-rs-plus-small flex justify-center items-start"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="h-10"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mt-6 mb-12 flex items-center gap-4">
                <span class="p-1 bg-[#E12D2D] text-[10px] text-white rounded-sm">Bundle &amp; Save</span>
                <div class="px-6 py-1.5 flex rounded-full cursor-pointer hover:bg-[#E9EDF7]">
                    <i class="fi fi-br-plus flex items-center text-blue-600"></i>
                    <span class="pl-2 text-sm font-medium text-[#265FC9]">Add a hotel</span>
                </div>
            </div>
            <div class="flex justify-center">
                <button class="py-4 w-1/2 absolute -bottom-7 bg-[#5392F9] hover:bg-blue-400 text-white text-xl uppercase rounded-md shadow-md">Search</button>
            </div>
        </form>
    </div>
</div>