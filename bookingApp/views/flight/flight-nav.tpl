<nav class="py-5 bg-[#013573]">
    <form class="max-w-7xl mx-auto px-1 md:px-2 lg:px-0 flex md:gap-2 lg:gap-4" action="/search-flight" method="get">
        <label class="w-[15%] relative block">
            <input type="text" name="tab3Source" placeholder="Source airport" value="{{ .Location_To }}" class="p-3 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500">
            <span class="absolute right-0 top-3">
                <i class="fi fi-rs-plane-departure text-2xl text-[#013573] pr-3"></i>
            </span>
        </label>
        <label class="w-[15%] relative block">
            <input type="text" name="tab3Destination" placeholder="Destination airport" value="{{ .Location_From }}" class="p-3 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500">
            <span class="absolute right-0 top-3">
                <i class="fi fi-rs-plane-arrival text-2xl text-[#013573] pr-3"></i>
            </span>
        </label>
        <label class="w-[15%] relative block">
            <input type="text" name="tab3Departure_date" id="departure_date" class="p-3 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500">
            <span class="absolute right-0 top-3">
                <i class="fi fi-rr-calendar-lines text-2xl text-[#013573] pr-3"></i>
            </span>
        </label>
        <label class="w-[15%] relative block">
            <input type="text" name="tab3Return_date" id="return_date" class="p-3 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500">
            <span class="absolute right-0 top-3">
                <i class="fi fi-rr-calendar-lines text-2xl text-[#013573] pr-3"></i>
            </span>
        </label>
        <label class="w-[15%] relative block">
            <input type="number" name="tab3Adults" placeholder="1" value="{{ .Adults }}" class="p-3 w-full rounded-md outline outline-1 outline-slate-300 font-medium placeholder:text-slate-500">
            <span class="absolute right-0 top-3">
                <i class="fi fi-rs-person-simple text-2xl text-[#013573] pr-1.5"></i>
            </span>
        </label>
        <label class="w-[15%] relative block">
            <select name="tab3ClassOfService" class="py-3 px-2 w-full bg-white rounded-md outline-none border border-slate-300">
                <option value="Economy">Economy</option>
                <option value="Premium">Premium</option>
                <option value="Business">Business</option>
                <option value="First">First</option>
            </select>
        </label>
        <button type="submit" class="w-[10%] bg-[#00CD92] hover:bg-[#3BB995] text-white text-xl font-semibold rounded-md shadow-md">Search</button>
    </form>
</nav>