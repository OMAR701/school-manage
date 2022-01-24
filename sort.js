cPrev = -1;
function sortBy(c,tableid,arrow) {
    var arrows = document.getElementsByClassName(arrow);
    var rows = document.getElementById(tableid).rows.length;
    var columns = document.getElementById(tableid).rows[0].cells.length;
    var arrTable = [...Array(rows)].map(e => Array(columns));
    for (ro=0; ro<rows; ro++) {
        for (co=0; co<columns; co++) {
            arrTable[ro][co] = document.getElementById(tableid).rows[ro].cells[co].innerHTML;
        }
    }
    th = arrTable.shift(); 
    if (c != cPrev) { 
        arrTable.sort(
            function (a, b) {
                if (a[c] == b[c]) {
                    return 0;
                } else {
                    return (a[c] < b[c]) ? -1 : 1;
                }
            }
        );
    } else { 
        arrTable.reverse();
    }
    arrTable.unshift(th);
    for (ro=0; ro<rows; ro++) {
        for (co=0; co<columns; co++) {
            document.getElementById(tableid).rows[ro].cells[co].innerHTML = arrTable[ro][co];
        }
    }
    if (c != cPrev) {
        for (i = 0; i < columns; i++) {
            if(i!=c)
                arrows[i].src = "arrowD.png";
        }
       arrows[c].src = "arrowU.png";
   } else { 
       if(arrows[c].getAttribute("src") == "arrowD.png"){
                arrows[c].src = "arrowU.png";
       }
       else{
           arrows[c].src = "arrowD.png";
       }
   }
   cPrev = c;
}
