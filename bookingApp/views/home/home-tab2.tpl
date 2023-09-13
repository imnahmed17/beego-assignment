<!-- tab 2 div -->
<div id="tab2" class="relative tab-content" style="display: none;">
    <div class="text-center text-white">
        <h3 class="pt-5 mb-1 text-2xl font-bold">BOOK A HOME ON AGODA HOMES</h3>
        <h4 class="mb-4 text-xl tracking-wide">More spacious. More local. More of why you travel.</h4>
    </div>
    <div class="px-12 mt-11 w-full bg-[#f8f7f9] rounded-2xl shadow-lg border">
        <form class="pt-10" action="/search-flight" method="get">
            <div class="flex gap-4">
                <label class="w-full relative block">
                    <span class="absolute left-0 top-4">
                        <i class="fi fi-rs-plane-departure text-2xl text-slate-500 pl-4"></i>
                    </span>
                    <input type="text" name="tab2Source" placeholder="Source airport" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-[52px]">
                </label>
                <label class="w-full relative block">
                    <span class="absolute left-0 top-4">
                        <i class="fi fi-rs-plane-arrival text-2xl text-slate-500 pl-4"></i>
                    </span>
                    <input type="text" name="tab2Destination" placeholder="Destination airport" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-[52px]">
                </label>
            </div>
            <div class="flex gap-4">
                <label class="mt-4 w-full relative block">
                    <span class="absolute left-0 top-[18px]">
                        <i class="fi fi-rr-calendar-lines text-2xl text-slate-500 pl-4"></i>
                    </span>
                    <input type="text" name="tab2Departure_date" id="departure_date" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-[52px]">
                </label>
                <label class="mt-4 w-full relative block">
                    <span class="absolute left-0 top-[18px]">
                        <i class="fi fi-rr-calendar-lines text-2xl text-slate-500 pl-4"></i>
                    </span>
                    <input type="text" name="tab2Return_date" id="return_date" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-[52px]">
                </label>
            </div>
            <div class="flex gap-4">
                <label class="mt-4 w-full relative block">
                    <span class="absolute left-0 top-5">
                        <i class="fi fi-rs-person-simple text-2xl text-slate-500 pl-2"></i>
                    </span>
                    <input type="number" name="tab2Adults" placeholder="1" value="1" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-[52px]">
                </label>
                <label class="mt-4 w-full relative block">
                    <select name="tab2ClassOfService" class="py-5 px-3 w-full bg-white rounded-md outline-none border border-slate-300">
                        <option value="Economy">Economy</option>
                        <option value="Premium">Premium</option>
                        <option value="Business">Business</option>
                        <option value="First">First</option>
                    </select>
                </label>
            </div>
            <div class="mt-6 mb-12 flex items-center gap-4">
                <span class="p-1 bg-[#E12D2D] text-[10px] text-white rounded-sm">Bundle &amp; Save</span>
                <div class="px-6 py-1.5 flex rounded-full cursor-pointer hover:bg-[#E9EDF7]">
                    <i class="fi fi-br-plus flex items-center text-blue-600"></i>
                    <span class="pl-2 text-sm font-medium text-[#265FC9]">Add a fight</span>
                </div>
            </div>
            <div class="flex justify-center">
                <button type="submit" class="py-4 w-1/2 absolute -bottom-7 bg-[#5392F9] hover:bg-blue-400 text-white text-xl uppercase rounded-md shadow-md">Search</button>
            </div>
        </form>
    </div>
</div>