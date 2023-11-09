// Yahtzee Game

let rollsLeft = 3;

function rollDice() {
	if (rollsLeft > 0) {
		let dice1 = Math.floor(Math.random() * 6) + 1;
		let dice2 = Math.floor(Math.random() * 6) + 1;
		let dice3 = Math.floor(Math.random() * 6) + 1;
		let dice4 = Math.floor(Math.random() * 6) + 1;
		let dice5 = Math.floor(Math.random() * 6) + 1;

		document.getElementById("dice1").innerHTML = dice1;
		document.getElementById("dice2").innerHTML = dice2;
		document.getElementById("dice3").innerHTML = dice3;
		document.getElementById("dice4").innerHTML = dice4;
		document.getElementById("dice5").innerHTML = dice5;

		rollsLeft--;
		document.getElementById("roll-count").innerHTML = rollsLeft;

		if (rollsLeft === 0) {
			document.querySelector("button").classList.add("disabled");
		}
	}
}



function resetGame() {
	document.getElementById("dice1").innerHTML = "";
	document.getElementById("dice2").innerHTML = "";
	document.getElementById("dice3").innerHTML = "";
	document.getElementById("dice4").innerHTML = "";
	document.getElementById("dice5").innerHTML = "";

	rollsLeft = 3;
	document.getElementById("roll-count").innerHTML = rollsLeft;

	document.querySelector("button").classList.remove("disabled");
}
