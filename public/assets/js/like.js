function onClickBtnLike(event) {
    event.preventDefault();

    const url = this.href;
    const spanCount = this.querySelector('.js-likes');
    const icone = this.querySelector('i');
    const favoriteUrl = "http://0.0.0.0:8080/favorite";


  

    axios.get(url).then(function (response) {

       
       
        spanCount.textContent = response.data.likes;
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
    if (favoriteUrl == window.location.href) {

        let clickedCard = this.parentNode.parentNode.parentNode
        clickedCard.remove();
    

    }
}

document.querySelectorAll('a.like-button').forEach(function (link) {
    link.addEventListener('click', onClickBtnLike);
})