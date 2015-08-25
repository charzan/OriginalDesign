void setup()
{
	size(500,500);
	
}

void draw()
{
	background(100, 50, 100);
	point();
 
}
 
void point(){
	fill(random(0,255), random(0,255), random(0,255));
	ellipse(mouseY,mouseX,random(0,100), random(0,100));
}

