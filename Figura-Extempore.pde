/***********************************************************************
 * Figure Drawing - TSPS
 * Coded by Reilly Donovan 
 * For ieti @ Cornish
 * May 2014 - Seattle, WA
 * ***********************************************************************/

import tsps.*;
import java.net.*;
import java.io.*;
import javax.imageio.*;
import java.awt.image.*;
import com.aetrion.flickr.*;

TSPS tspsReceiver;
Crop crop;
Draw draw;
Flickr flickr;
Uploader uploader;
Auth auth;
Timer timer;

char s = ' ';
char u = '_';
PFont    uifont;      //holds font for console ui
int  maxLines = 30;   //number of lines console will have at most
int totalFadeTime = 4; // add to taste
int currentFadeTime = 0;
int lastDrawn = 0;
int numPeopleLeft = 0;
String   console[];   //array of strings for console
String apiKey = "ca4ed80a0ace3413a24a5f23f6f4d903";
String secretKey = "96b32431a136c77e";
String frob = "";
String token = "";
String title = "";
String debugText;
//String image_name = new_sentence();
PImage screenShot;
PImage fader;
Boolean debug = false;
Boolean uploadNow = false;
Boolean fade = false;

void setup() {
  size(displayWidth, displayHeight);
  crop = new Crop();
  draw = new Draw();
  timer = new Timer(5000);
  flickr = new Flickr(apiKey, secretKey, (new Flickr(apiKey)).getTransport());
  tspsReceiver= new TSPS(this, 12000);
  authenticate();
  new_sentence();
  uploader = flickr.getUploader(); 
  uifont = loadFont("Helvetica-48.vlw");
  console = new String[maxLines];
  printConsole("begin console");
  background(3); // adjust this value to control fade rate
  fader = get();
  background(255);
  frameRate(60);
  noCursor();
  timer.start();
}

void draw() {
  debugText = "";
  if (uploadNow) {
    printConsole("Starting");
    screenShot = get(0, 0, width, 696); 
    upload();
    uploadNow = false;
    
  }
  draw.display();
  crop.display();
  debugger();
  
  if (fade) {
    blend(fader, 0, 0, width, height, 0, 0, width, height, ADD);
    currentFadeTime++;
    if (currentFadeTime == totalFadeTime) {
      fade = false; // stop fading
      currentFadeTime=0;//reset counter
    }
  }
}
/* TSPS EVENTS:*/

/* Add these functions to your app to catch events when people enter a scene,
 move around, or leave */

/* TSPS EVENTS:*/

/* Add these functions to your app to catch events when people enter a scene,
 move around, or leave */

void personEntered( TSPSPerson p ) {


  //textAlign( BOTTOM );

  //text( "Hello new person!", width / 2, height / 2 );
}

void personUpdated( TSPSPerson p ) {
}

void personLeft( TSPSPerson p ) {

  int numPeopleLeft = tspsReceiver.people.size() - 1;

  uploadNow = true;
  fade = true;

  //textAlign( CENTER );
  // no one left :(
  if (numPeopleLeft == 0) {
    //text( "All alone again...", width / 2, height / 2 );
  } 
  else {
    //text( "See ya!\nGlad I've got "+ numPeopleLeft +" more friends to kick it with.", width / 2, height / 2 );
  }
  lastDrawn = millis();
}

