let posX; // Gary's position
let posY; // Gary's position

let velX; // Gary's velocity
let velY; // Gary's velocity

let size; //Gary's Size

let gravity = 0.01; //accelaration of posY

let hue; // lava changing color

let score; // score counter

function setup() {
	createCanvas(windowWidth, windowHeight);
	background(50);

	posX = random(0, width);
	posY = random(100);


	velX = 3;
	velY = 0;

	size = 70;

	colorMode(HSB, 255);

	hue = random(0, 30);

	score = 0;

	textSize(50);
}


function draw() {
	background(50);

	gary ();

	posX = posX + velX;
	posY = posY + velY;

	if (posX > width || posX < 0) {
		velX = velX * -1;
	}

	if (posY > height + 75) {
		velY = 0;
		velX = 0;
		text("FAILED!", width/2.25, height/2);
	}

	hue = hue + 0.2;
	if (hue > 30) {
		hue = 0;
	}

	velY = velY + gravity

	fill(0, 150, 200);
	text("Score:", 10, 50);
	text(score, 160, 52.5);

	noStroke();
	fill(hue, 150, 200);
	rect(width/1000, height - 150 , width, 150);
	fill(hue + 2, 150, 200);
	rect(width/750, height - 120 , width, 150);
	fill(hue + 4, 150, 200);
	rect(width/500, height - 100 , width, 150);
	fill(hue + 6, 150, 200);
	rect(width/250, height - 80 , width, 150);
	fill(hue + 8, 150, 200);
	rect(width/2, height - 90 , width, 150);
	fill(hue + 10, 150, 200);
	rect(width/300, height - 100 , width, 150);
	fill(hue + 12, 150, 200);
	rect(width/600, height - 80 , width, 150);
	fill(hue + 14, 150, 200);
	rect(width/400, height - 90 , width, 150);
}


function mousePressed() {
	let d = dist(mouseX, mouseY, posX, posY);

	if (d < size) {
		posX = random(0, width);
		posY = random(0, height/40);
		velX = velX + 0.5 || -0.5;
		velY = velY + 0.01;
		score = score + 1;
	}
}

function gary() {

	fill(168, 150, 200);
	ellipse(posX, posY, size, size);
	fill(168, 150, 0);
	ellipse(posX + 12, posY - 18, 15, 15);
	ellipse(posX - 12, posY - 18, 15, 15);
	fill(0, 150, 200);
	ellipse(posX, posY + 10, 30, 25);
	text("Help!", posX + 40, posY - 20);

}
