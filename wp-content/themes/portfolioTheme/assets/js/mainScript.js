document.addEventListener('DOMContentLoaded', ()=>{
    /////////////////////////////////////////////////сладер
    headerImages = [...document.querySelectorAll('.nav-slider-img')] 
    headerImagesNode = document.querySelectorAll('.nav-slider-img')
    let visibleImgIndex
    let currentPage = 0

    headerImagesNode.forEach(img =>{
        coords = {
            offsetRight: - img.clientWidth + document.documentElement.clientWidth,
            offsetBottom: - img.clientHeight + document.documentElement.clientHeight
        }
        const right = coords.offsetRight,
            bottom = coords.offsetBottom
        if(bottom > 0 && right > 0){
            if (right > bottom){
                img.style.width = '100%'
            } else {
                
                img.style.height = '100%'
                img.style.width = 'auto'
            }
        } 
    })


    function chgIndex(curIndex){
        curIndex >= headerImages.length - 1 ? curIndex = 0 : curIndex++
        visibleImgIndex = curIndex
        headerImagesNode.forEach(elem => {
            elem.setAttribute('data-visible', 'false')
        })
        headerImagesNode[visibleImgIndex].setAttribute('data-visible', 'true')
        showSlide(curIndex)
    }

    function showSlide(curIndex){
        headerImagesNode.forEach(img =>{
            img.classList.remove('nav-slider-img-visible')
        })
        headerImagesNode[curIndex].classList.add('nav-slider-img-visible')
    }
    setInterval(()=>{
        visibleImgIndex = headerImages.findIndex(img =>{
            return img.getAttribute('data-visible') == "true"
        })
        chgIndex(visibleImgIndex)
    }, 5000)
    /////////////////////////////////////////////////////////////меню 
    burger = document.querySelector('.menu-burger')
    document.addEventListener('click', (e)=>{
        if(!e.target.closest('.menu-burger')){
            document.querySelector('.right-drop-down-menu').classList.remove('menu-active')
        }
    })
    burger.addEventListener('click', ()=>{
        document.querySelector('.right-drop-down-menu').classList.add('menu-active')
    })
    ///////////////////////////////////////////////////////////////скролл стрелки header
    chekMark = document.querySelector('.check-mark')
    chekMark.addEventListener('click', ()=>{
        window.scrollBy({
            top: document.documentElement.clientHeight,
            left: 0, 
            behavior: "smooth"
        })
    })
    ///////////////////////////////////////////////////////////////анимация голубых линий interesting в постах
    grLine = document.querySelectorAll('.bottom-line')
    postsInterestingImg = document.querySelectorAll('.hover-block')

    postsInterestingImg.forEach( (img, index, arr) => {
        img.addEventListener('mouseover', ()=>{
            grLine[index].classList.add('bottom-line-active')
        })
        img.addEventListener('mouseout', ()=>{
            grLine[index].classList.remove('bottom-line-active')
        })
    })
    ///////////////////////////////////////////////////////////////подчёркивание название в nav
    if (!(/Android|webOS|iPhone|iPad|iPod|BlackBerry|BB|PlayBook|IEMobile|Windows Phone|Kindle|Silk|Opera Mini/i.test(navigator.userAgent))) {
        let liNavElements = [...document.querySelector('.main-menu-desktop').querySelectorAll('li')]
        liNavElements = liNavElements.filter( elem => {
            return /menu-item-[0-9]+/.test(elem.getAttribute('class'))
        })
        liNavElements.forEach(li =>{
            let blueLine = document.createElement('div')
            blueLine.classList.add('blueLineNav')
            li.appendChild(blueLine)
        })
    }
    console.log(navigator.userAgent)
    blueLinesArr = document.querySelectorAll('.blueLineNav')
    linksBlueLinesArr = [...document.querySelectorAll('.li-page-a')]
    document.querySelector('.logo').addEventListener('click', ()=>{
        localStorage.setItem('clickIndex', -1)
    })
    linksBlueLinesArr.forEach((link) =>{
        link.addEventListener('click', ()=>{
            localStorage.setItem('clickIndex', linksBlueLinesArr.indexOf(link))
        })
        blueLinesArr.forEach(item =>{
            item.style.display = 'none'
        })
        try{
            blueLinesArr[localStorage.getItem('clickIndex')].style.display = 'block'
        } catch(err){}
        
    })
    
    
})