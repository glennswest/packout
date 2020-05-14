


module rcube(tx,ty,tz)
{
  $fn=50;
  minkowski() {
    cube([tx,ty,tz]);
    // rounded corners
    cylinder(r=2,h=2);
  }
}

module psmallcup()
{
 difference()
  {
	rcube(101.5,101.5,97);
        translate([1.5/2,1.5/2,1.6]) rcube(100,100,95.5);
        translate([(101.5-26)/2,(101.5-26)/2,-.1]) rcube(26,26,4);
  }
 difference(){
    translate([(101.5-28)/2,(101.5-28)/2,0]) rcube(28,28,6);
    translate([(101.5-26)/2,(101.5-26)/2,-.1]) rcube(26,26,4);
 }
}

module dividers()
{
   translate([101.5/2,0,0]) cube([2,101.5,91.5]);  
   rotate([0,0,90]) translate([101.5/2,-101.5,0]) cube([2,101.5,91.5]);
    
}

module psmallcupd4()
{
   psmallcup();
   difference(){
     dividers();
     translate([(101.5-26)/2,(101.5-26)/2,-.1]) rcube(26,26,4);
     }  
    
}

psmallcupd4();
   
