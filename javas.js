ele=document.getElementsByClassName("modInfo");
btns=document.getElementsByClassName("btns");
pages=document.getElementsByClassName("page");
var notes=document.getElementsByClassName("email");
function showPage(i){    
    if(i==0){
        btns[0].style.color="black";
        btns[1].style.color="white";
        btns[2].style.color="white";
        btns[3].style.color="white";
        pages[0].style.visibility ="visible";
        pages[1].style.visibility ="hidden";
        pages[2].style.visibility ="hidden";
        pages[3].style.visibility ="hidden";
        
    }else if(i==1){
        
        btns[1].style.color="black";
        btns[0].style.color="white";
        btns[2].style.color="white";
        btns[3].style.color="white";
        pages[1].style.visibility ="visible";
        pages[0].style.visibility ="hidden";
        pages[2].style.visibility ="hidden";
        pages[3].style.visibility ="hidden";
    }else if(i==2){
        
        btns[2].style.color="black";
        btns[0].style.color="white";
        btns[1].style.color="white";
        btns[3].style.color="white";
        pages[2].style.visibility ="visible";
        pages[0].style.visibility ="hidden";
        pages[1].style.visibility ="hidden";
        pages[3].style.visibility ="hidden";
    }else if(i==3){
        
        btns[3].style.color="black";
        btns[0].style.color="white";
        btns[2].style.color="white";
        btns[1].style.color="white";
        pages[3].style.visibility ="visible";
        pages[0].style.visibility ="hidden";
        pages[2].style.visibility ="hidden";
        pages[1].style.visibility ="hidden";
    }
    window.scrollTo({ top: 0, behavior: 'smooth' });
}
// function show(i){
//     if(i==0){
//         ens.style.visibility = "visible";
//         ens.style.position = "relative";
//         etu.style.visibility = "hidden";
//         etu.style.position = "absolute";
//         mod.style.visibility = "hidden";
//         mod.style.position = "absolute";
//     }else if(i==1){
//         etu.style.visibility = "visible";
//         etu.style.position = "relative";
//         ens.style.visibility = "hidden";
//         ens.style.position = "absolute";
//         mod.style.visibility = "hidden";
//         mod.style.position = "absolute";
//     }else if(i==2){
//         mod.style.visibility = "visible";
//         mod.style.position = "relative";
//         etu.style.visibility = "hidden";
//         etu.style.position = "absolute";
//         ens.style.visibility = "hidden";
//         ens.style.position = "absolute";
//     }
// }

