PImage miimagen;
void setup(){
  size (800,400);
  miimagen = loadImage ("phineas.jpg");
}
void draw(){
  background (255);
  fill(0);
  text(mouseX+","+mouseY,410,10);
  image(miimagen,0,0);
  //oreja
  fill(250,183,169);
  stroke(149,66,36);
  ellipse(520,207,40,40);
  //forma cara
triangle(585,320,765,153,459,90);
//boca
line(654,255,604,210);
//ojos
fill(255);
stroke(19,4,64);
ellipse(636,125,90,70);
ellipse(590,120,90,80);
fill(13,4,100);
ellipse(620,117,25,35);
ellipse(666,122,25,35);
fill(255);
ellipse(615,110,10,10);
ellipse(662,114,10,10);
//pelo
fill(206,29,29);
stroke(206,29,29);
beginShape();
vertex(439,132);
vertex(518,64);
vertex(471,75);
vertex(513,10);
vertex(448,62);
vertex(451,29);
vertex(437,73);
vertex(408,88);
vertex(433,93);
vertex(420,122);
vertex(442,103);
vertex(439,132);
endShape();
//lunares
fill(149,66,36);
stroke(149,66,36);
ellipse(484,108,5,5);
ellipse(502,112,5,5);
ellipse(498,125,5,5);
//cuello remera
beginShape();
fill(255,113,57);
vertex(580,310);
vertex(592,314);
vertex(578,307);
vertex(573,309);
vertex(571,312);
vertex(570,316);
vertex(572,321);
vertex(577,324);
vertex(584,326);
vertex(590,327);
vertex(595,325);
vertex(596,319);
vertex(592,314);
endShape();
//remera raya blanca
fill(247,245,197);
beginShape();
vertex(570,318);
vertex(566,327);
vertex(564,335);
vertex(562,347);
vertex(569,350);
vertex(576,352);
vertex(585,353);
vertex(596,353);
vertex(604,352);
vertex(604,339);
vertex(600,328);
vertex(596,323);
endShape();
//remera raya naranja
beginShape();
fill(255,113,57);
vertex(562,348);
vertex(558,361);
vertex(556,372);
vertex(564,375);
vertex(575,377);
vertex(587,378);
vertex(560,377);
vertex(603,376);
vertex(609,375);
vertex(610,374);
vertex(607,361);
vertex(605,352);
endShape();
//remera raya blanca
fill(247,245,197);
beginShape();
vertex(556,372);
vertex(552,385);
vertex(550,396);
vertex(549,399);
vertex(616,399);
vertex(614,391);
vertex(612,379);
vertex(610,374);
endShape();
//manga izq.
beginShape();
vertex(554,378);
vertex(560,381);
vertex(566,381);
vertex(573,380);
vertex(581,378);
vertex(581,368);
vertex(582,356);
vertex(561,354);
endShape();
//manga der.
beginShape();
vertex(606,354);
vertex(611,360);
vertex(615,366);
vertex(618,370);
vertex(620,375);
vertex(617,376);
vertex(612,376);
endShape();
//brazo izq.
beginShape();
fill(250,183,169);
vertex(559,381);
vertex(558,385);
vertex(558,390);
vertex(558,398);
vertex(566,398);
vertex(566,391);
vertex(566,381);
endShape();
//brazo der.
beginShape();
vertex(616,375);
vertex(618,381);
vertex(620,387);
vertex(622,393);
vertex(623,398);
vertex(615,398);
vertex(613,382);
vertex(611,378);
endShape();








}
