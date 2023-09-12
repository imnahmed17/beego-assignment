<nav class="py-5 bg-[#013573]">
    <form class="max-w-7xl mx-auto px-1 md:px-2 lg:px-0 flex md:gap-2 lg:gap-4" action="/search" method="get">
        <label class="w-[30%] relative block">
            <input type="text" name="tab1Location" placeholder="Enter a destination or property" value="{{ .Location }}" class="p-3 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500" autocomplete="off">
            <span class="absolute right-0 top-3">
                <i class="fi fi-rr-search text-2xl text-[#013573] pr-3"></i>
            </span>
        </label>
        <label class="w-[30%] relative block">
            <div class="t-datepicker rounded-md outline outline-1 outline-slate-300 text-base">
                <div class="t-check-in bg-white py-1"></div>
                <div class="t-check-out bg-white py-1"></div>
            </div>
        </label>
        <div class="w-[30%] relative">
            <label class="relative block">
                <span class="absolute left-0 top-3">
                    <i class="fi fi-rr-users text-2xl text-[#013573] pl-3.5"></i>
                </span>
                <input id="tab1GuestInput" type="text" name="tab1Guests" placeholder="2 adults 1 room" class="p-3 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16" readonly>
                <span class="absolute right-0 top-3">
                    <i class="fi fi-rr-angle-small-down text-xl text-[#013573] pr-2.5"></i>
                </span>
            </label>
            <div id="tab1GuestDiv" class="px-5 py-3 absolute top-[52px] w-full lg:w-3/4 bg-white border rounded-md shadow-md hidden z-20">
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
                <div class="mb-1.5 flex justify-between items-center">
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
        <button type="submit" class="w-[10%] bg-[#00CD92] hover:bg-[#3BB995] text-white text-xl font-semibold rounded-md shadow-md">Search</button>
    </form>
</nav>