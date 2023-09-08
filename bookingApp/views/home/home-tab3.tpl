<!-- tab 3 div -->
<div id="tab3" class="relative tab-content" style="display: none;">
    <div class="text-center text-white">
        <h3 class="pt-5 mb-1 text-2xl font-bold">HOTELS, RESORTS, HOSTELS & MORE</h3>
        <h4 class="mb-4 text-xl tracking-wide">Get the best prices on 2,000,000+ properties, worldwide</h4>
    </div>
    <div class="px-12 mt-11 w-full bg-[#f8f7f9] rounded-2xl shadow-lg">
        <form class="pt-10">
            <div class="flex gap-4">
                <label class="w-full relative block">
                    <span class="absolute left-0 top-5">
                        <i class="fi fi-rs-plane-departure text-2xl text-slate-500 pl-5"></i>
                    </span>
                    <input type="text" name="tab3Source" placeholder="Source airport" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16">
                </label>
                <label class="w-full relative block">
                    <span class="absolute left-0 top-5">
                        <i class="fi fi-rs-plane-arrival text-2xl text-slate-500 pl-5"></i>
                    </span>
                    <input type="text" name="tab3Destination" placeholder="Destination airport" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16">
                </label>
            </div>
            <div class="flex gap-4">
                <label class="mt-4 w-full relative block">
                    <span class="absolute left-0 top-5">
                        <i class="fi fi-rs-search text-2xl text-slate-500 pl-5"></i>
                    </span>
                    <input type="text" placeholder="Dhaka" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16">
                </label>
                <label class="mt-4 w-full relative block">
                    <select name="tab3ItineraryType" id="" class="p-5 w-full bg-white rounded-md outline-none border border-slate-300">
                        <option value="ONE_WAY">One way</option>
                        <option value="ROUND_TRIP">Round trip</option>
                    </select>
                </label>
            </div>
            <div class="flex gap-4">
                <label class="mt-4 w-full relative block">
                    <span class="absolute left-0 top-5">
                        <i class="fi fi-rs-person-simple text-2xl text-slate-500 pl-5"></i>
                    </span>
                    <input type="number" name="tab3Adults" placeholder="1" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16">
                </label>
                <label class="mt-4 w-full relative block">
                    <span class="absolute left-0 top-5">
                        <i class="fi fi-rr-person-walking-with-cane text-2xl text-slate-500 pl-5"></i>
                    </span>
                    <input type="number" name="tab3Seniors" placeholder="1" class="p-5 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500 pl-16">
                </label>
            </div>
            <div class="flex gap-4">
                <label class="mt-4 w-full relative block">
                    <select name="tab3SortOrder" id="" class="p-5 w-full bg-white rounded-md outline-none border border-slate-300">
                        <option value="ML_BEST_VALUE">Ml best value</option>
                        <option value="DURATION">Duration</option>
                        <option value="PRICE">Price</option>
                        <option value="EARLIEST_OUTBOUND_DEPARTURE">Earliest outbound departure</option>
                        <option value="EARLIEST_OUTBOUND_ARRIVAL">Earliest outbound arrival</option>
                        <option value="LATEST_OUTBOUND_DEPARTURE">Latest outbound departure</option>
                        <option value="LATEST_OUTBOUND_ARRIVAL">Latest outbound arrival</option>
                    </select>
                </label>
                <label class="mt-4 w-full relative block">
                    <select name="tab3ClassOfService" id="" class="p-5 w-full bg-white rounded-md outline-none border border-slate-300">
                        <option value="ECONOMY">Economy</option>
                        <option value="PREMIUM_ECONOMY">Premium economy</option>
                        <option value="BUSINESS">Business</option>
                        <option value="FIRST">First</option>
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