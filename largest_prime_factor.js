function isDivisible(number, divisor) {
	if (number % divisor === 0) {
		return true;
	} else {
		return false;
	}
}


var largestPrime = function() {
	var x = 600851475143;
	var factors = [];
	//var primeFactors = [];
	
	for (var i = 2; i <= x; i++) {
		while (isDivisible(x, i)) {
			factors.push(i);
			x = x / i;
		}
	}
	
	
	/*
	for (var j = 1; j < factors.lenght; j++) {
		for (var k = 2; k < factors[j]; k++) {
			if (factors[j] % k === 0) {
				delete factors[j]; 
			}
		}
	}
	*/
	document.getElementById("prime").innerHTML = factors[factors.length-1];
	
};