const processGraphicQuads = document.querySelectorAll('.process__graphic .cls-1')
const processPanel = document.querySelectorAll('.process__panel')

processGraphicQuads.forEach(function (item) {
  item.addEventListener('click', function () {

    const order = this.dataset.order

    processPanel.forEach((panel, index) => {

      if (index == order) {
        setTimeout(function () {
          panel.classList.add('is-visible')
        }, 500)
      } else {
        panel.classList.remove('is-visible')
      }
    })

  })
})

const processContent = document.querySelectorAll('.process__panel')
const processQuad = document.querySelectorAll('.process-quad')

// add data attr
processContent.forEach((i, index) => {
//   i.setAttribute('data-order', index)
  i.addEventListener('mouseenter', process)
})

// add data attr
processQuad.forEach((i, index) => {
  // i.setAttribute('data-order', index)
  i.addEventListener('mouseenter', process)
  i.addEventListener('click', process)
})

// const processPanel = document.querySelector('.process__grid-wrapper')
// processPanel.addEventListener('click', process)

function process (e) {
  // get data-order value
  const dataOrder = this.dataset.order
  // get element type
  const elType = this.classList[0]
  console.log(e.target)

  processContent.forEach(i => {
    if (i.dataset.order !== dataOrder) {
      i.classList.remove('active')
    } else {
      i.classList.add('active')
    }
  })

  processQuad.forEach(i => {
    if (i.dataset.order !== dataOrder) {
      i.classList.remove('active')
    } else {
      i.classList.add('active')
    }
  })
}

window.addEventListener('load', function () {
  const screenWidth = checkWidth()

  if (screenWidth < 999) {
    setInterval(change, 5000)
  }
})

function stopInt (func) {
  clearInterval(func)
}

function checkWidth () {
  return window.innerWidth
}

function change () {

  const quadArr = document.querySelectorAll('.process-quad')
  const copyArr = document.querySelectorAll('.process__panel')

  const activeEl = document.querySelector('.process-quad.active')
  const currVal = Number(activeEl.dataset.order)
  const nextVal = currVal === 3 ? 0 : currVal + 1

  // console.log(`the current index ${ currentIndex }`)
  console.log(`changing to ${ nextVal }`)

  const currentQuad = document.querySelector(`.process-quad[data-order="${currVal}"]`)
  const currentCopy = document.querySelector(`.process__panel[data-order="${currVal}"]`)
  const nextQuad = document.querySelector(`.process-quad[data-order="${nextVal}"]`)
  const nextCopy = document.querySelector(`.process__panel[data-order="${nextVal}"]`)


  currentQuad.classList.remove('active')
  currentCopy.classList.remove('active')

  nextQuad.classList.add('active')
  nextCopy.classList.add('active')
}

// set active class on page load
window.addEventListener('load', function () {
  processContent[0].classList.add('active')
  processQuad[0].classList.add('active')
})