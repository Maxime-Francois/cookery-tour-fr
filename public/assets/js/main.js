// NAVBAR



// Open and Close Navbar Menu
const navbarMenu = document.getElementById("menu");
const burgerMenu = document.getElementById("burger");
const bgOverlay = document.querySelector(".overlay");

if (burgerMenu && bgOverlay) {
   burgerMenu.addEventListener("click", () => {
      navbarMenu.classList.add("is-active");
      bgOverlay.classList.toggle("is-active");
   });

   bgOverlay.addEventListener("click", () => {
      navbarMenu.classList.remove("is-active");
      bgOverlay.classList.toggle("is-active");
   });
}

// Close Navbar Menu on Links Click
document.querySelectorAll(".menu-link").forEach((link) => {
   link.addEventListener("click", () => {
      navbarMenu.classList.remove("is-active");
      bgOverlay.classList.remove("is-active");
   });
});

// Open and Close Search Bar Toggle
const searchBlock = document.querySelector(".search-block");
const searchToggle = document.querySelector(".search-toggle");
const searchCancel = document.querySelector(".search-cancel");

if (searchToggle && searchCancel) {
   searchToggle.addEventListener("click", () => {
      searchBlock.classList.add("is-active");
   });

   searchCancel.addEventListener("click", () => {
      searchBlock.classList.remove("is-active");
   });
}



//toggle menu dropdown

const dropdownBtn = document.getElementById("btn");
const dropdownMenu = document.getElementById("dropdown");
// const toggleArrow = document.getElementById("arrow");

// Toggle dropdown function
const toggleDropdown = function () {
   dropdownMenu.classList.toggle("show");
   // toggleArrow.classList.toggle("arrow");
};


// Toggle dropdown open/close when dropdown button is clicked
dropdownBtn.addEventListener("click", function (e) {
   e.stopPropagation();
   toggleDropdown();
});


// Close dropdown when dom element is clicked
document.documentElement.addEventListener("click", function () {
   if (dropdownMenu.classList.contains("show")) {
      toggleDropdown();
   }
});








