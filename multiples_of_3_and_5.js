var multiples = function() {
	var limit = 1000;
	var i = 1;
	var sum = 0;

	while (i < limit) {
		if (i % 3 === 0 || i % 5 === 0) {
			sum += i;
		}
		i++;
	}
	document.getElementById("answer").innerHTML = sum;
};

