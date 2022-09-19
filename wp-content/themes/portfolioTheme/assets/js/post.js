document.addEventListener('DOMContentLoaded', ()=>{
    /////////////////////////////////////////////////// задание классов картинкам из гутенберга 
    arrOfImgGutemberg = [...document.querySelectorAll('img')]
    arrOfImgGutemberg = arrOfImgGutemberg.filter(img => /wp-image-[0-9]+/.test( img.getAttribute('class') ) )
    arrOfImgGutemberg.forEach(img =>{
        img.style.cursor = 'pointer'
        img.classList.add('post-img')
    })
    /////////////////////////////////////////////////// появление pop up
    let popupFlag = false
    let modText = document.querySelector('.moderation')
    let form = document.querySelector('#commentform')
    let popup = document.querySelector('.img-popup')
    let popupBlockImg = document.querySelector('.img-popup-block-img')
    const imagesPopupArr = document.querySelectorAll('.post-img')

    function PopupAppear(){
        if(!popupFlag){
            popup.style.display = 'flex'
            document.body.style.overflowY = 'hidden'
            setTimeout(()=>{
                popup.style.opacity = 1;
                popupFlag = true
            }, 10)
        }
    }

    function PopupDiss(event){
        if(event.target.closest('.img-popup-block') === null && popupFlag){
            popup.style.opacity = 0;
            popupFlag = false
            setTimeout(()=>{
                popup.style.display = 'none'
                document.body.style.overflowY = 'scroll'
            }, 301)
        }
    }


    imagesPopupArr.forEach((img, index, arr) => {
        img.addEventListener('click', ()=>{
            popupBlockImg.src = img.src
            modText.style.display = 'none'
            PopupAppear();
        })
        
    })
    document.addEventListener('click', (event)=>{
        PopupDiss(event)
    })

    try{
        form.addEventListener('submit', ()=>{
            popupBlockImg.src = ''
            modText.style.display = 'block'
            PopupAppear();
            setTimeout(()=>{
                popup.style.opacity = 0;
                popupFlag = false
                setTimeout(()=>{
                    popup.style.display = 'none'
                    document.body.style.overflowY = 'scroll'
                }, 301)
            }, 1600);
        })
    } catch (err){}


    postHintArr = document.querySelectorAll('.post-from-postPage')
    postHintArr.forEach((hint, index)=>{
        setTimeout(()=>{
            hint.style.opacity = 1
            hint.style.transition = 'left .6s, opacity .6s, transform .3s'
            hint.style.left = 0
        }, 120*index)
    })
    //////////////////////////////////////////////удалить пустой блок комментариев
    try{
        const commentForm = document.querySelector('.post-form')
        console.log(commentForm.innerHTML.trim()=="")
        if(commentForm.innerHTML.trim()==""){
            document.querySelector('.post-main-content').removeChild(commentForm)
        }
    } catch (err){
        console.log(err)
    }
})
