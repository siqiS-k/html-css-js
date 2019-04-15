function showTime(){  
	var today=new Date();
	var year=today.getFullYear();
	var moth=today.getMonth()+1;
	var day=today.getDate();
	var dayToday=today.getDay();
	if(dayToday==0){
		dayToday="Sunday"
	}else if(dayToday==1){
		dayToday="Monday"
	}else if(dayToday==2){
		dayToday="Tuesday"
	}else if(dayToday==3){
		dayToday="Wednesday"
	}else if(dayToday==4){
		dayToday="Thursday"
	}else if(dayToday==5){
		dayToday="Friday"
	}else if(dayToday==6){
		dayToday="Saturday"
	}

	var minute=today.getMinutes();
	var second=today.getSeconds();
	var hour=today.getHours();
	if(hour<12){
		time=hour+":"+minute+":"+second+" "+"am";
	}else if(hour>=12){
		hour=hour-12
		time=hour+":"+minute+":"+second+" "+"pm";
	}
            var nowTime = year+"-"+moth+"-"+day+" "+time+" "+dayToday; 
            document.getElementById("getTime").innerHTML=nowTime;  
	}  
        setInterval(function() {showTime()},1000);
