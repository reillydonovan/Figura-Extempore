class Draw {

  void display() {
    TSPSPerson[] people = tspsReceiver.getPeopleArray();

    // loop through people
    for (int i=0; i<people.length; i++) {
      float r=random(0, 255);
      float g=random(0, 255);
      float b=random(0, 255);

      // draw person!


      noFill();
      //stroke(255);
      //rect(people[i].boundingRect.x*width, people[i].boundingRect.y*height, people[i].boundingRect.width*width, people[i].boundingRect.height*height);    

      // draw contours
      pushMatrix();
      translate(-22, -140);
    
   
      stroke(0, random(0, 70));
      strokeWeight(random(0, 1));
      beginShape();
      for (int j=0; j<people[i].contours.size(); j++) {
        PVector pt = (PVector) people[i].contours.get(j);
        if ( pt == null ) {
          println(j);
        } 
        else {
          vertex(pt.x*width*1.1, pt.y*height*1.1);
      
          // ellipse(pt.x*width, pt.y*height, 20, 20);
        }
      }
      endShape(CLOSE);
      popMatrix();
      
        pushMatrix();
      translate(-22, -140);
    
   
      stroke(r, g, b, random(0, 60));
      strokeWeight(random(0, 2));
      beginShape();
      for (int j=0; j<people[i].contours.size(); j++) {
        PVector pt = (PVector) people[i].contours.get(j);
        if ( pt == null ) {
          println(j);
        } 
        else {
          vertex(pt.x*width*1.1, pt.y*height*1.1);
      
          // ellipse(pt.x*width, pt.y*height, 20, 20);
        }
      }
      endShape(CLOSE);
      popMatrix();
      // draw circle based on person's centroid (also from 0-1)
      // fill(random(0,255));
      // strokeWeight(random(0,2));
      // ellipse(people[i].centroid.x*width, people[i].centroid.y*height, 20,20);
      //println("id: "+people[i].id+" age: "+people[i].age, people[i].boundingRect.x*width, (people[i].boundingRect.y*height + people[i].boundingRect.height*height) + 2);
      // text("id: "+people[i].id+" age: "+people[i].age, people[i].boundingRect.x*width, (people[i].boundingRect.y*height + people[i].boundingRect.height*height) + 2);
      // Press the mouse to hide the cursor
    }
  }
}

