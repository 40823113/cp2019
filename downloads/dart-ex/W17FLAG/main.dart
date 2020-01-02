import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');


  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#France").onClick.listen((e) => drawFrance(ctx));
  querySelector("#Russia").onClick.listen((e) => drawRussia(ctx));
  querySelector("#Germany").onClick.listen((e) => drawGermany(ctx));
  querySelector("#Netherlands").onClick.listen((e) => drawNetherlands(ctx));
  querySelector("#Japan").onClick.listen((e) => drawJapan(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}
void drawJapan(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.beginPath();
  ctx.arc(150, 100, 60, 0,  Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = 'rgb(188, 0, 45)';
  ctx.fill();
  }
void drawNetherlands(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(170, 0, 40)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 66.66666, flag_w, flag_h /3);
  ctx.fillStyle = 'rgb(0, 71, 170)';
  ctx.fillRect(0, 133.333333, flag_w, flag_h /3);
  }
void drawGermany(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 66.66666, flag_w, flag_h /3);
  ctx.fillStyle = 'rgb(255, 204, 0)';
  ctx.fillRect(0, 133.333333, flag_w, flag_h /3);
  }
void drawRussia(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 61, 165)';
  ctx.fillRect(0, 0, flag_w, flag_h /3);
  ctx.fillStyle = 'rgb(218, 41, 28)';
  ctx.fillRect(0, 133.333333, flag_w, flag_h /3);
  }
void drawFrance(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 85, 164)';
  ctx.fillRect(0, 0, flag_w / 3, flag_h);
  ctx.fillStyle = 'rgb(260, 60, 50)';
  ctx.fillRect(200, 0, flag_w / 3, flag_h);
  }

void drawUSA(ctx){

  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  for ( int i = 1; i <= 11; i+=2) {
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 15.4*i, flag_w, 15.4); }
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 1.9);
    num b = flag_h/18;
  ctx.font = "10px Arial";
  ctx.strokeStyle = 'rgb(255, 255, 255)';
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36,12);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*2);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*3);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*4);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*5);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*6);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*7);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*8);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*9);


}
void drawROC(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = circle_x + Math.cos(angle) * star_radius;
    num toY = circle_y + Math.sin(angle) * star_radius;
  
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = '#fff';
  ctx.fill();
}


void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}