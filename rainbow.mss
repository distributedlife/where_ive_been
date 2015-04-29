/***********************************************************************

This file is responsible for assigning colors to each country. Color
assignment is mostly manual. Not taking advantage of Natural Earth's
'MAP_COLOR' field because it did not exist when I started, and at any
rate I want a smaller palette :)

***********************************************************************/

@white: #F0F8FF; /* blue-tinted, for Antarctica */
@red: #fdaf6b;
@orange: #fdc663;
@yellow: #fae364;
@green: #d3e46f;
@turquoise: #aadb78;
@blue: #a3cec5;
@purple: #ceb5cf;
@pink: #f3c1d3;
@f00: #f00;

//@not-visited: #fff;
//@conflict: #fff;
//@reconsider: #fff;
//@jess-only: #fff;
//@visited: #ceb5cf;
//@ryan-only: #ceb5cf;

@not-visited: #f4efec;
@planned: #ddd;
@visited: #fff;
@jess-only: #f4efec;//#ddffdd;
@ryan-only: #fff;//#ffffdd;
@reconsider: #f4efec;
@conflict: #f4efec;
@national-park: #00ff00;
@lake: #0000ff;

/* Coastlines */
#country::land-glow-inner[zoom>=0] { 
  line-color:@line;
  line-opacity:0.2;
  line-join:round;
  [zoom=0] { line-width:1.2; }
  [zoom=1] { line-width:1.6; }
  [zoom=2] { line-width:2; }
  [zoom>2] { line-width:2.4; } 
}

#country::land-glow-outer[zoom>1] { 
  line-color:@line;
  line-width:1;
  line-opacity:0.1;
  line-join:round;
  //line-color: @not-visited;
  //line-width: 5;
  //line-opacity: 0.5;
  //,line-offset: -2.5;
}

.national-park[zoom>0] {
  polygon-fill: @national-park;
  opacity: 0.2;
}

