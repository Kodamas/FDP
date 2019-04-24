import oscP5.*;

//Llama la libreria que abre imagenes
PImage bromelia, cheflera, elecho, flores, foyaje1, foyaje2, foyaje3, heliconia, hojasgrandes, hojasyflores, liana, palmera, palmita, plantitas, rastrera, vara;

OscP5 oscP5;

// Banderas de los Synths
boolean bass_flag=false, sawbass_flag=false, karp_flag=false, gong_flag=false, varsaw_flag=false, bell_flag=false, feel_flag=false, scratch_flag=false, pulse_flag=false, dirt_flag=false;

boolean blip_flag=false, pads_flag=false, rave_flag=false, donk_flag=false, saw_flag=false, orient_flag=false;

//herramienta de dibujo

PGraphics rayar;




void setup() {
  size(800, 800);

  oscP5 = new OscP5(this, 12345);

  //herramientadedibujo
  rayar = createGraphics (displayWidth, displayHeight);
  frameRate (10);
}

void draw() {
  //background(0);
  
  



 

  //herramienta de dibujo 

  herradibujo();

  // IMAGEN 
  bromelia=loadImage("bromelia.png");

  cheflera = loadImage ("cheflera.png");

  elecho = loadImage ("elechos.png");

  flores = loadImage ("flores.png");

  foyaje1 = loadImage ("foyaje1.png");

  foyaje2 = loadImage ("foyaje2.png");

  foyaje3 = loadImage ("foyaje3.png");

  heliconia = loadImage ("heliconia.png");

  hojasgrandes = loadImage ("hojasgrandes.png");

  hojasyflores = loadImage ("hojasyflores.png");

  liana = loadImage ("lianayhojas.png");

  palmera = loadImage ("palmera.png");

  palmita = loadImage ("palmita.png");

  plantitas = loadImage ("plantitas.png");

  rastrera = loadImage ("rastrera.png");

  vara=loadImage("vara.png");

  // DIBUJOS DE LOS SYNTES
  //DONK
  if (donk_flag) {
    image (plantitas, 0, 250,600,300);
  }
   //VARSAW
  if (varsaw_flag) {
    image (foyaje1, 100, 200,600,300);
  }

  //BELL

  if (bell_flag) {
    image (foyaje2, 100, 400,600,300);
  }

  if (feel_flag) {
    image (foyaje3, 100, 350,400,150);
  }
 //ORIENT
  if (orient_flag) {
    image (vara, 400, 0);
  }

  //BLIP
  if (blip_flag) {
    image (liana, -20, -20);
  }
  //PADS
  if (pads_flag) {
    image (palmera, 0, 20,500,700);
  }
  //BASS
  if (bass_flag) {
    image (elecho,0, 320,300,400);
  }

  // SAWBASS
  if (sawbass_flag)
  {
    image (flores, 0, 0, 150,150);
  }

  // KARP

  if (karp_flag) {
    image (bromelia, 390, 50,200,200);
  }

 //PULSE
  if (pulse_flag) {
    image (hojasgrandes, 500, 100,400,350);
  }

  // GONGe 

  if (gong_flag) {
    image (cheflera, 500, 310,400,400);
  }

 

  //SCRATCH
  if (scratch_flag) {
    image (heliconia, 600, -30,250,400);
  }

 

  // dirt
  if (dirt_flag) {
    image (hojasyflores, 150, 400,350,350);
  }



  

  //RAVE
  if (rave_flag) {
    image (palmita, 300, 300,300,600);
  }

  

  //SAW
  if (saw_flag) {
    image (rastrera, 300, 500,300,250);
  }

 
  sawbass_flag=false;
  bass_flag= false;
  karp_flag=false;
  gong_flag= false;
  varsaw_flag=false;
  bell_flag= false;
  feel_flag=false;
  scratch_flag= false;
  pulse_flag=false;
  dirt_flag= false;
  blip_flag=false;
  pads_flag= false;
  rave_flag=false;
  donk_flag= false;
  saw_flag=false;
  orient_flag= false;
}

  void oscEvent(OscMessage msg) {

    if (msg.checkAddrPattern("/s_new")==true) {
      if (msg.get(0).stringValue().equals("bass")) {
        println("bass");
        bass_flag = true;
      }

      if (msg.get(0).stringValue().equals("blip")) { 
        blip_flag=true;
      }
      if (msg.get(0).stringValue().equals("sawbass")) { 
        sawbass_flag=true;
      }
      if (msg.get(0).stringValue().equals("karp")) { 
        karp_flag=true;
      }
      if (msg.get(0).stringValue().equals("gong")) { 
        gong_flag=true;
      }
      if (msg.get(0).stringValue().equals("varsaw")) { 
        varsaw_flag=true;
      }
      if (msg.get(0).stringValue().equals("bell")) { 
        bell_flag=true;
      }
      if (msg.get(0).stringValue().equals("feel")) { 
        feel_flag=true;
      }
      if (msg.get(0).stringValue().equals("pulse")) { 
        pulse_flag=true;
      }
      if (msg.get(0).stringValue().equals("scratch")) { 
        scratch_flag=true;
      }
      if (msg.get(0).stringValue().equals("dirt")) { 
        dirt_flag=true;
      }
      if (msg.get(0).stringValue().equals("pads")) { 
        pads_flag=true;
      }
      if (msg.get(0).stringValue().equals("rave")) { 
        rave_flag=true;
      }
      if (msg.get(0).stringValue().equals("donk")) { 
        donk_flag=true;
      }
      if (msg.get(0).stringValue().equals("saw")) { 
        saw_flag=true;
      }
      if (msg.get(0).stringValue().equals("orient")) { 
        orient_flag=true;
      }
    }
  }
