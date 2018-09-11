const featuredMedia = document.querySelectorAll('.panel__anchor');
const mediaPlayer = document.getElementById('media-player');
const iframe = document.getElementById('iframe');
const mediaPlayerCloseBtn = document.querySelector('.media-player__btn-close');
const protocol = location.protocol

console.log(protocol)

mediaPlayerCloseBtn.addEventListener('click', function () {
  iframe.src = '';
  mediaPlayer.classList.add('is-hidden');
});

featuredMedia.forEach((item) => {
  item.addEventListener('click', function () {
    var vimeoHref = item.dataset.vimeo;
    console.log(vimeoHref);
    if (mediaPlayer.classList.contains('is-hidden')) {
      iframe.src = `${protocol}//player.vimeo.com/video/${vimeoHref}`
      mediaPlayer.classList.remove('is-hidden');
    }
  });
})