#country::fill[zoom>=0] {
  [ADM0_A3='ABW'] { polygon-fill:@not-visited; }
  [ADM0_A3='AFG'] { polygon-fill:@conflict; }
  [ADM0_A3='AGO'] { polygon-fill:@not-visited; }
  [ADM0_A3='AIA'] { polygon-fill:@not-visited; }
  [ADM0_A3='ALB'] { polygon-fill:@not-visited; }
  [ADM0_A3='ALD'] { polygon-fill:@not-visited; }
  [ADM0_A3='AND'] { polygon-fill:@not-visited; }
  [ADM0_A3='ARE'] { polygon-fill:@not-visited; }
  [ADM0_A3='ARG'] { polygon-fill:@jess-only; }
  [ADM0_A3='ARM'] { polygon-fill:@not-visited; }
  [ADM0_A3='ASM'] { polygon-fill:@not-visited; }
  [ADM0_A3='ATA'] { polygon-fill:@not-visited; }
  [ADM0_A3='ATC'] { polygon-fill:@not-visited; }
  [ADM0_A3='ATF'] { polygon-fill:@not-visited; }
  [ADM0_A3='ATG'] { polygon-fill:@not-visited; }
  [ADM0_A3='AUS'] { polygon-fill:@visited; }
  [ADM0_A3='AUT'] { polygon-fill:@not-visited; }
  [ADM0_A3='AZE'] { polygon-fill:@not-visited; }
  [ADM0_A3='BDI'] { polygon-fill:@reconsider; }
  [ADM0_A3='BEL'] { polygon-fill:@not-visited; }
  [ADM0_A3='BEN'] { polygon-fill:@not-visited; }
  [ADM0_A3='BFA'] { polygon-fill:@not-visited; }
  [ADM0_A3='BGD'] { polygon-fill:@not-visited; }
  [ADM0_A3='BGR'] { polygon-fill:@visited; }
  [ADM0_A3='BHR'] { polygon-fill:@reconsider; }
  [ADM0_A3='BHS'] { polygon-fill:@not-visited; }
  [ADM0_A3='BIH'] { polygon-fill:@not-visited; }
  [ADM0_A3='BLM'] { polygon-fill:@not-visited; }
  [ADM0_A3='BLR'] { polygon-fill:@ryan-only; }
  [ADM0_A3='BLZ'] { polygon-fill:@not-visited; }
  [ADM0_A3='BMU'] { polygon-fill:@not-visited; }
  [ADM0_A3='BOL'] { polygon-fill:@jess-only; }
  [ADM0_A3='BRA'] { polygon-fill:@not-visited; }
  [ADM0_A3='BRB'] { polygon-fill:@not-visited; }
  [ADM0_A3='BRN'] { polygon-fill:@ryan-only; }
  [ADM0_A3='BTN'] { polygon-fill:@not-visited; }
  [ADM0_A3='BWA'] { polygon-fill:@visited; }
  [ADM0_A3='CAF'] { polygon-fill:@conflict; }
  [ADM0_A3='CAN'] { polygon-fill:@not-visited; }
  [ADM0_A3='CHE'] { polygon-fill:@not-visited; }
  [ADM0_A3='CHL'] { polygon-fill:@jess-only; }
  [ADM0_A3='CHN'] { polygon-fill:@ryan-only; }
  [ADM0_A3='CIV'] { polygon-fill:@not-visited; }
  [ADM0_A3='CLP'] { polygon-fill:@not-visited; }
  [ADM0_A3='CMR'] { polygon-fill:@not-visited; }
  [ADM0_A3='CNM'] { polygon-fill:@not-visited; }
  [ADM0_A3='COD'] { polygon-fill:@reconsider; }
  [ADM0_A3='COG'] { polygon-fill:@not-visited; }
  [ADM0_A3='COK'] { polygon-fill:@not-visited; }
  [ADM0_A3='COL'] { polygon-fill:@not-visited; }
  [ADM0_A3='COM'] { polygon-fill:@not-visited; }
  [ADM0_A3='CPV'] { polygon-fill:@not-visited; }
  [ADM0_A3='CRI'] { polygon-fill:@jess-only; }
  [ADM0_A3='CSI'] { polygon-fill:@not-visited; }
  [ADM0_A3='CUB'] { polygon-fill:@not-visited; }
  [ADM0_A3='CUW'] { polygon-fill:@not-visited; }
  [ADM0_A3='CYM'] { polygon-fill:@not-visited; }
  [ADM0_A3='CYN'] { polygon-fill:@visited; }
  [ADM0_A3='CYP'] { polygon-fill:@visited; }
  [ADM0_A3='CZE'] { polygon-fill:@not-visited; }
  [ADM0_A3='DEU'] { polygon-fill:@not-visited; }
  [ADM0_A3='DJI'] { polygon-fill:@not-visited; }
  [ADM0_A3='DMA'] { polygon-fill:@not-visited; }
  [ADM0_A3='DNK'] { polygon-fill:@not-visited; }
  [ADM0_A3='DOM'] { polygon-fill:@not-visited; }
  [ADM0_A3='DZA'] { polygon-fill:@reconsider; }
  [ADM0_A3='ECU'] { polygon-fill:@jess-only; }
  [ADM0_A3='EGY'] { polygon-fill:@reconsider; }
  [ADM0_A3='ERI'] { polygon-fill:@reconsider; }
  [ADM0_A3='ESB'] { polygon-fill:@not-visited; }
  [ADM0_A3='ESP'] { polygon-fill:@not-visited; }
  [ADM0_A3='EST'] { polygon-fill:@not-visited; }
  [ADM0_A3='ETH'] { polygon-fill:@reconsider; }
  [ADM0_A3='FIN'] { polygon-fill:@not-visited; }
  [ADM0_A3='FJI'] { polygon-fill:@not-visited; }
  [ADM0_A3='FLK'] { polygon-fill:@not-visited; }
  [ADM0_A3='FRA'] { polygon-fill:@visited; }
  [ADM0_A3='FRO'] { polygon-fill:@not-visited; }
  [ADM0_A3='FSM'] { polygon-fill:@not-visited; }
  [ADM0_A3='GAB'] { polygon-fill:@not-visited; }
  [ADM0_A3='GAZ'] { polygon-fill:@conflict; }
  [ADM0_A3='GBR'] { polygon-fill:@visited; }
  [ADM0_A3='GEO'] { polygon-fill:@not-visited; }
  [ADM0_A3='GGY'] { polygon-fill:@not-visited; }
  [ADM0_A3='GHA'] { polygon-fill:@not-visited; }
  [ADM0_A3='GIB'] { polygon-fill:@not-visited; }
  [ADM0_A3='GIN'] { polygon-fill:@reconsider; }
  [ADM0_A3='GMB'] { polygon-fill:@not-visited; }
  [ADM0_A3='GNB'] { polygon-fill:@not-visited; }
  [ADM0_A3='GNQ'] { polygon-fill:@not-visited; }
  [ADM0_A3='GRC'] { polygon-fill:@not-visited; }
  [ADM0_A3='GRD'] { polygon-fill:@not-visited; }
  [ADM0_A3='GRL'] { polygon-fill:@not-visited; }
  [ADM0_A3='GTM'] { polygon-fill:@not-visited; }
  [ADM0_A3='GUM'] { polygon-fill:@not-visited; }
  [ADM0_A3='GUY'] { polygon-fill:@not-visited; }
  [ADM0_A3='HKG'] { polygon-fill:@ryan-only; }
  [ADM0_A3='HMD'] { polygon-fill:@not-visited; }
  [ADM0_A3='HND'] { polygon-fill:@not-visited; }
  [ADM0_A3='HRV'] { polygon-fill:@not-visited; }
  [ADM0_A3='HTI'] { polygon-fill:@reconsider; }
  [ADM0_A3='HUN'] { polygon-fill:@ryan-only; }
  [ADM0_A3='IDN'] { polygon-fill:@not-visited; }
  [ADM0_A3='IMN'] { polygon-fill:@not-visited; }
  [ADM0_A3='IND'] { polygon-fill:@visited; }
  [ADM0_A3='IOA'] { polygon-fill:@not-visited; }
  [ADM0_A3='IOT'] { polygon-fill:@not-visited; }
  [ADM0_A3='IRL'] { polygon-fill:@not-visited; }
  [ADM0_A3='IRN'] { polygon-fill:@reconsider; }
  [ADM0_A3='IRQ'] { polygon-fill:@conflict; }
  [ADM0_A3='ISL'] { polygon-fill:@not-visited; }
  [ADM0_A3='ISR'] { polygon-fill:@reconsider; }
  [ADM0_A3='ITA'] { polygon-fill:@not-visited; }
  [ADM0_A3='JAM'] { polygon-fill:@not-visited; }
  [ADM0_A3='JEY'] { polygon-fill:@not-visited; }
  [ADM0_A3='JOR'] { polygon-fill:@reconsider; }
  [ADM0_A3='JPN'] { polygon-fill:@visited; }
  [ADM0_A3='KAB'] { polygon-fill:@not-visited; }
  [ADM0_A3='KAS'] { polygon-fill:@not-visited; }
  [ADM0_A3='KAZ'] { polygon-fill:@not-visited; }
  [ADM0_A3='KEN'] { polygon-fill:@conflict; }
  [ADM0_A3='KGZ'] { polygon-fill:@not-visited; }
  [ADM0_A3='KHM'] { polygon-fill:@ryan-only; }
  [ADM0_A3='KIR'] { polygon-fill:@not-visited; }
  [ADM0_A3='KNA'] { polygon-fill:@not-visited; }
  [ADM0_A3='KNM'] { polygon-fill:@not-visited; }
  [ADM0_A3='KOR'] { polygon-fill:@visited; }
  [ADM0_A3='KOS'] { polygon-fill:@not-visited; }
  [ADM0_A3='KWT'] { polygon-fill:@not-visited; }
  [ADM0_A3='LAO'] { polygon-fill:@not-visited; }
  [ADM0_A3='LBN'] { polygon-fill:@reconsider; }
  [ADM0_A3='LBR'] { polygon-fill:@reconsider; }
  [ADM0_A3='LBY'] { polygon-fill:@conflict; }
  [ADM0_A3='LCA'] { polygon-fill:@not-visited; }
  [ADM0_A3='LIE'] { polygon-fill:@not-visited; }
  [ADM0_A3='LKA'] { polygon-fill:@not-visited; }
  [ADM0_A3='LSO'] { polygon-fill:@visited; }
  [ADM0_A3='LTU'] { polygon-fill:@not-visited; }
  [ADM0_A3='LUX'] { polygon-fill:@not-visited; }
  [ADM0_A3='LVA'] { polygon-fill:@not-visited; }
  [ADM0_A3='MAC'] { polygon-fill:@ryan-only; }
  [ADM0_A3='MAF'] { polygon-fill:@not-visited; }
  [ADM0_A3='MAR'] { polygon-fill:@not-visited; }
  [ADM0_A3='MCO'] { polygon-fill:@not-visited; }
  [ADM0_A3='MDA'] { polygon-fill:@not-visited; }
  [ADM0_A3='MDG'] { polygon-fill:@not-visited; }
  [ADM0_A3='MDV'] { polygon-fill:@not-visited; }
  [ADM0_A3='MEX'] { polygon-fill:@not-visited; }
  [ADM0_A3='MHL'] { polygon-fill:@not-visited; }
  [ADM0_A3='MKD'] { polygon-fill:@not-visited; }
  [ADM0_A3='MLI'] { polygon-fill:@conflict; }
  [ADM0_A3='MLT'] { polygon-fill:@not-visited; }
  [ADM0_A3='MMR'] { polygon-fill:@not-visited; }
  [ADM0_A3='MNE'] { polygon-fill:@not-visited; }
  [ADM0_A3='MNG'] { polygon-fill:@ryan-only; }
  [ADM0_A3='MNP'] { polygon-fill:@not-visited; }
  [ADM0_A3='MOZ'] { polygon-fill:@not-visited; }
  [ADM0_A3='MRT'] { polygon-fill:@reconsider; }
  [ADM0_A3='MSR'] { polygon-fill:@not-visited; }
  [ADM0_A3='MUS'] { polygon-fill:@not-visited; }
  [ADM0_A3='MWI'] { polygon-fill:@visited; }
  [ADM0_A3='MYS'] { polygon-fill:@visited; }
  [ADM0_A3='NAM'] { polygon-fill:@visited; }
  [ADM0_A3='NCL'] { polygon-fill:@not-visited; }
  [ADM0_A3='NER'] { polygon-fill:@conflict ; }
  [ADM0_A3='NFK'] { polygon-fill:@not-visited; }
  [ADM0_A3='NGA'] { polygon-fill:@reconsider; }
  [ADM0_A3='NIC'] { polygon-fill:@not-visited; }
  [ADM0_A3='NIU'] { polygon-fill:@not-visited; }
  [ADM0_A3='NLD'] { polygon-fill:@not-visited; }
  [ADM0_A3='NOR'] { polygon-fill:@not-visited; }
  [ADM0_A3='NPL'] { polygon-fill:@visited; }
  [ADM0_A3='NRU'] { polygon-fill:@not-visited; }
  [ADM0_A3='NZL'] { polygon-fill:@visited; }
  [ADM0_A3='OMN'] { polygon-fill:@not-visited; }
  [ADM0_A3='PAK'] { polygon-fill:@reconsider; }
  [ADM0_A3='PAN'] { polygon-fill:@not-visited; }
  [ADM0_A3='PCN'] { polygon-fill:@not-visited; }
  [ADM0_A3='PER'] { polygon-fill:@visited; }
  [ADM0_A3='PHL'] { polygon-fill:@ryan-only; }
  [ADM0_A3='PLW'] { polygon-fill:@not-visited; }
  [ADM0_A3='PNG'] { polygon-fill:@not-visited; }
  [ADM0_A3='POL'] { polygon-fill:@ryan-only; }
  [ADM0_A3='PRI'] { polygon-fill:@not-visited; }
  [ADM0_A3='PRK'] { polygon-fill:@reconsider; }
  [ADM0_A3='PRT'] { polygon-fill:@not-visited; }
  [ADM0_A3='PRY'] { polygon-fill:@not-visited; }
  [ADM0_A3='PYF'] { polygon-fill:@not-visited; }
  [ADM0_A3='QAT'] { polygon-fill:@not-visited; }
  [ADM0_A3='ROU'] { polygon-fill:@visited; }
  [ADM0_A3='RUS'] { polygon-fill:@ryan-only; }
  [ADM0_A3='RWA'] { polygon-fill:@visited; }
  [ADM0_A3='SAH'] { polygon-fill:@not-visited; }
  [ADM0_A3='SAU'] { polygon-fill:@reconsider; }
  [ADM0_A3='SDN'] { polygon-fill:@conflict; }
  [ADM0_A3='SDS'] { polygon-fill:@conflict; }
  [ADM0_A3='SEN'] { polygon-fill:@not-visited; }
  [ADM0_A3='SGP'] { polygon-fill:@visited; }
  [ADM0_A3='SGS'] { polygon-fill:@not-visited; }
  [ADM0_A3='SHN'] { polygon-fill:@not-visited; }
  [ADM0_A3='SLB'] { polygon-fill:@not-visited; }
  [ADM0_A3='SLE'] { polygon-fill:@not-visited; }
  [ADM0_A3='SLV'] { polygon-fill:@not-visited; }
  [ADM0_A3='SMR'] { polygon-fill:@not-visited; }
  [ADM0_A3='SOL'] { polygon-fill:@not-visited; }
  [ADM0_A3='SOM'] { polygon-fill:@conflict; }
  [ADM0_A3='SPM'] { polygon-fill:@not-visited; }
  [ADM0_A3='SRB'] { polygon-fill:@not-visited; }
  [ADM0_A3='STP'] { polygon-fill:@not-visited; }
  [ADM0_A3='SUR'] { polygon-fill:@not-visited; }
  [ADM0_A3='SVK'] { polygon-fill:@ryan-only; }
  [ADM0_A3='SVN'] { polygon-fill:@not-visited; }
  [ADM0_A3='SWE'] { polygon-fill:@not-visited; }
  [ADM0_A3='SWZ'] { polygon-fill:@not-visited; }
  [ADM0_A3='SYC'] { polygon-fill:@not-visited; }
  [ADM0_A3='SYR'] { polygon-fill:@conflict; }
  [ADM0_A3='TCA'] { polygon-fill:@not-visited; }
  [ADM0_A3='TCD'] { polygon-fill:@conflict; }
  [ADM0_A3='TGO'] { polygon-fill:@not-visited; }
  [ADM0_A3='THA'] { polygon-fill:@jess-only; }
  [ADM0_A3='TJK'] { polygon-fill:@not-visited; }
  [ADM0_A3='TKM'] { polygon-fill:@not-visited; }
  [ADM0_A3='TLS'] { polygon-fill:@not-visited; }
  [ADM0_A3='TON'] { polygon-fill:@not-visited; }
  [ADM0_A3='TTO'] { polygon-fill:@not-visited; }
  [ADM0_A3='TUN'] { polygon-fill:@not-visited; }
  [ADM0_A3='TUR'] { polygon-fill:@visited; }
  [ADM0_A3='TUV'] { polygon-fill:@not-visited; }
  [ADM0_A3='TWN'] { polygon-fill:@ryan-only; }
  [ADM0_A3='TZA'] { polygon-fill:@visited; }
  [ADM0_A3='UGA'] { polygon-fill:@visited; }
  [ADM0_A3='UKR'] { polygon-fill:@reconsider; }
  [ADM0_A3='UMI'] { polygon-fill:@not-visited; }
  [ADM0_A3='URY'] { polygon-fill:@not-visited; }
  [ADM0_A3='USA'] { polygon-fill:@visited; }
  [ADM0_A3='USG'] { polygon-fill:@not-visited; }
  [ADM0_A3='UZB'] { polygon-fill:@not-visited; }
  [ADM0_A3='VAT'] { polygon-fill:@not-visited; }
  [ADM0_A3='VCT'] { polygon-fill:@not-visited; }
  [ADM0_A3='VEN'] { polygon-fill:@conflict; }
  [ADM0_A3='VGB'] { polygon-fill:@not-visited; }
  [ADM0_A3='VIR'] { polygon-fill:@not-visited; }
  [ADM0_A3='VNM'] { polygon-fill:@ryan-only; }
  [ADM0_A3='VUT'] { polygon-fill:@not-visited; }
  [ADM0_A3='WEB'] { polygon-fill:@conflict; }
  [ADM0_A3='WLF'] { polygon-fill:@not-visited; }
  [ADM0_A3='WSB'] { polygon-fill:@not-visited; }
  [ADM0_A3='WSM'] { polygon-fill:@not-visited; }
  [ADM0_A3='YEM'] { polygon-fill:@conflict; }
  [ADM0_A3='ZAF'] { polygon-fill:@visited; }
  [ADM0_A3='ZMB'] { polygon-fill:@visited; }
  [ADM0_A3='ZWE'] { polygon-fill:@not-visited; }
}


#ruseivanovo {
  line-width:1;
  line-color:#168;
}


.lake {
  polygon-opacity:0.2;
  polygon-fill:@lake;
}
