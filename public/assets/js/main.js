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

//tooltip for the map

"use strict";
function SVGToolTip() {

   const oSVG = document.querySelector("svg");
   // création et ajout élément
   const oInfo = document.createElement("DIV");
   oInfo.id = "info-SVG";
   oSVG.parentNode.append(oInfo);

   function _toggleInfo(e) {
      oInfo.innerHTML = "mouseenter" === e.type ? "<span>" + e.target.dataset.name + "</span>" : "";
   }

   function _moveInfo(e) {
      oInfo.style.transform = "translate3d(" + e.layerX + "px," + e.layerY + "px, 0)";
   }

   // mouse move sur SVG
   oSVG.addEventListener("mousemove", _moveInfo, true);
   // mouse enter/leave sur PATH
   const oElems = document.querySelectorAll("path");
   oElems.forEach(function (elem) {
      elem.addEventListener("mouseenter", _toggleInfo);
      elem.addEventListener("mouseleave", _toggleInfo);
   });

}
SVGToolTip()








