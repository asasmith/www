const bgImages = [...document.querySelectorAll('[data-bg-src')]
const images = [...document.querySelectorAll('[data-img-src]')]

const config = {
  rootMargin: '0px 0px 50px 0px',
  threshold: 0
}

let observer = new IntersectionObserver(function (entries, self) {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      // console.log(`Image ${entry.target.src} is in the viewport!`);
      preloadBgImage(entry.target);
      // Stop watching and load the image
      self.unobserve(entry.target);
    }
  });
}, config);

bgImages.forEach(image => {
  observer.observe(image);
});

images.forEach(image => {
  observer.observe(image)
})

function preloadBgImage(img) {
  if(img.dataset.bgSrc) {
    const src = img.getAttribute('data-bg-src');
    if (!src) { return; }
    img.style.backgroundImage = `url(${src})`;
  }

  if(img.dataset) {
    const src = img.getAttribute('data-img-src');
    if (!src) { return; }
    img.src= src
  }
}