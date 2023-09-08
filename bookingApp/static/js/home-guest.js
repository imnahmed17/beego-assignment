const guests = document.getElementById("tab1GuestInput");
const guestDiv = document.getElementById("tab1GuestDiv");
const tab1RoomMinusBtn = document.getElementById("tab1RoomMinusBtn");
const tab1RoomPlusBtn = document.getElementById("tab1RoomPlusBtn");
const tab1RoomValue = document.getElementById("tab1RoomValue");
const tab1AdultMinusBtn = document.getElementById("tab1AdultMinusBtn");
const tab1AdultPlusBtn = document.getElementById("tab1AdultPlusBtn");
const tab1AdultValue = document.getElementById("tab1AdultValue");
const tab1ChildMinusBtn = document.getElementById("tab1ChildMinusBtn");
const tab1ChildPlusBtn = document.getElementById("tab1ChildPlusBtn");
const tab1ChildValue = document.getElementById("tab1ChildValue");

let counter1 = 1;
let counter2 = 1;
let counter3 = 0;

tab1RoomPlusBtn.addEventListener("click", function () {
    counter1++;
    tab1RoomValue.innerText = counter1;

    if (counter1 === counter2) {
        tab1AdultMinusBtn.disabled = true;
        tab1AdultMinusBtn.classList.remove('text-[#5392F9]', 'border-[#5392F9]');
        tab1AdultMinusBtn.classList.add('text-gray-400', 'border-gray-400');
    }

    if (counter1 > counter2) {
        counter2++;
        tab1AdultValue.innerText = counter2;
    }

    guests.value = counter1 < 2 && counter2 < 2
        ? `${counter1} room ${counter2} adult`
        : counter1 >= 2 && counter2 < 2
        ? `${counter1} rooms ${counter2} adult`
        : counter1 < 2 && counter2 >= 2
        ? `${counter1} room ${counter2} adults`
        : `${counter1} rooms ${counter2} adults`;

    if (counter1 > 1) {
        tab1RoomMinusBtn.disabled = false;
        tab1RoomMinusBtn.classList.remove('text-gray-400', 'border-gray-400');
        tab1RoomMinusBtn.classList.add('text-[#5392F9]', 'border-[#5392F9]');
    }
});

tab1RoomMinusBtn.addEventListener("click", function () {
    if (counter1 > 1) {
        counter1--;
        tab1RoomValue.innerText = counter1;
        guests.value = counter1 < 2 && counter2 < 2
            ? `${counter1} room ${counter2} adult`
            : counter1 >= 2 && counter2 < 2
            ? `${counter1} rooms ${counter2} adult`
            : counter1 < 2 && counter2 >= 2
            ? `${counter1} room ${counter2} adults`
            : `${counter1} rooms ${counter2} adults`;
    }

    if (counter1 === 1) {
        tab1RoomMinusBtn.disabled = true;
        tab1RoomMinusBtn.classList.remove('text-[#5392F9]', 'border-[#5392F9]');
        tab1RoomMinusBtn.classList.add('text-gray-400', 'border-gray-400');
    }

    if (counter1 < counter2) {
        tab1AdultMinusBtn.disabled = false;
        tab1AdultMinusBtn.classList.remove('text-gray-400', 'border-gray-400');
        tab1AdultMinusBtn.classList.add('text-[#5392F9]', 'border-[#5392F9]');
    } else {
        tab1AdultMinusBtn.disabled = true;
        tab1AdultMinusBtn.classList.remove('text-[#5392F9]', 'border-[#5392F9]');
        tab1AdultMinusBtn.classList.add('text-gray-400', 'border-gray-400');
    }
});

tab1AdultPlusBtn.addEventListener("click", function () {
    counter2++;
    tab1AdultValue.innerText = counter2;
    guests.value = counter1 < 2 && counter2 < 2
        ? `${counter1} room ${counter2} adult`
        : counter1 >= 2 && counter2 < 2
        ? `${counter1} rooms ${counter2} adult`
        : counter1 < 2 && counter2 >= 2
        ? `${counter1} room ${counter2} adults`
        : `${counter1} rooms ${counter2} adults`;

    if (counter2 > 1) {
        tab1AdultMinusBtn.disabled = false;
        tab1AdultMinusBtn.classList.remove('text-gray-400', 'border-gray-400');
        tab1AdultMinusBtn.classList.add('text-[#5392F9]', 'border-[#5392F9]');
    }
});

tab1AdultMinusBtn.addEventListener("click", function () {
    if (counter2 > 1) {
        counter2--;
        tab1AdultValue.innerText = counter2;
        guests.value = counter1 < 2 && counter2 < 2
            ? `${counter1} room ${counter2} adult`
            : counter1 >= 2 && counter2 < 2
            ? `${counter1} rooms ${counter2} adult`
            : counter1 < 2 && counter2 >= 2
            ? `${counter1} room ${counter2} adults`
            : `${counter1} rooms ${counter2} adults`;
    }

    if (counter2 === counter1 || counter2 === 1) {
        tab1AdultMinusBtn.disabled = true;
        tab1AdultMinusBtn.classList.remove('text-[#5392F9]', 'border-[#5392F9]');
        tab1AdultMinusBtn.classList.add('text-gray-400', 'border-gray-400');
    }
});

tab1ChildPlusBtn.addEventListener("click", function () {
    counter3++;
    tab1ChildValue.innerText = counter3;

    if (counter3 > 0) {
        tab1ChildMinusBtn.disabled = false;
        tab1ChildMinusBtn.classList.remove('text-gray-400', 'border-gray-400');
        tab1ChildMinusBtn.classList.add('text-[#5392F9]', 'border-[#5392F9]');
    }
});

tab1ChildMinusBtn.addEventListener("click", function () {
    if (counter3 > 0) {
        counter3--;
        tab1ChildValue.innerText = counter3;
    }

    if (counter3 === 0) {
        tab1ChildMinusBtn.disabled = true;
        tab1ChildMinusBtn.classList.remove('text-[#5392F9]', 'border-[#5392F9]');
        tab1ChildMinusBtn.classList.add('text-gray-400', 'border-gray-400');
    }
});

guests.addEventListener("click", function () {
    guestDiv.classList.remove('hidden');
    
    tab1RoomValue.innerText = counter1;
    tab1AdultValue.innerText = counter2;
    tab1ChildValue.innerText = counter3;

    // applyBtn.addEventListener("click", function () {
    //     guests.value = parseInt(tab1RoomValue.innerText);
    //     guestDiv.classList.add('hidden');
    // });

    document.addEventListener('click', function (event) {
        if (!guests.contains(event.target) && !guestDiv.contains(event.target)) {
            guestDiv.classList.add('hidden');
        }
    });
});