<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="BGM220S">
<packages>
<package name="BGM220SC22HNA">
<smd name="P$1" x="0" y="0" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$2" x="0" y="-0.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$3" x="0" y="-1" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$4" x="0" y="-1.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$5" x="0" y="-2" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$6" x="0" y="-2.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$7" x="0" y="-3" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$8" x="0" y="-3.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$9" x="0" y="-4" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$10" x="0" y="-4.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$11" x="0.4" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$12" x="0.9" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$13" x="1.4" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$14" x="1.9" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$15" x="2.4" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$16" x="2.9" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$17" x="3.4" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$18" x="3.9" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$19" x="4.4" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$20" x="4.9" y="-4.9" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$21" x="5.3" y="-4.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$22" x="5.3" y="-4" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$23" x="5.3" y="-3.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$24" x="5.3" y="-3" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$25" x="5.3" y="-2.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$26" x="5.3" y="-2" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$27" x="5.3" y="-1.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$28" x="5.3" y="-1" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$29" x="5.3" y="-0.5" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$30" x="5.3" y="0" dx="0.35" dy="0.25" layer="1"/>
<smd name="P$31" x="4.9" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$32" x="4.4" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$33" x="3.9" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$34" x="3.4" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$35" x="2.9" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$36" x="2.4" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$37" x="1.9" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$38" x="1.4" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$39" x="0.9" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$40" x="0.4" y="0.4" dx="0.35" dy="0.25" layer="1" rot="R90"/>
<smd name="P$41" x="2.2" y="-1.8" dx="0.5" dy="0.5" layer="1"/>
<smd name="P$42" x="2.2" y="-2.7" dx="0.5" dy="0.5" layer="1"/>
<smd name="P$43" x="3.1" y="-2.7" dx="0.5" dy="0.5" layer="1"/>
<smd name="P$44" x="3.1" y="-1.8" dx="0.5" dy="0.5" layer="1"/>
</package>
<package name="FOOTPRINT_0201">
<smd name="P$1" x="0" y="0" dx="0.25" dy="0.35" layer="1"/>
<smd name="P$2" x="0.55" y="0" dx="0.25" dy="0.35" layer="1"/>
</package>
<package name="SOT-SC70">
<smd name="VOUT" x="0" y="0" dx="0.4" dy="0.95" layer="1" rot="R90"/>
<smd name="VIN" x="0" y="1.3" dx="0.4" dy="0.95" layer="1" rot="R90"/>
<smd name="GND" x="2.2" y="0.65" dx="0.4" dy="0.95" layer="1" rot="R90"/>
</package>
<package name="2450AT18A100">
<wire x1="0" y1="0" x2="0" y2="1.8" width="0.1016" layer="51"/>
<wire x1="0" y1="1.8" x2="3.4" y2="1.8" width="0.1016" layer="51"/>
<wire x1="3.4" y1="1.8" x2="3.4" y2="0" width="0.1016" layer="51"/>
<wire x1="3.4" y1="0" x2="0" y2="0" width="0.1016" layer="51"/>
<smd name="P$1" x="0.3" y="0.9" dx="1.8" dy="0.7" layer="1" rot="R90"/>
<smd name="P$2" x="3.1" y="0.9" dx="1.8" dy="0.7" layer="1" rot="R90"/>
</package>
<package name="RC0402N">
<smd name="1" x="-0.5528" y="0" dx="0.6556" dy="0.5" layer="1"/>
<smd name="2" x="0.5528" y="0" dx="0.6556" dy="0.5" layer="1"/>
<wire x1="-0.2286" y1="-0.254" x2="-0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="0.254" x2="-0.5334" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.5334" y1="-0.254" x2="-0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="0.254" x2="0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-0.254" x2="0.5334" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.5334" y1="0.254" x2="0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-0.254" x2="0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.5334" y1="-0.254" x2="0.5334" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="0.254" x2="-0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.5334" y1="0.254" x2="-0.5334" y2="-0.254" width="0.1524" layer="51"/>
</package>
<package name="RC0402N-M">
<smd name="1" x="-0.6544" y="0" dx="0.8588" dy="0.6016" layer="1"/>
<smd name="2" x="0.6544" y="0" dx="0.8588" dy="0.6016" layer="1"/>
<wire x1="-0.2286" y1="-0.254" x2="-0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="0.254" x2="-0.5334" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.5334" y1="-0.254" x2="-0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="0.254" x2="0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-0.254" x2="0.5334" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.5334" y1="0.254" x2="0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-0.254" x2="0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.5334" y1="-0.254" x2="0.5334" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="0.254" x2="-0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.5334" y1="0.254" x2="-0.5334" y2="-0.254" width="0.1524" layer="51"/>
</package>
<package name="RC0402N-L">
<smd name="1" x="-0.4512" y="0" dx="0.4524" dy="0.5" layer="1"/>
<smd name="2" x="0.4512" y="0" dx="0.4524" dy="0.5" layer="1"/>
<wire x1="-0.2286" y1="-0.254" x2="-0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="0.254" x2="-0.5334" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.5334" y1="-0.254" x2="-0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="0.254" x2="0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-0.254" x2="0.5334" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.5334" y1="0.254" x2="0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-0.254" x2="0.2286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.5334" y1="-0.254" x2="0.5334" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="0.254" x2="-0.2286" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.5334" y1="0.254" x2="-0.5334" y2="-0.254" width="0.1524" layer="51"/>
</package>
<package name="CR1025">
<smd name="GND" x="0" y="0" dx="3.96" dy="3.96" layer="1"/>
<smd name="VDD2" x="6.6" y="0" dx="2.9" dy="3.5" layer="1"/>
<smd name="VDD" x="-6.6" y="0" dx="2.9" dy="3.5" layer="1"/>
</package>
<package name="CR1025_2">
<smd name="GND" x="0" y="0" dx="3.96" dy="3.96" layer="1"/>
<smd name="VDD" x="-5" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<smd name="VDD2" x="5" y="0.1" dx="0.8" dy="3.5" layer="1" rot="R180"/>
</package>
<package name="CR1025_3">
<smd name="GND" x="0" y="0" dx="3.96" dy="3.96" layer="1"/>
<smd name="VDD" x="-5" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<smd name="VDD2" x="5" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<polygon width="0.1" layer="1">
<vertex x="-5.4" y="1.7"/>
<vertex x="-7.1" y="0"/>
<vertex x="-5.4" y="-1.7"/>
</polygon>
<polygon width="0.1" layer="1">
<vertex x="5.4" y="1.7"/>
<vertex x="7.1" y="0"/>
<vertex x="5.4" y="-1.7"/>
</polygon>
<polygon width="0.1" layer="29">
<vertex x="-5.4" y="1.7"/>
<vertex x="-7.1" y="0"/>
<vertex x="-5.4" y="-1.7"/>
</polygon>
<polygon width="0.1" layer="29">
<vertex x="5.4" y="1.7"/>
<vertex x="7.1" y="0"/>
<vertex x="5.4" y="-1.7"/>
</polygon>
<polygon width="0.1" layer="31">
<vertex x="-5.4" y="1.7"/>
<vertex x="-7.1" y="0"/>
<vertex x="-5.4" y="-1.7"/>
</polygon>
<polygon width="0.1" layer="31">
<vertex x="5.4" y="1.7"/>
<vertex x="7.1" y="0"/>
<vertex x="5.4" y="-1.7"/>
</polygon>
</package>
<package name="CAP3216X125N">
<wire x1="-1.6" y1="0.8" x2="-1.6" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-0.8" x2="1.6" y2="-0.8" width="0.127" layer="51"/>
<wire x1="1.6" y1="-0.8" x2="1.6" y2="0.8" width="0.127" layer="51"/>
<wire x1="1.6" y1="0.8" x2="-1.6" y2="0.8" width="0.127" layer="51"/>
<wire x1="-2.3" y1="1.1" x2="-2.3" y2="-1.1" width="0.05" layer="39"/>
<wire x1="-2.3" y1="-1.1" x2="2.3" y2="-1.1" width="0.05" layer="39"/>
<wire x1="2.3" y1="-1.1" x2="2.3" y2="1.1" width="0.05" layer="39"/>
<wire x1="2.3" y1="1.1" x2="-2.3" y2="1.1" width="0.05" layer="39"/>
<smd name="1" x="-1.485" y="0" dx="1.82" dy="1.15" layer="1" roundness="54" rot="R90"/>
<smd name="2" x="1.485" y="0" dx="1.82" dy="1.15" layer="1" roundness="54" rot="R90"/>
</package>
<package name="BMA490L">
<wire x1="1" y1="1" x2="1" y2="-1" width="0.127" layer="51"/>
<wire x1="1" y1="-1" x2="-1" y2="-1" width="0.127" layer="51"/>
<wire x1="-1" y1="-1" x2="-1" y2="1" width="0.127" layer="51"/>
<wire x1="-1" y1="1" x2="1" y2="1" width="0.127" layer="51"/>
<text x="-1.09" y="1.178" size="0.1" layer="25">&gt;NAME</text>
<rectangle x1="-0.475" y1="-0.475" x2="0.475" y2="0.475" layer="41" rot="R270"/>
<rectangle x1="-0.475" y1="-0.475" x2="0.475" y2="0.475" layer="43" rot="R270"/>
<rectangle x1="-0.925" y1="-0.875" x2="-0.625" y2="-0.625" layer="31"/>
<rectangle x1="-0.925" y1="-0.375" x2="-0.625" y2="-0.125" layer="31"/>
<rectangle x1="-0.925" y1="0.125" x2="-0.625" y2="0.375" layer="31"/>
<rectangle x1="-0.925" y1="0.625" x2="-0.625" y2="0.875" layer="31"/>
<rectangle x1="0.625" y1="0.625" x2="0.925" y2="0.875" layer="31"/>
<rectangle x1="0.625" y1="0.125" x2="0.925" y2="0.375" layer="31"/>
<rectangle x1="0.625" y1="-0.375" x2="0.925" y2="-0.125" layer="31"/>
<rectangle x1="0.625" y1="-0.875" x2="0.925" y2="-0.625" layer="31"/>
<rectangle x1="-0.375" y1="-0.925" x2="-0.125" y2="-0.625" layer="31"/>
<rectangle x1="0.125" y1="-0.925" x2="0.375" y2="-0.625" layer="31"/>
<rectangle x1="-0.375" y1="0.625" x2="-0.125" y2="0.925" layer="31"/>
<rectangle x1="0.125" y1="0.625" x2="0.375" y2="0.925" layer="31"/>
<rectangle x1="-1" y1="0.55" x2="-0.55" y2="0.95" layer="29"/>
<rectangle x1="-1" y1="0.05" x2="-0.55" y2="0.45" layer="29"/>
<rectangle x1="-1" y1="-0.45" x2="-0.55" y2="-0.05" layer="29"/>
<rectangle x1="-1" y1="-0.95" x2="-0.55" y2="-0.55" layer="29"/>
<rectangle x1="0.55" y1="0.55" x2="1" y2="0.95" layer="29"/>
<rectangle x1="0.55" y1="0.05" x2="1" y2="0.45" layer="29"/>
<rectangle x1="0.55" y1="-0.45" x2="1" y2="-0.05" layer="29"/>
<rectangle x1="0.55" y1="-0.95" x2="1" y2="-0.55" layer="29"/>
<rectangle x1="-0.45" y1="0.55" x2="-0.05" y2="1" layer="29"/>
<rectangle x1="0.05" y1="0.55" x2="0.45" y2="1" layer="29"/>
<rectangle x1="-0.45" y1="-1" x2="-0.05" y2="-0.55" layer="29"/>
<rectangle x1="0.05" y1="-1" x2="0.45" y2="-0.55" layer="29"/>
<smd name="12" x="-0.25" y="0.775" dx="0.3" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="11" x="0.25" y="0.775" dx="0.3" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="1" x="-0.775" y="0.75" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<smd name="10" x="0.775" y="0.75" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<smd name="5" x="-0.25" y="-0.775" dx="0.3" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="6" x="0.25" y="-0.775" dx="0.3" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="4" x="-0.775" y="-0.75" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<smd name="7" x="0.775" y="-0.75" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<smd name="2" x="-0.775" y="0.25" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<smd name="3" x="-0.775" y="-0.25" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<smd name="9" x="0.775" y="0.25" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<smd name="8" x="0.775" y="-0.25" dx="0.35" dy="0.3" layer="1" stop="no" cream="no"/>
<circle x="-1.2" y="0.9" radius="0.05" width="0.1" layer="21"/>
</package>
<package name="FOOTPRINT_01005" urn="urn:adsk.eagle:footprint:22038838/1" locally_modified="yes">
<description>Chip, 0.40 X 0.20 X 0.20 mm body
&lt;p&gt;Chip package with body size 0.40 X 0.20 X 0.20 mm&lt;/p&gt;</description>
<wire x1="0.21" y1="-0.11" x2="-0.21" y2="-0.11" width="0.12" layer="51"/>
<wire x1="-0.21" y1="-0.11" x2="-0.21" y2="0.11" width="0.12" layer="51"/>
<wire x1="-0.21" y1="0.11" x2="0.21" y2="0.11" width="0.12" layer="51"/>
<wire x1="0.21" y1="0.11" x2="0.21" y2="-0.11" width="0.12" layer="51"/>
<smd name="1" x="-0.2611" y="0" dx="0.3785" dy="0.2987" layer="1"/>
<smd name="2" x="0.2611" y="0" dx="0.3785" dy="0.2987" layer="1"/>
<text x="-0.01" y="0.1984" size="0.1" layer="51" align="bottom-center">&gt;NAME</text>
</package>
<package name="FPCHEADER">
<smd name="P$1" x="0" y="0" dx="2.7" dy="0.71" layer="1" rot="R90" cream="no"/>
<smd name="P$2" x="1" y="0" dx="2.7" dy="0.71" layer="1" rot="R90" cream="no"/>
<smd name="P$3" x="2" y="0" dx="2.7" dy="0.71" layer="1" rot="R90" cream="no"/>
<smd name="P$4" x="3" y="0" dx="2.7" dy="0.71" layer="1" rot="R90" cream="no"/>
<smd name="P$5" x="4" y="0" dx="2.7" dy="0.71" layer="1" rot="R90" cream="no"/>
<smd name="P$6" x="5" y="0" dx="2.7" dy="0.71" layer="1" rot="R90" cream="no"/>
<wire x1="-1" y1="1.5" x2="6" y2="1.5" width="0" layer="52"/>
<wire x1="6" y1="1.5" x2="6" y2="-2.3" width="0" layer="52"/>
<wire x1="6" y1="-2.3" x2="-1" y2="-2.3" width="0" layer="52"/>
<wire x1="-1" y1="-2.3" x2="-1" y2="1.5" width="0" layer="52"/>
</package>
</packages>
<packages3d>
<package3d name="CAPC402X20N" urn="urn:adsk.eagle:package:22038836/1" locally_modified="yes" type="model">
<description>Chip, 0.40 X 0.20 X 0.20 mm body
&lt;p&gt;Chip package with body size 0.40 X 0.20 X 0.20 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="FOOTPRINT_01005"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="BGM220SC22HNA">
<description>BGM220SC22HNA</description>
<pin name="ANT_IN" x="-5.08" y="5.08" length="middle"/>
<pin name="RF_2G4" x="-5.08" y="0" length="middle"/>
<pin name="GND4" x="-5.08" y="-5.08" length="middle"/>
<pin name="PB04" x="-5.08" y="-15.24" length="middle"/>
<pin name="PB03" x="-5.08" y="-20.32" length="middle"/>
<pin name="PB02" x="-5.08" y="-25.4" length="middle"/>
<pin name="PB01" x="-5.08" y="-30.48" length="middle"/>
<pin name="PB00" x="-5.08" y="-35.56" length="middle"/>
<pin name="PA00" x="10.16" y="-48.26" length="middle" rot="R90"/>
<pin name="PA01" x="15.24" y="-48.26" length="middle" rot="R90"/>
<pin name="PA02" x="20.32" y="-48.26" length="middle" rot="R90"/>
<pin name="DECOUPLE" x="25.4" y="-48.26" length="middle" rot="R90"/>
<pin name="PA03" x="30.48" y="-48.26" length="middle" rot="R90"/>
<pin name="PA04" x="35.56" y="-48.26" length="middle" rot="R90"/>
<pin name="PA05" x="40.64" y="-48.26" length="middle" rot="R90"/>
<pin name="PA06" x="45.72" y="-48.26" length="middle" rot="R90"/>
<pin name="PA07" x="50.8" y="-48.26" length="middle" rot="R90"/>
<pin name="PA08" x="55.88" y="-48.26" length="middle" rot="R90"/>
<pin name="VREG" x="71.12" y="-35.56" length="middle" rot="R180"/>
<pin name="VREGVDD" x="71.12" y="-30.48" length="middle" rot="R180"/>
<pin name="IOVDD" x="71.12" y="-25.4" length="middle" rot="R180"/>
<pin name="PD03" x="71.12" y="-20.32" length="middle" rot="R180"/>
<pin name="PD02" x="71.12" y="-15.24" length="middle" rot="R180"/>
<pin name="PD01" x="71.12" y="-10.16" length="middle" rot="R180"/>
<pin name="PD00" x="71.12" y="-5.08" length="middle" rot="R180"/>
<pin name="PC00" x="71.12" y="0" length="middle" rot="R180"/>
<pin name="PC01" x="71.12" y="5.08" length="middle" rot="R180"/>
<pin name="PC02" x="71.12" y="10.16" length="middle" rot="R180"/>
<pin name="PC03" x="55.88" y="22.86" length="middle" rot="R270"/>
<pin name="PC04" x="50.8" y="22.86" length="middle" rot="R270"/>
<pin name="PC05" x="45.72" y="22.86" length="middle" rot="R270"/>
<pin name="PC06" x="40.64" y="22.86" length="middle" rot="R270"/>
<pin name="RESETN" x="35.56" y="22.86" length="middle" rot="R270"/>
<pin name="ANT_OUT" x="10.16" y="22.86" length="middle" rot="R270"/>
<wire x1="0" y1="17.78" x2="0" y2="-43.18" width="0.254" layer="94"/>
<wire x1="0" y1="-43.18" x2="66.04" y2="-43.18" width="0.254" layer="94"/>
<wire x1="66.04" y1="-43.18" x2="66.04" y2="17.78" width="0.254" layer="94"/>
<wire x1="66.04" y1="17.78" x2="0" y2="17.78" width="0.254" layer="94"/>
<text x="17.78" y="-12.7" size="2.54" layer="95">Silicon Labs
BGM220SC22HNA</text>
<pin name="GND5" x="-5.08" y="-10.16" length="middle"/>
<pin name="GND41" x="27.94" y="22.86" length="middle" rot="R270"/>
<pin name="GND42" x="22.86" y="22.86" length="middle" rot="R270"/>
<pin name="GND43" x="17.78" y="22.86" length="middle" rot="R270"/>
<pin name="GND36" x="30.48" y="22.86" length="middle" rot="R270"/>
<pin name="GND44" x="15.24" y="22.86" length="middle" rot="R270"/>
</symbol>
<symbol name="REF3318">
<wire x1="0" y1="0" x2="0" y2="10.16" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="VIN" x="-5.08" y="7.62" length="middle"/>
<pin name="GND" x="-5.08" y="2.54" length="middle"/>
<pin name="VOUT" x="17.78" y="5.08" length="middle" rot="R180"/>
<text x="0" y="-2.54" size="1.27" layer="95">REF3318AIDCKT </text>
</symbol>
<symbol name="2450AT18A100-1">
<wire x1="0" y1="0" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="-5.08" length="middle" rot="R90"/>
</symbol>
<symbol name="1U_CAPACITOR">
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="0" width="0.254" layer="94"/>
<pin name="P$1" x="-5.08" y="2.54" length="middle"/>
<pin name="P$2" x="7.62" y="2.54" length="middle" rot="R180"/>
<text x="0" y="-2.54" size="1.778" layer="96">1 uF</text>
</symbol>
<symbol name="LED">
<wire x1="2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<pin name="P$1" x="-2.54" y="0" length="middle"/>
<pin name="P$2" x="12.7" y="0" length="middle" rot="R180"/>
<text x="2.54" y="-5.08" size="0.762" layer="97">Kingbright
APG1005VGC-T-5MAV </text>
</symbol>
<symbol name="22OHMRESISTOR">
<pin name="P$1" x="-10.16" y="0" length="middle"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="10.16" y2="0" width="0.254" layer="94"/>
<pin name="P$2" x="15.24" y="0" length="middle" rot="R180"/>
<text x="-12.7" y="-5.08" size="1.778" layer="95">22 ohm - RC0201FR-0722RL</text>
</symbol>
<symbol name="COINCELL">
<pin name="VDD" x="-22.86" y="0" length="middle"/>
<pin name="GND" x="-22.86" y="-5.08" length="middle"/>
</symbol>
<symbol name="GRM31CC80G227ME11L">
<text x="0" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="0" y1="-1.905" x2="0.635" y2="1.905" layer="94"/>
<rectangle x1="1.905" y1="-1.905" x2="2.54" y2="1.905" layer="94"/>
<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="BMA490L">
<wire x1="-10.16" y1="15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="-10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-15.24" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="-10.16" y="16.002" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="SDO" x="-15.24" y="-5.08" length="middle"/>
<pin name="VDDIO" x="15.24" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="SDX" x="-15.24" y="-2.54" length="middle"/>
<pin name="INT1" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="INT2" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="VDD" x="15.24" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="GNDIO" x="15.24" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="!CSB" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="GND" x="15.24" y="-12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="SCX" x="-15.24" y="0" length="middle" direction="in" function="clk"/>
</symbol>
<symbol name="0U1_CAPACITOR">
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="0" width="0.254" layer="94"/>
<pin name="P$1" x="-5.08" y="2.54" length="middle"/>
<pin name="P$2" x="7.62" y="2.54" length="middle" rot="R180"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">0.1 uF</text>
</symbol>
<symbol name="FPCHEADER">
<pin name="P$1" x="-5.08" y="0" length="middle"/>
<pin name="P$2" x="-5.08" y="-5.08" length="middle"/>
<pin name="P$3" x="-5.08" y="-10.16" length="middle"/>
<pin name="P$4" x="-5.08" y="-15.24" length="middle"/>
<pin name="P$5" x="-5.08" y="-20.32" length="middle"/>
<pin name="P$6" x="-5.08" y="-25.4" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BGM220SC22HNA">
<description>BGM220SC22HNA
EFR32BG22 Series 2 Modules</description>
<gates>
<gate name="G$1" symbol="BGM220SC22HNA" x="-30.48" y="15.24"/>
</gates>
<devices>
<device name="" package="BGM220SC22HNA">
<connects>
<connect gate="G$1" pin="ANT_IN" pad="P$2"/>
<connect gate="G$1" pin="ANT_OUT" pad="P$40"/>
<connect gate="G$1" pin="DECOUPLE" pad="P$14"/>
<connect gate="G$1" pin="GND36" pad="P$36"/>
<connect gate="G$1" pin="GND4" pad="P$4"/>
<connect gate="G$1" pin="GND41" pad="P$41"/>
<connect gate="G$1" pin="GND42" pad="P$42"/>
<connect gate="G$1" pin="GND43" pad="P$43"/>
<connect gate="G$1" pin="GND44" pad="P$44"/>
<connect gate="G$1" pin="GND5" pad="P$5"/>
<connect gate="G$1" pin="IOVDD" pad="P$23"/>
<connect gate="G$1" pin="PA00" pad="P$11"/>
<connect gate="G$1" pin="PA01" pad="P$12"/>
<connect gate="G$1" pin="PA02" pad="P$13"/>
<connect gate="G$1" pin="PA03" pad="P$15"/>
<connect gate="G$1" pin="PA04" pad="P$16"/>
<connect gate="G$1" pin="PA05" pad="P$17"/>
<connect gate="G$1" pin="PA06" pad="P$18"/>
<connect gate="G$1" pin="PA07" pad="P$19"/>
<connect gate="G$1" pin="PA08" pad="P$20"/>
<connect gate="G$1" pin="PB00" pad="P$10"/>
<connect gate="G$1" pin="PB01" pad="P$9"/>
<connect gate="G$1" pin="PB02" pad="P$8"/>
<connect gate="G$1" pin="PB03" pad="P$7"/>
<connect gate="G$1" pin="PB04" pad="P$6"/>
<connect gate="G$1" pin="PC00" pad="P$28"/>
<connect gate="G$1" pin="PC01" pad="P$29"/>
<connect gate="G$1" pin="PC02" pad="P$30"/>
<connect gate="G$1" pin="PC03" pad="P$31"/>
<connect gate="G$1" pin="PC04" pad="P$32"/>
<connect gate="G$1" pin="PC05" pad="P$33"/>
<connect gate="G$1" pin="PC06" pad="P$34"/>
<connect gate="G$1" pin="PD00" pad="P$27"/>
<connect gate="G$1" pin="PD01" pad="P$26"/>
<connect gate="G$1" pin="PD02" pad="P$25"/>
<connect gate="G$1" pin="PD03" pad="P$24"/>
<connect gate="G$1" pin="RESETN" pad="P$35"/>
<connect gate="G$1" pin="RF_2G4" pad="P$3"/>
<connect gate="G$1" pin="VREG" pad="P$21"/>
<connect gate="G$1" pin="VREGVDD" pad="P$22"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="REF3318">
<gates>
<gate name="G$1" symbol="REF3318" x="-5.08" y="-5.08"/>
</gates>
<devices>
<device name="" package="SOT-SC70">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VOUT" pad="VOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2450AT18A100">
<gates>
<gate name="G$1" symbol="2450AT18A100-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2450AT18A100">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1U_CAPACITOR">
<description>Samsung Electro-Mechanics
CL03A105KQ3CSNC
1μF ±10% 6.3V Ceramic Capacitor X5R 0201</description>
<gates>
<gate name="G$1" symbol="1U_CAPACITOR" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="FOOTPRINT_0201">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="R">
<gates>
<gate name="A" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RC0402N">
<connects>
<connect gate="A" pin="P$1" pad="1"/>
<connect gate="A" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Kingbright"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="APG1005VGC-T-5MAV"/>
</technology>
</technologies>
</device>
<device name="RC0402N-M" package="RC0402N-M">
<connects>
<connect gate="A" pin="P$1" pad="1"/>
<connect gate="A" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW04020000Z0ED" constant="no"/>
<attribute name="VENDOR" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="RC0402N-L" package="RC0402N-L">
<connects>
<connect gate="A" pin="P$1" pad="1"/>
<connect gate="A" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW04020000Z0ED" constant="no"/>
<attribute name="VENDOR" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22OHMRESISTOR">
<description>RC0201FR-0722RL</description>
<gates>
<gate name="G$1" symbol="22OHMRESISTOR" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="FOOTPRINT_0201">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CR1025HOLDER">
<gates>
<gate name="G$1" symbol="COINCELL" x="0" y="-5.08"/>
</gates>
<devices>
<device name="" package="CR1025">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VDD" pad="VDD VDD2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMALLER" package="CR1025_2">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VDD" pad="VDD VDD2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CR1025_3" package="CR1025_3">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VDD" pad="VDD VDD2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GRM31CC80G227ME11L" prefix="C">
<description>CAP CER 220UF 4V X6S 1206</description>
<gates>
<gate name="G$1" symbol="GRM31CC80G227ME11L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAP3216X125N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" 220µF ±20% 4V Ceramic Capacitor X6S 1206 _3216 Metric_ "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="490-13250-1-ND"/>
<attribute name="DIGI-KEY_PURCHASE_URL" value="https://www.digikey.com/product-detail/en/murata-electronics/GRM31CC80G227ME11L/490-13250-1-ND/5877458?utm_source=snapeda&amp;utm_medium=aggregator&amp;utm_campaign=symbol"/>
<attribute name="MF" value="Murata Electronics"/>
<attribute name="MP" value="GRM31CC80G227ME11L"/>
<attribute name="PACKAGE" value="1206 Murata"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BMA490L" prefix="U">
<description>Ultra low power, 12-bit digital triaxial accelerometer </description>
<gates>
<gate name="G$1" symbol="BMA490L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BMA490L">
<connects>
<connect gate="G$1" pin="!CSB" pad="10"/>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="GNDIO" pad="8"/>
<connect gate="G$1" pin="INT1" pad="5"/>
<connect gate="G$1" pin="INT2" pad="6"/>
<connect gate="G$1" pin="SCX" pad="12"/>
<connect gate="G$1" pin="SDO" pad="1"/>
<connect gate="G$1" pin="SDX" pad="2"/>
<connect gate="G$1" pin="VDD" pad="7"/>
<connect gate="G$1" pin="VDDIO" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Accelerometer X, Y, Z Axis ±2g, 4g, 8g, 16g 12-LGA (2x2) "/>
<attribute name="MF" value="Bosch Sensortec"/>
<attribute name="MP" value="BMA400"/>
<attribute name="PACKAGE" value="LGA-12 Bosch Tools"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0U1_CAPACITOR">
<description>Murata Electronics
GRM022R60J104KE15L
0.1μF ±10% 6.3V Ceramic Capacitor X5R 01005</description>
<gates>
<gate name="G$1" symbol="0U1_CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FOOTPRINT_01005">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22038836/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FPCHEADER">
<gates>
<gate name="G$1" symbol="FPCHEADER" x="5.08" y="12.7"/>
</gates>
<devices>
<device name="" package="FPCHEADER">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26943/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VDD" urn="urn:adsk.eagle:component:26970/1" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="BGM220S" deviceset="BGM220SC22HNA" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U$6" library="BGM220S" deviceset="REF3318" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U$5" library="BGM220S" deviceset="2450AT18A100" device=""/>
<part name="U$9" library="BGM220S" deviceset="1U_CAPACITOR" device=""/>
<part name="U$10" library="BGM220S" deviceset="1U_CAPACITOR" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="R1" library="BGM220S" deviceset="LED" device="RC0402N-L"/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="VDD3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="VDD4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$25" library="BGM220S" deviceset="22OHMRESISTOR" device=""/>
<part name="GND13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="VDD5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$7" library="BGM220S" deviceset="CR1025HOLDER" device="CR1025_3"/>
<part name="C1" library="BGM220S" deviceset="GRM31CC80G227ME11L" device=""/>
<part name="U1" library="BGM220S" deviceset="BMA490L" device=""/>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$2" library="BGM220S" deviceset="0U1_CAPACITOR" device="" package3d_urn="urn:adsk.eagle:package:22038836/1"/>
<part name="U$3" library="BGM220S" deviceset="0U1_CAPACITOR" device="" package3d_urn="urn:adsk.eagle:package:22038836/1"/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U$4" library="BGM220S" deviceset="FPCHEADER" device=""/>
<part name="VDD2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="-149.86" y1="116.84" x2="182.88" y2="116.84" width="0.1524" layer="95"/>
<wire x1="182.88" y1="116.84" x2="182.88" y2="-91.44" width="0.1524" layer="95"/>
<wire x1="182.88" y1="-91.44" x2="-149.86" y2="-91.44" width="0.1524" layer="95"/>
<wire x1="-149.86" y1="-91.44" x2="-149.86" y2="116.84" width="0.1524" layer="95"/>
<text x="-137.16" y="91.44" size="17.78" layer="95">External Antenna 10mm</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-27.94" y="17.78" smashed="yes"/>
<instance part="GND1" gate="1" x="-43.18" y="12.7" smashed="yes" rot="R270">
<attribute name="VALUE" x="-45.72" y="15.24" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="U$6" gate="G$1" x="96.52" y="50.8" smashed="yes"/>
<instance part="GND4" gate="1" x="83.82" y="43.18" smashed="yes">
<attribute name="VALUE" x="81.28" y="40.64" size="1.778" layer="96"/>
</instance>
<instance part="U$5" gate="G$1" x="-66.04" y="30.48" smashed="yes"/>
<instance part="U$9" gate="G$1" x="86.36" y="50.8" smashed="yes" rot="R90"/>
<instance part="U$10" gate="G$1" x="116.84" y="48.26" smashed="yes" rot="R90"/>
<instance part="GND8" gate="1" x="114.3" y="40.64" smashed="yes">
<attribute name="VALUE" x="111.76" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="A" x="-86.36" y="-10.16" smashed="yes" rot="R180"/>
<instance part="GND10" gate="1" x="-50.8" y="-10.16" smashed="yes" rot="R90">
<attribute name="VALUE" x="-48.26" y="-12.7" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD3" gate="G$1" x="-81.28" y="68.58" smashed="yes">
<attribute name="VALUE" x="-83.82" y="66.04" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND11" gate="1" x="-63.5" y="63.5" smashed="yes" rot="R90">
<attribute name="VALUE" x="-60.96" y="60.96" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD4" gate="G$1" x="53.34" y="-7.62" smashed="yes">
<attribute name="VALUE" x="50.8" y="-10.16" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="U$25" gate="G$1" x="-71.12" y="-10.16" smashed="yes"/>
<instance part="GND13" gate="1" x="-7.62" y="48.26" smashed="yes" rot="R180">
<attribute name="VALUE" x="-5.08" y="50.8" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND5" gate="1" x="137.16" y="-22.86" smashed="yes" rot="R90">
<attribute name="VALUE" x="139.7" y="-25.4" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND7" gate="1" x="134.62" y="-35.56" smashed="yes">
<attribute name="VALUE" x="132.08" y="-38.1" size="1.778" layer="96"/>
</instance>
<instance part="GND12" gate="1" x="-20.32" y="-66.04" smashed="yes" rot="R270">
<attribute name="VALUE" x="-22.86" y="-63.5" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD5" gate="G$1" x="-27.94" y="-60.96" smashed="yes" rot="R90">
<attribute name="VALUE" x="-25.4" y="-63.5" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="U$7" gate="G$1" x="12.7" y="-60.96" smashed="yes"/>
<instance part="C1" gate="G$1" x="-73.66" y="63.5" smashed="yes">
<attribute name="NAME" x="-73.66" y="67.31" size="1.778" layer="95"/>
<attribute name="VALUE" x="-73.66" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="U1" gate="G$1" x="116.84" y="-12.7" smashed="yes">
<attribute name="NAME" x="106.68" y="3.302" size="1.778" layer="95"/>
<attribute name="VALUE" x="106.68" y="-30.48" size="1.778" layer="96"/>
</instance>
<instance part="VDD1" gate="G$1" x="152.4" y="-2.54" smashed="yes" rot="R270">
<attribute name="VALUE" x="149.86" y="0" size="1.778" layer="96"/>
</instance>
<instance part="U$2" gate="G$1" x="149.86" y="-10.16" smashed="yes" rot="R90"/>
<instance part="U$3" gate="G$1" x="137.16" y="5.08" smashed="yes" rot="R90"/>
<instance part="GND2" gate="1" x="134.62" y="17.78" smashed="yes" rot="R180">
<attribute name="VALUE" x="137.16" y="20.32" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND3" gate="1" x="147.32" y="-20.32" smashed="yes">
<attribute name="VALUE" x="144.78" y="-22.86" size="1.778" layer="96"/>
</instance>
<instance part="U$4" gate="G$1" x="-121.92" y="-68.58" smashed="yes" rot="R180"/>
<instance part="VDD2" gate="G$1" x="-109.22" y="-68.58" smashed="yes" rot="R270">
<attribute name="VALUE" x="-111.76" y="-66.04" size="1.778" layer="96"/>
</instance>
<instance part="GND6" gate="1" x="-101.6" y="-63.5" smashed="yes" rot="R90">
<attribute name="VALUE" x="-99.06" y="-66.04" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND4"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-33.02" y1="12.7" x2="-40.64" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND5"/>
<wire x1="-33.02" y1="7.62" x2="-33.02" y2="12.7" width="0.1524" layer="91"/>
<junction x="-33.02" y="12.7"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="P$1"/>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="83.82" y1="45.72" x2="91.44" y2="45.72" width="0.1524" layer="91"/>
<wire x1="91.44" y1="45.72" x2="91.44" y2="53.34" width="0.1524" layer="91"/>
<junction x="83.82" y="45.72"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="P$1"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="-66.04" y1="63.5" x2="-68.58" y2="63.5" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="U$25" gate="G$1" pin="P$2"/>
<wire x1="-53.34" y1="-10.16" x2="-55.88" y2="-10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND44"/>
<pinref part="U$1" gate="G$1" pin="GND36"/>
<wire x1="-12.7" y1="40.64" x2="-10.16" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND41"/>
<wire x1="-10.16" y1="40.64" x2="-7.62" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="40.64" x2="-5.08" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="40.64" x2="0" y2="40.64" width="0.1524" layer="91"/>
<wire x1="0" y1="40.64" x2="2.54" y2="40.64" width="0.1524" layer="91"/>
<junction x="0" y="40.64"/>
<pinref part="U$1" gate="G$1" pin="GND42"/>
<junction x="-5.08" y="40.64"/>
<pinref part="U$1" gate="G$1" pin="GND43"/>
<junction x="-10.16" y="40.64"/>
<wire x1="-7.62" y1="40.64" x2="-7.62" y2="45.72" width="0.1524" layer="91"/>
<junction x="-7.62" y="40.64"/>
<pinref part="GND13" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="GND"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="-10.16" y1="-66.04" x2="-17.78" y2="-66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="134.62" y1="-25.4" x2="132.08" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="134.62" y1="-25.4" x2="134.62" y2="-33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="U1" gate="G$1" pin="GNDIO"/>
<wire x1="134.62" y1="-22.86" x2="132.08" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="P$2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="134.62" y1="12.7" x2="134.62" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="P$1"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="147.32" y1="-15.24" x2="147.32" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="U$4" gate="G$1" pin="P$2"/>
<wire x1="-104.14" y1="-63.5" x2="-116.84" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ANT" class="0">
<segment>
<label x="-111.76" y="22.86" size="1.016" layer="95" rot="R180" xref="yes"/>
<wire x1="-66.04" y1="22.86" x2="-66.04" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="P$1"/>
<wire x1="-66.04" y1="22.86" x2="-111.76" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="RF_2G4"/>
<wire x1="-35.56" y1="17.78" x2="-33.02" y2="17.78" width="0.1524" layer="91"/>
<label x="-35.56" y="17.78" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="RESETN" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="RESETN"/>
<wire x1="7.62" y1="40.64" x2="7.62" y2="43.18" width="0.1524" layer="91"/>
<label x="7.62" y="43.18" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="P$4"/>
<wire x1="-116.84" y1="-53.34" x2="-111.76" y2="-53.34" width="0.1524" layer="91"/>
<label x="-111.76" y="-53.34" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="SWCLK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA01"/>
<wire x1="-12.7" y1="-30.48" x2="-12.7" y2="-33.02" width="0.1524" layer="91"/>
<label x="-12.7" y="-33.02" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="P$6"/>
<wire x1="-116.84" y1="-43.18" x2="-111.76" y2="-43.18" width="0.1524" layer="91"/>
<label x="-111.76" y="-43.18" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA02"/>
<wire x1="-7.62" y1="-30.48" x2="-7.62" y2="-33.02" width="0.1524" layer="91"/>
<label x="-7.62" y="-33.02" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="P$5"/>
<wire x1="-116.84" y1="-48.26" x2="-111.76" y2="-48.26" width="0.1524" layer="91"/>
<label x="-111.76" y="-48.26" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="VIN_REG" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="VIN"/>
<wire x1="91.44" y1="58.42" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
<label x="81.28" y="58.42" size="1.016" layer="95" rot="R180" xref="yes"/>
<pinref part="U$9" gate="G$1" pin="P$2"/>
<wire x1="83.82" y1="58.42" x2="81.28" y2="58.42" width="0.1524" layer="91"/>
<junction x="83.82" y="58.42"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="PC02"/>
<wire x1="43.18" y1="27.94" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
<label x="48.26" y="27.94" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="VOUT_REG" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="VOUT"/>
<wire x1="114.3" y1="55.88" x2="116.84" y2="55.88" width="0.1524" layer="91"/>
<label x="116.84" y="55.88" size="1.016" layer="95" xref="yes"/>
<pinref part="U$10" gate="G$1" pin="P$2"/>
<junction x="114.3" y="55.88"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<wire x1="132.08" y1="0" x2="134.62" y2="0" width="0.1524" layer="91"/>
<label x="137.16" y="0" size="1.016" layer="95" xref="yes"/>
<pinref part="U$3" gate="G$1" pin="P$1"/>
<wire x1="134.62" y1="0" x2="137.16" y2="0" width="0.1524" layer="91"/>
<junction x="134.62" y="0"/>
</segment>
</net>
<net name="INT1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="INT1"/>
<wire x1="132.08" y1="-12.7" x2="137.16" y2="-12.7" width="0.1524" layer="91"/>
<label x="137.16" y="-12.7" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="PA05"/>
<wire x1="12.7" y1="-30.48" x2="12.7" y2="-33.02" width="0.1524" layer="91"/>
<label x="12.7" y="-33.02" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="CS" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="!CSB"/>
<wire x1="101.6" y1="-7.62" x2="99.06" y2="-7.62" width="0.1524" layer="91"/>
<label x="99.06" y="-7.62" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="PC06"/>
<wire x1="12.7" y1="40.64" x2="12.7" y2="43.18" width="0.1524" layer="91"/>
<label x="12.7" y="43.18" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SCX"/>
<wire x1="101.6" y1="-12.7" x2="99.06" y2="-12.7" width="0.1524" layer="91"/>
<label x="99.06" y="-12.7" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="PC05"/>
<wire x1="17.78" y1="40.64" x2="17.78" y2="43.18" width="0.1524" layer="91"/>
<label x="17.78" y="43.18" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SDX"/>
<wire x1="101.6" y1="-15.24" x2="99.06" y2="-15.24" width="0.1524" layer="91"/>
<label x="99.06" y="-15.24" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="PC03"/>
<wire x1="27.94" y1="40.64" x2="27.94" y2="43.18" width="0.1524" layer="91"/>
<label x="27.94" y="43.18" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SDO"/>
<wire x1="101.6" y1="-17.78" x2="99.06" y2="-17.78" width="0.1524" layer="91"/>
<label x="99.06" y="-17.78" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="PC04"/>
<wire x1="22.86" y1="40.64" x2="22.86" y2="43.18" width="0.1524" layer="91"/>
<label x="22.86" y="43.18" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="VDD3" gate="G$1" pin="VDD"/>
<wire x1="-76.2" y1="63.5" x2="-81.28" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="63.5" x2="-81.28" y2="66.04" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="VREGVDD"/>
<wire x1="43.18" y1="-12.7" x2="45.72" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="VDD4" gate="G$1" pin="VDD"/>
<wire x1="45.72" y1="-12.7" x2="53.34" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-12.7" x2="53.34" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IOVDD"/>
<wire x1="43.18" y1="-7.62" x2="45.72" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-7.62" x2="45.72" y2="-12.7" width="0.1524" layer="91"/>
<junction x="45.72" y="-12.7"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="VDD"/>
<pinref part="VDD5" gate="G$1" pin="VDD"/>
<wire x1="-10.16" y1="-60.96" x2="-25.4" y2="-60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDDIO"/>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="132.08" y1="-2.54" x2="147.32" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="P$2"/>
<wire x1="147.32" y1="-2.54" x2="149.86" y2="-2.54" width="0.1524" layer="91"/>
<junction x="147.32" y="-2.54"/>
</segment>
<segment>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<pinref part="U$4" gate="G$1" pin="P$1"/>
<wire x1="-111.76" y1="-68.58" x2="-116.84" y2="-68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED" class="0">
<segment>
<pinref part="R1" gate="A" pin="P$2"/>
<wire x1="-99.06" y1="-10.16" x2="-101.6" y2="-10.16" width="0.1524" layer="91"/>
<label x="-101.6" y="-10.16" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="PB00"/>
<wire x1="-33.02" y1="-17.78" x2="-35.56" y2="-17.78" width="0.1524" layer="91"/>
<label x="-35.56" y="-17.78" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$25" gate="G$1" pin="P$1"/>
<pinref part="R1" gate="A" pin="P$1"/>
<wire x1="-81.28" y1="-10.16" x2="-83.82" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="INT2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="INT2"/>
<wire x1="132.08" y1="-15.24" x2="137.16" y2="-15.24" width="0.1524" layer="91"/>
<label x="137.16" y="-15.24" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
