document.addEventListener('DOMContentLoaded', ()=>{
    if(document.querySelectorAll('.Item').length > 0){
        const inputOfSearch = document.querySelector('.input_of_searcher')
        const buttonOfSearch = document.querySelector('.button_of_searcher')
        const ItemsOfSearcher = document.querySelectorAll('.Item')        //Enter class same elements for searching
        const divSearcher = document.querySelector('.main_search_element')
        const adviseSearcher = document.querySelector('.advice_searcher_element')
        const labelSearcher = document.querySelector('.label_input_of_searcher')
        const DefaultElement = document.querySelector('.Default_item')
        const hrefs = document.querySelectorAll('a')
        hrefs.forEach(element =>{
                element.addEventListener(elem, ()=>{
                    inputOfSearch.value = ""
                })
        })
        const coordinatesSearcher = { // значения объекта подсказки для отображения в нужном месте
            coordX: divSearcher.getBoundingClientRect().left + window.pageXOffset,
            coordY: divSearcher.getBoundingClientRect().top + window.pageYOffset,
            heightElem: getComputedStyle(divSearcher).height,
            widthElem: getComputedStyle(divSearcher).width
        }
        let currentElement = -1 // текущее положение подсказки на поле 
        let SearchingStrings = [] // первичное забивание подсказок 
        let firstClick = true
        let EmptyScroll;
        ItemsOfSearcher.forEach(element => {
            SearchingStrings.push(element.innerHTML)
        })
        const CoordxAdvise = coordinatesSearcher.coordX //подсчёт координат подсказки 
        const CoordyAdvise = coordinatesSearcher.coordY + + coordinatesSearcher.heightElem.substring(0,2)
        let adviseSearcherfocus = false // переменная служит для последующего отображения окна подсказки или скрытия 
        adviseSearcher.style.width = `${Number(getComputedStyle(inputOfSearch).width.substring(0, getComputedStyle(inputOfSearch).width.length-2))}px`
        DefaultElement.style.width = `${Number(getComputedStyle(inputOfSearch).width.substring(0, getComputedStyle(inputOfSearch).width.length-2))}px`

        
        function SearherScroll(){ // очевидно функция скролла
            let inputDataSearch;
            if (inputOfSearch.value != ""){
                inputDataSearch = inputOfSearch.value
            }
            else if(inputOfSearch.value == "" && labelSearcher.innerHTML != ""){
                inputDataSearch = EmptyScroll
                document.querySelectorAll('.advice_searcher_element_children').forEach(elem =>{
                    elem.classList.remove('advice_searcher_element_children_active')
                })
                
            }
            ItemsOfSearcher.forEach(element =>{
                if (element.innerHTML.toLocaleLowerCase() == inputDataSearch.toLocaleLowerCase()){
                    element.scrollIntoView({
                        behavior: "smooth",
                        block: "center"
                    })
                }
            })
        }


        function CreateElementSearcher(html){ // функция создания элемента подсказки 
            const div = document.createElement('div')
            div.classList.add('advice_searcher_element_children')
            div.innerHTML = `${html}`
            adviseSearcher.append(div)
        }


        function ReplaycingElements(string){ //Эта функция нужна, чтобы подсказка была таким же размером букв, что и ввод
            try{
                let Arr1 = string.split("")
                let Arr2 = inputOfSearch.value.split("")
                for(let i = 0; i < inputOfSearch.value.split("").length; i++){
                    Arr1[i] = Arr2[i]
                }
                string = Arr1.join().replaceAll(",", "")
                return string
            }
            catch{}
        }

        SearchingStrings.forEach(element => {
            CreateElementSearcher(element) // разделил с верхней для читаемости 
        })

        
        window.addEventListener('keyup', (event)=>{
            if((inputOfSearch.value !="" || labelSearcher.innerText !="") && event.code == 'Enter'){
                SearherScroll()
                adviseSearcher.style.display = 'none'
                currentElement = -1
                try{
                    AdvisesAnimate.forEach(element => {
                        element.classList.remove('advice_searcher_element_children_active')//стили
                    })
                }
                catch{}
            }
        })

        const adviseSearcherChildren = adviseSearcher.querySelectorAll('*')// по нажатии на ввод скролл до элемента(элемент заранее введён в input)
        document.addEventListener('keyup', (event)=>{
            if((event.code == 'Enter')&&(adviseSearcherfocus == true)){
                SearherScroll()
                adviseSearcher.style.display = 'none'
                currentElement = -1
                try{
                    AdvisesAnimate.forEach(element => {
                        element.classList.remove('advice_searcher_element_children_active')//стили
                    })
                }
                catch{}
            }
        })


        
            
            document.addEventListener(elem, (event)=>{// появление и скрытие подсказки в зависимости от места клика 
                
                if(event.target == inputOfSearch){
                    if(firstClick == true){
                        DefaultElement.style.display = 'flex'
                        firstClick = false
                    }
                    adviseSearcher.style.display = 'block'
                    adviseSearcherfocus = true
                    labelSearcher.style.opacity = '0'
                    labelSearcher.style.display = 'none'
    
    
                } else {
                    DefaultElement.style.display = 'none'
                    adviseSearcher.style.display = 'none'
                    adviseSearcherfocus = false
                    if (inputOfSearch.value ==""){
                        labelSearcher.style.display = 'flex'
                        labelSearcher.style.opacity = '.4'
                    }
                    if(inputOfSearch.value ==""){
                        labelSearcher.textContent = "Поиск" // если всё стрёрли 
                    }
                }
            })
        

        function ScrollForSingleElement(element){
            inputOfSearch.value = element.innerHTML
            SearherScroll()
            labelSearcher.textContent = ""
            adviseSearcherChildren.forEach(element =>{    
                element.style.display = 'none'
            })
        }
        
            buttonOfSearch.addEventListener(elem, ()=>{
                SearherScroll()
                labelSearcher.textContent = ""
            })
        
        
        adviseSearcherChildren.forEach((element)=>{
            
                element.addEventListener(elem, () => {
                    ScrollForSingleElement(element)
                })
            
        })


        inputOfSearch.addEventListener('keyup', (event) => {
            DefaultElement.style.display = 'none'
            adviseSearcher.style.display = 'block'// по нажатии на любую кнопку окно с подсказкой всегда активно 
            
            if(inputOfSearch.value != ""){
                try{
                    AdvisesAnimate.forEach(element => {
                        element.classList.remove('advice_searcher_element_children_active')//стили
                    })
                }
                catch{}
            }
            if(!((event.code == "ArrowUp") || (event.code == "ArrowDown") || (event.code == "ArrowRight")|| (event.code == "Tab") || (event.code == "ArrowLeft"))){
                    currentElement = -1 // исключаем из нажатия стрелочные кнопки
                    try{
                        AdvisesAnimate.forEach(element => {
                            element.classList.remove('advice_searcher_element_children_active')//стили
                        })
                    }
                    catch{}
                }
            let currentValue = inputOfSearch.value.toLocaleLowerCase()// получаем текущее значение input 
            let newAdviseSearcherChildren = new Array()
            let AdvisesAnimate = new Array()
            // при нажатии на кнопку если в подсказеках есть эта часть слоава, они не скрываются, можно сделать include для ещё большей универсальности, но тогда придётся строк 15 править
            adviseSearcherChildren.forEach(element =>{
                includeFlag = true
                ArrayOfSymbols = currentValue.split("")
                SplitElement = element.innerHTML.split("")
                for(let i = 0; i<ArrayOfSymbols.length; i++){
                    let symbol = ArrayOfSymbols[i]
                    let symbolPattern = SplitElement[i]
                    try{symbol = ArrayOfSymbols[i].toLowerCase();symbolPattern = SplitElement[i].toLowerCase()}catch{includeFlag = false}
                    if(symbol != symbolPattern || ArrayOfSymbols.length > SplitElement.length){
                        includeFlag = false
                    }
                }
                if(includeFlag == true){//если все значения(введённые символы) в for совпали с шаблонными, отправляем шаблонные генерировать массив подсказки 
                    element.style.display = 'flex'
                    AdvisesAnimate.push(element)
                }
                else{
                    element.style.display = 'none'// а вот если нет ...
                }
            })
            //
            adviseSearcherChildren.forEach(element =>{// здесь создаю новый массив элемнентов подходящих своей частью к написанному в input
                if(getComputedStyle(element).display == 'flex'){
                    newAdviseSearcherChildren.push(element.innerHTML)
                }
            })
            labelSearcher.style.display = 'flex'
            labelSearcher.style.opacity = '.4'
            labelSearcher.textContent = "" //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! В строчке ниже должна вставляться подсказка, однако при элементах большой длины она сбивается, поэтому отключил, чтобы дебажить достаточно раскомментить нижнюю и закомментить эту
            // labelSearcher.textContent = ReplaycingElements(newAdviseSearcherChildren[0]) // подсказка, она является первым элементом новосозданного выше массива   
            if(currentValue ==""){
                labelSearcher.textContent = "Поиск" // если всё стрёрли 
            }
            if((newAdviseSearcherChildren != [])&&((event.code == "ArrowUp") || (event.code == "ArrowDown") || (event.code == "ArrowRight") || (event.code == "Tab"))){
                switch(event.code){//если нажата одна из стрелок, выделяем текущий выбранный элемент, как не странно - currentElement, он начинается с -1 т.к. если с 0, то 1 элемент не активен при первом нажатии кнопки вниз, дальше простая логика 
                    case "ArrowUp":
                        if (currentElement == -1 ){
                            currentElement = newAdviseSearcherChildren.length-1
                        }
                        else{
                            currentElement -= 1
                        }
                        break
                    case "ArrowDown":
                        if (currentElement == newAdviseSearcherChildren.length-1){
                            currentElement = -1
                            try{
                                AdvisesAnimate.forEach(element => {
                                    element.classList.remove('advice_searcher_element_children_active')//стили
                                })
                            }
                            catch{}
                        }
                        else{
                            currentElement += 1
                        }
                        break
                    case "ArrowRight":
                        inputOfSearch.value = AdvisesAnimate[currentElement].innerText // по нажатии вправо, подставляем подсказку в input
                        labelSearcher.textContent = ""
                        try{
                            AdvisesAnimate.forEach(element => {
                                element.classList.remove('advice_searcher_element_children_active')//стили
                            })
                        }
                        catch{}
                        currentElement = -1
                        break
                    //Here u can write tab case 
                    }
                    try{
                        AdvisesAnimate.forEach(element => {
                            element.classList.remove('advice_searcher_element_children_active')//стили
                        })
                    }
                    catch{}
                    try{
                        AdvisesAnimate[currentElement].classList.add('advice_searcher_element_children_active')
                        labelSearcher.textContent = ReplaycingElements(AdvisesAnimate[currentElement].innerHTML)//подсказка в виде label в input
                        EmptyScroll = labelSearcher.textContent
                        curElementCoordY =AdvisesAnimate[currentElement].getBoundingClientRect().top - CoordyAdvise
                        if(curElementCoordY>299 && curElementCoordY<301){
                            adviseSearcher.scrollBy(0, 30+curElementCoordY-300)
                        }
                        else if(curElementCoordY< 0 && curElementCoordY>-31){
                            adviseSearcher.scrollBy(0, curElementCoordY)
                        }
                        else if(curElementCoordY>332){
                            adviseSearcher.scrollTo(0, adviseSearcher.scrollHeight)
                        }  
                        else if(curElementCoordY<-568){
                            adviseSearcher.scrollTo(0, 0)
                        }
                    }
                    catch{}
                
            }
            else if(newAdviseSearcherChildren.length == 0){
                DefaultElement.style.display = 'flex'
            }
        })
    } 
})