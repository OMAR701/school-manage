function printCertificate(i) {
     const printContents = document.getElementById(i).innerHTML;
     const originalContents = document.body.innerHTML;
     document.body.innerHTML = printContents;
     window.print();
     document.body.innerHTML = originalContents;
 }
 function printer() {
     document.getElementsByClassName('telecharge')[0].style.visibility='hidden';
     window.print();
     document.getElementsByClassName('telecharge')[0].style.visibility='visible';
 }
function printCertificateCol(i) {
     var printContents = document.getElementById(i);
     var rows = printContents.rows.length;
     var columns = printContents.rows[0].cells.length;
     var arrTable = [...Array(rows)].map(e => Array(columns));
     for (ro=0; ro<rows; ro++) {
          for (co=0; co<columns; co++) {
              arrTable[ro][co] = printContents.rows[ro].cells[co].innerHTML;
          }
      }
     var toPrint = "<table>";
     for (ro=0; ro<rows; ro++) {
          toPrint += "<tr>";
          for (co=0; co<columns-1; co++) {
               if(ro==0){
                    toPrint += "<th>";
                    toPrint +=arrTable[ro][co];
                    toPrint += "</th>";
               }
               else{
                    toPrint += "<td>";
                    toPrint +=arrTable[ro][co];
                    toPrint += "</td>";
               }
          }
          toPrint += "</tr>";
      }
     toPrint += "</table>";
     const originalContents = document.body.innerHTML;
     document.body.innerHTML = toPrint;
     window.print();
     document.body.innerHTML = originalContents;
}
function neWindow(className,i){
     var show=document.getElementsByClassName(className);
     show[i].style.visibility="visible";
     var printContents ="<!DOCTYPE html><head><meta charset='UTF-8'><link rel='stylesheet' href='styleCode.css?version=51'/><title>Notes</title></head><body>";
     printContents += show[i].innerHTML;
     printContents += "</body>  <script src='download.js'></script><script src='javas.js'></script><script src='sort.js'></script><script src='search.js'></script></html>";
     show[i].style.visibility="hidden";
     var myWindow = window.open("",'_blank');
     myWindow.document.write(printContents);
}
function caclulerTab(i){
     tabl = document.getElementsByClassName('calculeTab');
     var col=2;
     let tabb=[];
     var rows = tabl[i].rows.length;
     var result=0.0;
     var arrTable = [...Array(rows)].map(e => Array(col));
     for (ro=0; ro<rows; ro++) {
          for (co=0; co<col; co++) { 
              arrTable[ro][co] =Number( tabl[i].rows[ro].cells[co].innerHTML);
          }
     }
     for (ro=0; ro<rows; ro++) {
          result += arrTable[ro][0]*arrTable[ro][1] ;
     }
     return result;
}
function validation(i){
     if(i>=10)
          return document.write('validee');
     return document.write('Non validee');
}
function moyenne(tab,dim){
     result = tab/dim;
     return document.write(result.toFixed(2));
}