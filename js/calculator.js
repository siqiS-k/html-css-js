var inch_v, mm_v;


function calculator(){
    inch_v=document.calculat.inch.value;
    mm_v=document.calculat.mm.value;
    if(isNaN(inch_v)|isNaN(inch_v)){
         alert("Please enter a number!");
    }
    else if(mm_v==""){
                 document.calculat.mm.value=inch_v*25.4;
    }
    else if(inch_v==""){
                 document.calculat.inch.value=mm_v/25.4;
    }
    else{
         alert("Please only enter one textbox to do the conversion!");
    }
}