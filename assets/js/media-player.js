var featuredMedia = document.querySelectorAll('.panel__anchor');
var mediaPlayer = document.getElementById('media-player');
var iframe = document.getElementById('iframe');
var mediaPlayerCloseBtn = document.querySelector('.media-player__btn-close');

mediaPlayerCloseBtn.addEventListener('click', function () {
  iframe.src = '';
  mediaPlayer.classList.add('is-hidden');
});

featuredMedia.forEach((item) => {
  item.addEventListener('click', function () {
    var vimeoHref = item.dataset.vimeo;
    console.log(vimeoHref);
    if (mediaPlayer.classList.contains('is-hidden')) {
      iframe.src = 'http://player.vimeo.com/video/' + vimeoHref;
      mediaPlayer.classList.remove('is-hidden');
    }
  });
})