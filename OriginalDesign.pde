int ellipseSize1  = 10;
int ellipseSize2  = 10;
int ellipseSize3  = 10;
int ellipseSize4  = 10;
int ellipseSize5  = 10;
int ellipseSize6  = 10;
int ellipseSize7  = 10;
int ellipseSize8  = 10;
int ellipseSize9  = 10;
int ellipseSize10 = 10;
int ellipseSize11 = 10;
int ellipseSize12 = 10;
int ellipseSize13 = 10;


void setup()
{

	size(500,500);
	background(100, 50, 100);
	
}

void draw()
{
	something();
	//point();
 
}
 
void point(){
	//randomly generated ellipsesfollow the oposite of your mouse
	fill(random(0,255), random(0,255), random(0,255));
	ellipse(mouseY,mouseX,random(0,100), random(0,100));
}
void something(){
	if(keyPressed == true && key == 'a'){
		fill(50);
		stroke(random(0,255), random(0,255), random(0,255));
		ellipse(250,250,ellipseSize1 += 1, ellipseSize1 += 1); 
	//draws an expanding ellipse; 
	//once one ellipse diameter reaches 250, the next one starts
		if(ellipseSize1 > 250){
			ellipse(250,250,ellipseSize2 ++, ellipseSize2++);
		}
		
		if(ellipseSize2 > 250){
			ellipse(250,250,ellipseSize3++, ellipseSize3++);
		}
	//resets the first few diameters as the later ones are created
		if(ellipseSize3 > 250){
			ellipse(250,250,ellipseSize4++, ellipseSize4++);
			ellipseSize1 = 10;
		}
		
		if(ellipseSize4 > 250){
			ellipse(250,250,ellipseSize5++, ellipseSize5++);
			ellipseSize2 = 10;
		}
	//resets all other ellipses to keep the loop going	
		if(ellipseSize5 > 250){
			ellipseSize3 = 10;
			ellipseSize4 = 10;
			ellipseSize5 = 10;

		}	
	}
	
}

