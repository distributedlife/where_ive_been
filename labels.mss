/* Fonts and font sets can be assigned to variables. The first font
   will be preferred, and fall back to subsequent fonts for characters
   that are not available, or if the entire font is not available to
   Mapnik. */
@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";
@futura_italic: "Futura Medium Italic","Function Pro Medium Italic","Ubuntu Italic","Trebuchet MS Italic","DejaVu Sans Oblique";
@futura_bold: "Futura Bold","Function Pro Bold","Ubuntu Bold","Trebuchet MS Bold","DejaVu Sans Bold";
@brush: "Brush Script MT Italic";
  
/* ---- Countries ---- */
#country-name {
  text-face-name: @futura_med;
  text-fill:@line * 0.6;
  text-size:9;
  text-transform:uppercase;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:1;
  text-line-spacing:1;
  text-wrap-width:20;
  text-name:"''"; /* hackish? yes, yes it is*/
 
  [ScaleRank=2][zoom=2] {
    text-name: "[ABBREV]";
  }
  [ScaleRank=3][zoom=3] {
    text-name: "[ABBREV]";
    text-size:10;
  }
  [ScaleRank=4][zoom=4] {
    text-name: "[NAME]";
    text-size:11;
  }
  [ScaleRank=5][zoom=5] {
    text-name: "[NAME]";
    text-size:12;
    text-character-spacing:1;
    text-line-spacing:1;
  }
  [ScaleRank>5][zoom>5] {
    text-name: "[NAME]";
    text-size:14;
    text-character-spacing:2;
    text-line-spacing:2;
  }
}

/* ---- CITIES ---- */
#cities[zoom>0] {
  text-name: "";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 9;
  text-dy: -5;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
}

/* ---- GEOGRAPHIC LINES ---- */
#geo-lines[zoom>1][ScaleRank<10]{ 
  text-dy:-7;
  text-name:"[Name]";
  text-face-name:@futura_med;
  text-fill:@line;
  text-placement:line;
  text-spacing:600;
}

.train {
  line-color:#000;
  line-dasharray: 1,1;
  line-width: 0; 
  
  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.5; }
}

.car {
  line-color:#ff0;
  line-width: 0; 

  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.0; }
}

.drive {
  line-color:#990;
  line-width: 0; 

  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.0; }
}

.bus {
  line-color:#f00;
  line-width: 0; 

  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.0; }
}

.ferry {
  line-color:#00f;
  line-dasharray: 1,1;
  line-width: 0; 
  
  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.0; }
}

.hike {
  line-color:#0f0;
  line-dasharray: 1,1;
  line-width: 0; 
  
  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.0; }
}

.cablecar {
  line-color:#ceb5cf;
  line-dasharray: 1,1;
  line-width: 0; 
  
  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.0; }
}


.plane {
  line-color:#0ff;
  line-dasharray: 1,1;
  line-width: 0; 
  
  [zoom>=1] { line-width: 0.5; }
  [zoom>=5] { line-width: 1.0; }
}

#customcitiescsv[zoom>0] {
  text-name: "[Name]";
  text-fill: @line * 0.3;
  text-face-name:@futura_med;
  text-size: 12;
  text-dy: -10;
  text-halo-fill: rgba(255,255,255,0.5);
  text-halo-radius: 1;
  
  [icon='capital'] { point-file: url(icons/capital.png); }
  [icon='city'] { point-file: url(icons/city.png); }
  [icon='lodge'] { point-file: url(icons/city.png); }
  [icon='unesco'] { point-file: url(icons/unesco.svg); }
  [icon='distillery'] { point-file: url(icons/distillery.png); }
  [icon='castle'] { point-file: url(icons/castle.png); }
  [icon='palace'] { point-file: url(icons/castle.png); }
  [icon='viewpoint'] { point-file: url(icons/viewpoint.png); }
}
