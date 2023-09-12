<!-- tab 1 div -->
<div id="tab1" class="relative tab-content" style="display: block;">
    <div class="text-center text-white">
        <h3 class="pt-5 mb-1 text-2xl font-bold">HOTELS, RESORTS, HOSTELS & MORE</h3>
        <h4 class="mb-4 text-xl tracking-wide">Get the best prices on 2,000,000+ properties, worldwide</h4>
    </div>
    <div class="px-12 mt-11 w-full bg-[#f8f7f9] rounded-2xl shadow-lg">
        <form class="pt-10" action="/search" method="get">
            <label class="w-full relative block">
                <span class="absolute left-0 top-5">
                    <i class="fi fi-rr-search text-2xl text-slate-500 pl-4"></i>
                </span>
                <input type="text" name="tab1Location" placeholder="Enter a destination or property" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-[52px]" autocomplete="off">
            </label>
            <div class="flex gap-4">
                <label class="mt-4 w-1/2 relative block">
                    <div class="t-datepicker rounded-md outline outline-1 outline-slate-300 text-base">
                        <div class="t-check-in bg-white py-3"></div>
                        <div class="t-check-out bg-white py-3"></div>
                    </div>
                </label>
                <div class="mt-4 w-1/2 relative">
                    <label class="relative block">
                        <span class="absolute left-0 top-5">
                            <i class="fi fi-rr-users text-2xl text-slate-500 pl-4"></i>
                        </span>
                        <input id="tab1GuestInput" type="text" name="tab1Guests" placeholder="2 adults 1 room" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-[52px]" readonly>
                        <span class="absolute right-0 top-5">
                            <i class="fi fi-rr-angle-small-down text-xl text-slate-500 pr-5"></i>
                        </span>
                    </label>
                    <div id="tab1GuestDiv" class="px-7 py-4 absolute top-[70px] w-3/4 bg-white border rounded-md shadow-md hidden z-20">
                        <!-- room info update -->
                        <div class="mb-5 flex justify-between items-center">
                            <h3 class="font-medium">Room</h3>
                            <div class="flex items-center gap-6">
                                <button type="button" class="text-gray-400 rounded-full border-2 border-gray-400 h-6 w-6" id="tab1RoomMinusBtn" disabled>
                                    <i class="fi fi-rs-minus-small flex justify-center items-start"></i>
                                </button>
                                <h3 id="tab1RoomValue" class="text-xl font-semibold"></h3>
                                <button type="button" class="text-[#5392F9] rounded-full border-2 border-[#5392F9] h-6 w-6" id="tab1RoomPlusBtn">
                                    <i class="fi fi-rs-plus-small flex justify-center items-start"></i>
                                </button>
                            </div>
                            <input id="tab1RoomInput" type="hidden" name="tab1Rooms" value="1">
                        </div>
                        <!-- adult info update -->
                        <div class="mb-2.5 flex justify-between items-center">
                            <h3>
                                <span class="font-medium">Adult</span> 
                                <br> 
                                <span class="text-xs text-gray-600">Ages 18 or above</span>
                            </h3>
                            <div class="flex items-center gap-6">
                                <button type="button" class="text-gray-400 rounded-full border-2 border-gray-400 h-6 w-6" id="tab1AdultMinusBtn" disabled>
                                    <i class="fi fi-rs-minus-small flex justify-center items-start"></i>
                                </button>
                                <h3 id="tab1AdultValue" class="text-xl font-semibold"></h3>
                                <button type="button" class="text-[#5392F9] rounded-full border-2 border-[#5392F9] h-6 w-6" id="tab1AdultPlusBtn">
                                    <i class="fi fi-rs-plus-small flex justify-center items-start"></i>
                                </button>
                            </div>
                            <input id="tab1AdultInput" type="hidden" name="tab1Adults" value="1">
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
                <button type="submit" class="py-4 w-1/2 absolute -bottom-7 bg-[#5392F9] hover:bg-blue-400 text-white text-xl uppercase rounded-md shadow-md">Search</button>
            </div>
        </form>
    </div>
</div>