function onClickBtnLike(event) {
    event.preventDefault();

    const url = this.href;
    const spanCount = this.querySelector('.js-likes');
    const icone = this.querySelector('i');
    const favoriteUrl = "https://www.cookery-tour.fr/favorite";

    function loggedIn() {
        // Check if the PHPSESSID cookie is present
        return document.cookie.split(';').some((cookie) => {
            return cookie.trim().startsWith('PHPSESSID=');
        });
    }

    axios.get(url).then(function (response) {

        // comptage de like
        spanCount.textContent = response.data.likes;
        // bouton like dynamique
        if (icone.classList.contains('fa-solid')) {
            icone.classList.replace('fa-solid', 'fa-regular');
        } else {
            icone.classList.replace('fa-regular', 'fa-solid');
        }
    }).catch(function (error) {

        if (error.response.status === 500) {

            window.location.href = 'https://www.cookery-tour.fr/login'
        }

    });

    // supression de la recette dans les favoris
    if (favoriteUrl === window.location.href) {
        let clickedCard = this.closest('.recipe-card');
        if (clickedCard) {
            clickedCard.remove();
        }
    }
}

document.querySelectorAll('a.like-button').forEach(function (link) {
    link.addEventListener('click', onClickBtnLike);
})



