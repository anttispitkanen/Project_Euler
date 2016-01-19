

var fibonacci = function() {
	var sumOfEvenNumbers = 2;
	var a = 1;
	var b = 2;
	var c = a+b;
	
	while (c <= 4000000) {
		c = a+b;
			
		if (c % 2 === 0) {
			sumOfEvenNumbers += c;
		}
		a = b;
		b = c;
	} 
	
	document.getElementById("fibonacci").innerHTML = sumOfEvenNumbers;
	
}