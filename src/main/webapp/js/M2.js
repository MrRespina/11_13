/**
 * 
 */
 
 function check(){
	
	let a = document.ff.x;
	let b = document.ff.y;
	
	if(isEmpty(a)){
		alert('A 빈칸 입력 바람.');
		return false;
	}else if(isEmpty(b)){
		alert('B 빈칸 입력 바람.');
		return false;
	} else if(isNotNumber(a)){
		alert('A 에 숫자만 입력 바람.');
		return false;
	} else if(isNotNumber(b)){
		alert('B 에 숫자만 입력 바람.');
		return false;
	}
	
	return true;
}

function isEmpty(number){
	
	return (!number.value);
	
}

function isNotNumber(number){
	
	return isNaN(number.value);
	
}