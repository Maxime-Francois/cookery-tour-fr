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

function onClickBtnLike(event) {
   event.preventDefault();

   const url = this.href;
   const spanCount = this.querySelector('.js-likes');
   const icone = this.querySelector('i');
   const favoriteUrl = "https://www.cookery-tour.fr/favorite";

   function loggedIn() {
      // Vérifier si le cookie PHPSESSID est présent
      return document.cookie.split(';').some((cookie) => {
         return cookie.trim().startsWith('PHPSESSID=');
      });
   }

   axios.get(url)
      .then(function (response) {
         // Comptage des likes
         spanCount.textContent = response.data.likes;

         // Bouton like dynamique
         if (icone.classList.contains('fa-solid')) {
            icone.classList.replace('fa-solid', 'fa-regular');
         } else {
            icone.classList.replace('fa-regular', 'fa-solid');
         }

         // Suppression de la recette des favoris
         if (favoriteUrl === window.location.href) {
            const clickedCard = findParentCard(event.target);
            if (clickedCard) {
               clickedCard.remove();
            }
         }
      })
      .catch(function (error) {
         if (error.response && error.response.status === 500) {
            window.location.href = 'https://www.cookery-tour.fr/login';
         }
      });
}

function findParentCard(element) {
   let currentElement = element.parentNode;
   while (currentElement) {
      if (currentElement.classList.contains('recipe-card')) {
         return currentElement;
      }
      currentElement = currentElement.parentNode;
   }
   return null;
}

document.querySelectorAll('a.like-button').forEach(function (link) {
   link.addEventListener('click', onClickBtnLike);
});


//tooltip

"use strict";
function SVGToolTip() {
   const oSVG = document.querySelector("svg");
   // création et ajout élément
   const oInfo = document.createElement("DIV");
   oInfo.id = "info-SVG";

   if (oSVG.parentNode) {
      oSVG.parentNode.append(oInfo);
   }

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

SVGToolTip();








