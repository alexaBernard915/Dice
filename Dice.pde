Die bob;
 void setup()
  {
    size(300,300);
      noLoop();
  }
  void draw()
  {
     int total = 0;
    background(255, 232, 249);
    for (int y = 10; y < 250; y = y + 60){
    for(int x = 10; x < 300; x = x + 60){
       bob = new Die(x,y);
   bob.roll();
   bob.show();
   total = total + bob.myRoll;
    }
    }
    
      //your code here
      fill(111, 47, 120);
      text("The total is " + total, 110, 270);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myRoll, myX, myY;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myRoll = 6;
          myX = x;
          myY = y;
      }
      void roll()
      {
          myRoll = (int)(Math.random()*6) + 1;
      }
      void show()
      {
        fill(111, 47, 120);
        rect(myX, myY, 40, 40);
         fill(209, 214, 255);
        if(myRoll==1){
          ellipse(myX + 20, myY + 20, 5, 5);
        }else if(myRoll==2){
          ellipse(myX + 30, myY + 10, 5, 5);
          ellipse(myX + 10, myY + 30, 5, 5);
        }else if(myRoll==3){
          ellipse(myX + 30, myY + 10, 5, 5);
          ellipse(myX + 10, myY + 30, 5, 5);
           ellipse(myX + 20, myY + 20, 5, 5);
        }else if(myRoll==4){
           ellipse(myX + 30, myY + 10, 5, 5);
          ellipse(myX + 10, myY + 30, 5, 5);
           ellipse(myX + 10, myY + 10, 5, 5);
          ellipse(myX + 30, myY + 30, 5, 5);
        }else if(myRoll==5){
          ellipse(myX+20, myY + 20, 5, 5);
            ellipse(myX + 30, myY + 10, 5, 5);
          ellipse(myX + 10, myY + 30, 5, 5);
           ellipse(myX + 10, myY + 10, 5, 5);
          ellipse(myX + 30, myY + 30, 5, 5);
        }else if(myRoll==6){
          ellipse(myX+ 13, myY + 20, 5, 5);
          ellipse(myX + 13, myY + 10, 5, 5);
          ellipse(myX + 13, myY + 30, 5, 5);
          ellipse(myX + 27, myY + 20, 5, 5);
          ellipse(myX + 27, myY + 10, 5, 5);
          ellipse(myX + 27, myY + 30, 5, 5);
          //your code here
        }
      }
  }

