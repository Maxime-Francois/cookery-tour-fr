function onClickBtnLike(event) {
    event.preventDefault();

    const url = this.href;
    const spanCount = this.querySelector('.js-likes');
    const icone = this.querySelector('i');
    const favoriteUrl = "http://0.0.0.0:8080/favorite";

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

            window.location.href = 'http://0.0.0.0:8080/login'
        }

    });
    // si l'utilisateur n'est pas connecté il est redirigé vers la page login
    if (!loggedIn()) {
        window.location.href = 'http://0.0.0.0:8080/login';
    }
    
    function loggedIn() {
        // Check if the JSESSIONID cookie is present
        return document.cookie.split(';').some((cookie) => {
            return cookie.trim().startsWith('JSESSIONID=');
        });
    }


    // supression de la recette dans les favoris
    if (favoriteUrl == window.location.href) {

        let clickedCard = this.parentNode.parentNode.parentNode
        clickedCard.remove();
    }
}



document.querySelectorAll('a.like-button').forEach(function (link) {
    link.addEventListener('click', onClickBtnLike);
})



