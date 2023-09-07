const guests = document.getElementById("tab1GuestInput");
const guestDiv = document.getElementById("tab1GuestDiv");
const minusBtn = document.getElementById("tab1RoomMinusBtn");
const plusBtn = document.getElementById("tab1RoomPlusBtn");
const tab1RoomValue = document.getElementById("tab1RoomValue");

let counter1 = 1;

plusBtn.addEventListener("click", function () {
    tab1RoomValue.innerText = counter1++;
});

minusBtn.addEventListener("click", function () {
    if (counter1 > 0) {
        tab1RoomValue.innerText = counter1--;
    }
});

guests.addEventListener("click", function () {
    guestDiv.classList.remove('hidden');
    
    tab1RoomValue.innerText = counter1;

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