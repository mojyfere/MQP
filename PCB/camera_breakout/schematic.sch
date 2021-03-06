<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="10" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="26" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
<library name="_hhn_con_pinhead_box_1mm27">
<description>&lt;h2&gt;Pin Header, Box-Type, 1.27mm/0.5"/50mil Pitch, THT and SMT&lt;/h2&gt;

&lt;p&gt;&lt;b&gt;Rev. 5.1.0&lt;/b&gt;&lt;br /&gt;
as of 2012-11-15, for Eagle 5+&lt;br /&gt;&lt;/p&gt;

&lt;p&gt;&lt;pre&gt;&lt;u&gt;No. of circuits:&lt;/u&gt;
2x 03|05|06|07|08|10|12|13|14|15|
   17|20|22|25|30|32|34|40|50
&lt;u&gt;Packages:&lt;/u&gt;
_S: Straight
 N: No Locking
 T: THT-Mounting | S: SMT-Mounting
&lt;u&gt;Schematic option&lt;/u&gt;
_S: Singularized pins (1 pin/gate)&lt;/pre&gt;&lt;/p&gt;
&lt;hr /&gt;

&lt;p&gt;&lt;pre&gt;&lt;b&gt;Changelog&lt;/b&gt;
5.1.0 (2012-11-15)  Packages: Pad-diameters set to 'auto' (0) &amp;ndash; see note below
                    Packages: 'First' flag set on pad no. 1
                    Symbols/Devices: All pins/gates set to swaplevel '1' to facilitate pinswap/gateswap command
5.0.0 (2012-11-11)  Initial&lt;/pre&gt;&lt;/p&gt;
&lt;hr /&gt;


&lt;p&gt;&lt;font color="grey"&gt;&lt;b&gt;Important Note regarding THT- (Thru-Hole-Technology) Version _&amp;hellip;T:&lt;/b&gt;&lt;/font&gt;&lt;p/&gt;

&lt;p&gt;&lt;font color="grey"&gt;Packages: pad-drill is set to 0.65mm (minimum value acc. to manufacturer's data sheet).
Pad-Diameter is calculated by Eagle based on drc-settings (DRC &gt; RESTRING tab). &lt;/font&gt;&lt;p/&gt;

&lt;p&gt;&lt;font color="grey"&gt;To avoid DRC erros of type 'Clearance', set 'min value' to 8mil on top, bottom, inner
in DRC &gt; RESTRING tab. This will, however, require an 8-mil process (pcb manufacturer).&lt;/font&gt;&lt;p/&gt;

&lt;p&gt;&lt;font color="grey"&gt;Other pads are affected too, so you may increase %-value in DRC &gt; RESTRING tab, e.g. to (10/8)*25% = ca. 30%
to minimize the effect on pads with a drill greater than 0.65mm (CadSoft's default.dru sets
min restring to 10mil and percentage to 25%).&lt;/font&gt;&lt;p/&gt;
 
&lt;hr /&gt;

&lt;p&gt;Author: Dipl.-Ing. FH Rainer Bayer&lt;br /&gt;
Heilbronn University: &amp;nbsp;&lt;a href="http://www.hs-heilbronn.de/rainer.bayer" target="_blank"&gt;http://www.hs-heilbronn.de/rainer.bayer&lt;/a&gt;, &amp;nbsp;&lt;a href="mailto:rainer.bayer@hs-heilbronn.de" target="_blank"&gt;rainer.bayer@hs-heilbronn.de&lt;/a&gt;&lt;br /&gt;
Engineering office ing-rb: &amp;nbsp;&lt;a href="http://www.ing-rb.de/" target="_blank"&gt;http://www.ing-rb.de/&lt;/a&gt;, &amp;nbsp;&lt;a href="mailto:eagle@ing-rb.de" target="_blank"&gt;eagle@ing-rb.de&lt;/a&gt;&lt;br /&gt;
Lectureship dozent-rb: &amp;nbsp;&lt;a href="http://www.dozent-rb.de/" target="_blank"&gt;http://www.dozent-rb.de/&lt;/a&gt;, &amp;nbsp;&lt;a href="mailto:eagle@dozent-rb.de" target="_blank"&gt;eagle@dozent-rb.de&lt;/a&gt;&lt;/pre&gt;&lt;/author&gt;&lt;/p&gt;</description>
<packages>
<package name="PHB_1MM27_2X17_SNT">
<description>&lt;p&gt;&lt;b&gt;Pin Header Box-Type, 1.27mm Pitch,  2x17 circuits, Straight, No Locking, THT&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;&lt;u&gt;Important Note&lt;/u&gt; regarding to THT-versions: see description of library&lt;p&gt;</description>
<wire x1="1.2" y1="-2.625" x2="14.195" y2="-2.625" width="0.1016" layer="21"/>
<wire x1="14.195" y1="-2.625" x2="14.195" y2="2.625" width="0.1016" layer="21"/>
<wire x1="14.195" y1="2.625" x2="-14.195" y2="2.625" width="0.1016" layer="21"/>
<wire x1="-14.195" y1="2.625" x2="-14.195" y2="-2.625" width="0.1016" layer="21"/>
<wire x1="-13.17" y1="-1.75" x2="-1.2" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="1.2" y1="-1.75" x2="13.17" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="13.17" y1="-1.75" x2="13.17" y2="1.75" width="0.1016" layer="21"/>
<wire x1="13.17" y1="1.75" x2="-13.17" y2="1.75" width="0.1016" layer="21"/>
<wire x1="-13.17" y1="1.75" x2="-13.17" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="-14.195" y1="-2.625" x2="-1.2" y2="-2.625" width="0.1016" layer="21"/>
<wire x1="-1.2" y1="-2.625" x2="1.2" y2="-2.625" width="0.1016" layer="21"/>
<wire x1="1.2" y1="-2.625" x2="1.2" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="-1.2" y1="-1.75" x2="-1.2" y2="-2.625" width="0.1016" layer="21"/>
<wire x1="-14.3669" y1="2.7781" x2="14.3669" y2="2.7781" width="0.1016" layer="39"/>
<wire x1="14.3669" y1="2.7781" x2="14.3669" y2="-2.7781" width="0.1016" layer="39"/>
<wire x1="14.3669" y1="-2.7781" x2="-14.3669" y2="-2.7781" width="0.1016" layer="39"/>
<wire x1="-14.3669" y1="-2.7781" x2="-14.3669" y2="2.7781" width="0.1016" layer="39"/>
<pad name="6" x="-7.62" y="0.635" drill="0.65"/>
<pad name="5" x="-7.62" y="-0.635" drill="0.65"/>
<pad name="8" x="-6.35" y="0.635" drill="0.65"/>
<pad name="7" x="-6.35" y="-0.635" drill="0.65"/>
<pad name="10" x="-5.08" y="0.635" drill="0.65"/>
<pad name="9" x="-5.08" y="-0.635" drill="0.65"/>
<pad name="4" x="-8.89" y="0.635" drill="0.65"/>
<pad name="3" x="-8.89" y="-0.635" drill="0.65"/>
<pad name="2" x="-10.16" y="0.635" drill="0.65"/>
<pad name="1" x="-10.16" y="-0.635" drill="0.65" first="yes"/>
<pad name="12" x="-3.81" y="0.635" drill="0.65"/>
<pad name="14" x="-2.54" y="0.635" drill="0.65"/>
<pad name="16" x="-1.27" y="0.635" drill="0.65"/>
<pad name="18" x="0" y="0.635" drill="0.65"/>
<pad name="20" x="1.27" y="0.635" drill="0.65"/>
<pad name="22" x="2.54" y="0.635" drill="0.65"/>
<pad name="24" x="3.81" y="0.635" drill="0.65"/>
<pad name="26" x="5.08" y="0.635" drill="0.65"/>
<pad name="28" x="6.35" y="0.635" drill="0.65"/>
<pad name="30" x="7.62" y="0.635" drill="0.65"/>
<pad name="32" x="8.89" y="0.635" drill="0.65"/>
<pad name="34" x="10.16" y="0.635" drill="0.65"/>
<pad name="11" x="-3.81" y="-0.635" drill="0.65"/>
<pad name="13" x="-2.54" y="-0.635" drill="0.65"/>
<pad name="15" x="-1.27" y="-0.635" drill="0.65"/>
<pad name="17" x="0" y="-0.635" drill="0.65"/>
<pad name="19" x="1.27" y="-0.635" drill="0.65"/>
<pad name="21" x="2.54" y="-0.635" drill="0.65"/>
<pad name="23" x="3.81" y="-0.635" drill="0.65"/>
<pad name="25" x="5.08" y="-0.635" drill="0.65"/>
<pad name="27" x="6.35" y="-0.635" drill="0.65"/>
<pad name="29" x="7.62" y="-0.635" drill="0.65"/>
<pad name="31" x="8.89" y="-0.635" drill="0.65"/>
<pad name="33" x="10.16" y="-0.635" drill="0.65"/>
<text x="-11.6681" y="-1.0319" size="0.8128" layer="21" ratio="9">1</text>
<text x="-11.7475" y="0.2381" size="0.8128" layer="21" ratio="9">2</text>
<text x="-14.2081" y="2.9369" size="1.27" layer="25" ratio="9">&gt;NAME</text>
<text x="14.6844" y="4.2068" size="1.27" layer="27" ratio="9" rot="R180">&gt;VALUE</text>
<rectangle x1="2.34" y1="0.435" x2="2.74" y2="0.835" layer="51"/>
<rectangle x1="2.34" y1="-0.835" x2="2.74" y2="-0.435" layer="51"/>
<rectangle x1="3.61" y1="0.435" x2="4.01" y2="0.835" layer="51"/>
<rectangle x1="3.61" y1="-0.835" x2="4.01" y2="-0.435" layer="51"/>
<rectangle x1="4.88" y1="0.435" x2="5.28" y2="0.835" layer="51"/>
<rectangle x1="4.88" y1="-0.835" x2="5.28" y2="-0.435" layer="51"/>
<rectangle x1="6.15" y1="0.435" x2="6.55" y2="0.835" layer="51"/>
<rectangle x1="6.15" y1="-0.835" x2="6.55" y2="-0.435" layer="51"/>
<rectangle x1="7.42" y1="0.435" x2="7.82" y2="0.835" layer="51"/>
<rectangle x1="7.42" y1="-0.835" x2="7.82" y2="-0.435" layer="51"/>
<rectangle x1="-10.36" y1="0.435" x2="-9.96" y2="0.835" layer="51"/>
<rectangle x1="-9.09" y1="0.435" x2="-8.69" y2="0.835" layer="51"/>
<rectangle x1="-7.82" y1="0.435" x2="-7.42" y2="0.835" layer="51"/>
<rectangle x1="-6.55" y1="0.435" x2="-6.15" y2="0.835" layer="51"/>
<rectangle x1="-5.28" y1="0.435" x2="-4.88" y2="0.835" layer="51"/>
<rectangle x1="-4.01" y1="0.435" x2="-3.61" y2="0.835" layer="51"/>
<rectangle x1="-2.74" y1="0.435" x2="-2.34" y2="0.835" layer="51"/>
<rectangle x1="-1.47" y1="0.435" x2="-1.07" y2="0.835" layer="51"/>
<rectangle x1="-0.2" y1="0.435" x2="0.2" y2="0.835" layer="51"/>
<rectangle x1="1.07" y1="0.435" x2="1.47" y2="0.835" layer="51"/>
<rectangle x1="-10.36" y1="-0.835" x2="-9.96" y2="-0.435" layer="51"/>
<rectangle x1="-9.09" y1="-0.835" x2="-8.69" y2="-0.435" layer="51"/>
<rectangle x1="-7.82" y1="-0.835" x2="-7.42" y2="-0.435" layer="51"/>
<rectangle x1="-6.55" y1="-0.835" x2="-6.15" y2="-0.435" layer="51"/>
<rectangle x1="-5.28" y1="-0.835" x2="-4.88" y2="-0.435" layer="51"/>
<rectangle x1="-4.01" y1="-0.835" x2="-3.61" y2="-0.435" layer="51"/>
<rectangle x1="-2.74" y1="-0.835" x2="-2.34" y2="-0.435" layer="51"/>
<rectangle x1="-1.47" y1="-0.835" x2="-1.07" y2="-0.435" layer="51"/>
<rectangle x1="-0.2" y1="-0.835" x2="0.2" y2="-0.435" layer="51"/>
<rectangle x1="1.07" y1="-0.835" x2="1.47" y2="-0.435" layer="51"/>
<rectangle x1="8.69" y1="0.435" x2="9.09" y2="0.835" layer="51"/>
<rectangle x1="9.96" y1="0.435" x2="10.36" y2="0.835" layer="51"/>
<rectangle x1="8.69" y1="-0.835" x2="9.09" y2="-0.435" layer="51"/>
<rectangle x1="9.96" y1="-0.835" x2="10.36" y2="-0.435" layer="51"/>
<polygon width="0.1016" layer="21">
<vertex x="-10.16" y="-2.6194"/>
<vertex x="-10.4775" y="-3.2544"/>
<vertex x="-9.8425" y="-3.2544"/>
</polygon>
</package>
<package name="PHB_1MM27_2X17_SNS">
<description>&lt;p&gt;&lt;b&gt;Pin Header Box-Type, 1.27mm Pitch,  2x17 circuits, Straight, No Locking, SMT&lt;/b&gt;&lt;/p&gt;</description>
<wire x1="14.195" y1="-2.625" x2="14.195" y2="2.625" width="0.1016" layer="21"/>
<wire x1="-14.195" y1="2.625" x2="-14.195" y2="-2.625" width="0.1016" layer="21"/>
<wire x1="13.17" y1="-1.75" x2="13.17" y2="1.75" width="0.1016" layer="21"/>
<wire x1="-13.17" y1="1.75" x2="-13.17" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="-1.2" y1="-2.625" x2="1.2" y2="-2.625" width="0.1016" layer="51"/>
<wire x1="1.2" y1="-2.625" x2="1.2" y2="-1.75" width="0.1016" layer="51"/>
<wire x1="-1.2" y1="-1.75" x2="-1.2" y2="-2.625" width="0.1016" layer="51"/>
<wire x1="-11.7475" y1="-2.8575" x2="-14.4463" y2="-2.8575" width="0.1016" layer="39"/>
<wire x1="-14.4463" y1="-2.8575" x2="-14.4463" y2="2.8575" width="0.1016" layer="39"/>
<wire x1="-14.4463" y1="2.8575" x2="-11.1125" y2="2.8575" width="0.1016" layer="39"/>
<wire x1="-11.1125" y1="2.8575" x2="-11.1125" y2="3.81" width="0.1016" layer="39"/>
<wire x1="-11.1125" y1="3.81" x2="11.1125" y2="3.81" width="0.1016" layer="39"/>
<wire x1="11.1125" y1="3.81" x2="11.1125" y2="2.8575" width="0.1016" layer="39"/>
<wire x1="11.1125" y1="2.8575" x2="14.4463" y2="2.8575" width="0.1016" layer="39"/>
<wire x1="14.4463" y1="2.8575" x2="14.4463" y2="-2.8575" width="0.1016" layer="39"/>
<wire x1="14.4463" y1="-2.8575" x2="11.1126" y2="-2.8575" width="0.1016" layer="39"/>
<wire x1="11.1126" y1="-2.8575" x2="11.1126" y2="-3.81" width="0.1016" layer="39"/>
<wire x1="11.1126" y1="-3.81" x2="-11.7475" y2="-3.81" width="0.1016" layer="39"/>
<wire x1="-11.7475" y1="-3.81" x2="-11.7475" y2="-2.8575" width="0.1016" layer="39"/>
<wire x1="-11.005" y1="2.625" x2="-14.195" y2="2.625" width="0.1016" layer="21"/>
<wire x1="11.02" y1="2.625" x2="-11.02" y2="2.625" width="0.1016" layer="51"/>
<wire x1="14.195" y1="2.625" x2="11.005" y2="2.625" width="0.1016" layer="21"/>
<wire x1="-11.03" y1="-1.75" x2="-1.2" y2="-1.75" width="0.1016" layer="51"/>
<wire x1="1.2" y1="-1.75" x2="11.03" y2="-1.75" width="0.1016" layer="51"/>
<wire x1="-13.17" y1="-1.75" x2="-11.01" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="11.01" y1="-1.75" x2="13.17" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="11.03" y1="1.75" x2="-11.03" y2="1.75" width="0.1016" layer="51"/>
<wire x1="-11.03" y1="1.75" x2="-13.17" y2="1.75" width="0.1016" layer="21"/>
<wire x1="13.17" y1="1.75" x2="11.01" y2="1.75" width="0.1016" layer="21"/>
<wire x1="-11.045" y1="-2.625" x2="-1.2" y2="-2.625" width="0.1016" layer="51"/>
<wire x1="1.2" y1="-2.625" x2="11.045" y2="-2.625" width="0.1016" layer="51"/>
<wire x1="-14.195" y1="-2.625" x2="-11.03" y2="-2.625" width="0.1016" layer="21"/>
<wire x1="11.01" y1="-2.625" x2="14.195" y2="-2.625" width="0.1016" layer="21"/>
<smd name="6" x="-7.62" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="5" x="-7.62" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="8" x="-6.35" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="7" x="-6.35" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="9" x="-5.08" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="10" x="-5.08" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="2" x="-10.16" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="1" x="-10.16" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="3" x="-8.89" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="4" x="-8.89" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="11" x="-3.81" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="12" x="-3.81" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="13" x="-2.54" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="14" x="-2.54" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="15" x="-1.27" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="16" x="-1.27" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="17" x="0" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="18" x="0" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="19" x="1.27" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="20" x="1.27" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="21" x="2.54" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="22" x="2.54" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="23" x="3.81" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="24" x="3.81" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="25" x="5.08" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="26" x="5.08" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="27" x="6.35" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="28" x="6.35" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="29" x="7.62" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="30" x="7.62" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="31" x="8.89" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="32" x="8.89" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="33" x="10.16" y="-1.85" dx="0.76" dy="2.8" layer="1"/>
<smd name="34" x="10.16" y="1.85" dx="0.76" dy="2.8" layer="1"/>
<text x="-11.6681" y="-1.0319" size="0.8128" layer="21" ratio="9">1</text>
<text x="-11.7475" y="0.2381" size="0.8128" layer="21" ratio="9">2</text>
<text x="-14.2081" y="3.4949" size="1.27" layer="25" ratio="9">&gt;NAME</text>
<text x="14.6844" y="4.7648" size="1.27" layer="27" ratio="9" rot="R180">&gt;VALUE</text>
<rectangle x1="-10.36" y1="0.435" x2="-9.96" y2="0.835" layer="51"/>
<rectangle x1="-10.36" y1="-0.835" x2="-9.96" y2="-0.435" layer="51"/>
<rectangle x1="-9.09" y1="0.435" x2="-8.69" y2="0.835" layer="51"/>
<rectangle x1="-9.09" y1="-0.835" x2="-8.69" y2="-0.435" layer="51"/>
<rectangle x1="-7.82" y1="0.435" x2="-7.42" y2="0.835" layer="51"/>
<rectangle x1="-7.82" y1="-0.835" x2="-7.42" y2="-0.435" layer="51"/>
<rectangle x1="-6.55" y1="0.435" x2="-6.15" y2="0.835" layer="51"/>
<rectangle x1="-6.55" y1="-0.835" x2="-6.15" y2="-0.435" layer="51"/>
<rectangle x1="-5.28" y1="0.435" x2="-4.88" y2="0.835" layer="51"/>
<rectangle x1="-5.28" y1="-0.835" x2="-4.88" y2="-0.435" layer="51"/>
<rectangle x1="-4.01" y1="0.435" x2="-3.61" y2="0.835" layer="51"/>
<rectangle x1="-4.01" y1="-0.835" x2="-3.61" y2="-0.435" layer="51"/>
<rectangle x1="-2.74" y1="0.435" x2="-2.34" y2="0.835" layer="51"/>
<rectangle x1="-2.74" y1="-0.835" x2="-2.34" y2="-0.435" layer="51"/>
<rectangle x1="-1.47" y1="0.435" x2="-1.07" y2="0.835" layer="51"/>
<rectangle x1="-1.47" y1="-0.835" x2="-1.07" y2="-0.435" layer="51"/>
<rectangle x1="-0.2" y1="0.435" x2="0.2" y2="0.835" layer="51"/>
<rectangle x1="-0.2" y1="-0.835" x2="0.2" y2="-0.435" layer="51"/>
<rectangle x1="1.07" y1="0.435" x2="1.47" y2="0.835" layer="51"/>
<rectangle x1="1.07" y1="-0.835" x2="1.47" y2="-0.435" layer="51"/>
<rectangle x1="2.34" y1="0.435" x2="2.74" y2="0.835" layer="51"/>
<rectangle x1="2.34" y1="-0.835" x2="2.74" y2="-0.435" layer="51"/>
<rectangle x1="3.61" y1="0.435" x2="4.01" y2="0.835" layer="51"/>
<rectangle x1="3.61" y1="-0.835" x2="4.01" y2="-0.435" layer="51"/>
<rectangle x1="4.88" y1="0.435" x2="5.28" y2="0.835" layer="51"/>
<rectangle x1="4.88" y1="-0.835" x2="5.28" y2="-0.435" layer="51"/>
<rectangle x1="6.15" y1="0.435" x2="6.55" y2="0.835" layer="51"/>
<rectangle x1="6.15" y1="-0.835" x2="6.55" y2="-0.435" layer="51"/>
<rectangle x1="7.42" y1="0.435" x2="7.82" y2="0.835" layer="51"/>
<rectangle x1="7.42" y1="-0.835" x2="7.82" y2="-0.435" layer="51"/>
<rectangle x1="8.69" y1="0.435" x2="9.09" y2="0.835" layer="51"/>
<rectangle x1="8.69" y1="-0.835" x2="9.09" y2="-0.435" layer="51"/>
<rectangle x1="9.96" y1="0.435" x2="10.36" y2="0.835" layer="51"/>
<rectangle x1="9.96" y1="-0.835" x2="10.36" y2="-0.435" layer="51"/>
<polygon width="0.1016" layer="21">
<vertex x="-10.7982" y="-2.9464"/>
<vertex x="-11.4332" y="-2.6289"/>
<vertex x="-11.4332" y="-3.2639"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="2X17M">
<wire x1="3.81" y1="-21.59" x2="-3.81" y2="-21.59" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="21.59" x2="-3.81" y2="-21.59" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-21.59" x2="3.81" y2="21.59" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-15.24" x2="-1.27" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="-1.27" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-1.27" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="3.81" y1="21.59" x2="-3.81" y2="21.59" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="-1.27" y2="15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-1.27" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="-1.27" y2="20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-1.27" y2="17.78" width="0.6096" layer="94"/>
<text x="-3.81" y="-23.876" size="1.6764" layer="96">&gt;VALUE</text>
<text x="-3.81" y="22.098" size="1.6764" layer="95" ratio="12">&gt;NAME</text>
<pin name="1" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="17" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="19" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="21" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="22" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="23" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="24" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="25" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="26" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="27" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="28" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="29" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="30" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="31" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="32" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="33" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="34" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PHB_1MM27_2X17_*" prefix="X">
<description>&lt;p&gt;&lt;b&gt;Pin Header Box-Type, 1.27mm/0.5"/50mil Pitch, 2x17 Circuits&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;&lt;u&gt;Note:&lt;/u&gt; see library description for an important note about THT-version&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="2X17M" x="0" y="0"/>
</gates>
<devices>
<device name="SNT" package="PHB_1MM27_2X17_SNT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SNS" package="PHB_1MM27_2X17_SNS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="LETTER_L">
<frame x1="0" y1="0" x2="248.92" y2="185.42" columns="12" rows="17" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LETTER_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
LETTER landscape</description>
<gates>
<gate name="G$1" symbol="LETTER_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="147.32" y="0" addlevel="must"/>
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
<library name="supply1">
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
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
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
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
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
<library name="con-lsta">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE06-2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-2.413" x2="7.62" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.413" x2="-7.62" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="2.413" x2="-6.985" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.985" y1="3.048" x2="7.62" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.985" y1="-3.048" x2="7.62" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.62" y1="-2.413" x2="-6.985" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<circle x="-6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-6.35" y="1.27" drill="0.9144"/>
<pad name="2" x="-6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<text x="-2.54" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.858" y="3.429" size="1.27" layer="21" ratio="10">1</text>
<text x="5.334" y="-4.699" size="1.27" layer="21" ratio="10">12</text>
<text x="-7.62" y="-4.699" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="FE06-2">
<wire x1="3.81" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="-1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-5.715" x2="-1.905" y2="-4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="6.985" x2="-1.905" y2="8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-3.81" y1="10.16" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE06-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE06-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE06-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2021">
<description>.100" (2.54mm) Center Headers - 2 Pin</description>
<wire x1="-2.54" y1="3.175" x2="2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="-2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<text x="-2.54" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2021" prefix="X">
<description>.100" (2.54mm) Center Header - 2 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2021">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2021" constant="no"/>
<attribute name="OC_FARNELL" value="1462926" constant="no"/>
<attribute name="OC_NEWARK" value="25C3832" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA03-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-1.27" drill="1.016"/>
<pad name="3" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<text x="-3.175" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.81" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="4.064" y="0.635" size="1.27" layer="21" ratio="10">6</text>
<text x="-1.27" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA03-2">
<wire x1="3.81" y1="-5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<text x="-3.81" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA03-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA03-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA03-2">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
<package name="1X01">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="octagon"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD1">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-6.35" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X1" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X01">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
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
<part name="CAMERA1" library="_hhn_con_pinhead_box_1mm27" deviceset="PHB_1MM27_2X17_*" device="SNT" value="MT9V034"/>
<part name="FRAME1" library="frames" deviceset="LETTER_L" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device="" value="+1.8V"/>
<part name="P+3" library="supply1" deviceset="+5V" device="" value="+2.8V"/>
<part name="TRIGGER" library="supply1" deviceset="+5V" device="" value="Trigger"/>
<part name="DATA" library="con-lsta" deviceset="FE06-2" device=""/>
<part name="POWER" library="con-molex" deviceset="22-23-2021" device="" value="MAIN"/>
<part name="PWR2" library="con-molex" deviceset="22-23-2021" device="" value="NC"/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device="" value="+1.8V"/>
<part name="P+6" library="supply1" deviceset="+5V" device="" value="+2.8V"/>
<part name="CONTROL" library="con-lstb" deviceset="MA03-2" device=""/>
<part name="SERIAL" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="TRIGGER1" library="supply1" deviceset="+5V" device="" value="Trigger"/>
<part name="TRIG" library="pinhead" deviceset="PINHD-1X1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="134.62" y="73.66" size="1.778" layer="91">CCD_Data pins left
unconnected</text>
</plain>
<instances>
<instance part="CAMERA1" gate="G$1" x="139.7" y="104.14"/>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="147.32" y="0"/>
<instance part="P+1" gate="VCC" x="187.96" y="114.3" rot="R270"/>
<instance part="GND1" gate="1" x="124.46" y="71.12"/>
<instance part="P+2" gate="1" x="116.84" y="119.38" rot="R90"/>
<instance part="P+3" gate="1" x="116.84" y="104.14" rot="R90"/>
<instance part="TRIGGER" gate="1" x="109.22" y="109.22" rot="R90"/>
<instance part="DATA" gate="G$1" x="205.74" y="73.66" rot="R180"/>
<instance part="POWER" gate="-1" x="48.26" y="129.54" rot="R180"/>
<instance part="POWER" gate="-2" x="48.26" y="132.08" rot="R180"/>
<instance part="PWR2" gate="-1" x="48.26" y="109.22" rot="R180"/>
<instance part="PWR2" gate="-2" x="48.26" y="111.76" rot="R180"/>
<instance part="GND2" gate="1" x="58.42" y="124.46"/>
<instance part="P+4" gate="VCC" x="58.42" y="137.16"/>
<instance part="P+5" gate="1" x="55.88" y="116.84"/>
<instance part="P+6" gate="1" x="63.5" y="114.3"/>
<instance part="CONTROL" gate="1" x="127" y="152.4"/>
<instance part="SERIAL" gate="G$1" x="83.82" y="91.44" rot="R180"/>
<instance part="TRIGGER1" gate="1" x="66.04" y="154.94" rot="R270"/>
<instance part="TRIG" gate="G$1" x="35.56" y="154.94" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="26"/>
<wire x1="132.08" y1="114.3" x2="127" y2="114.3" width="0.1524" layer="91"/>
<wire x1="127" y1="114.3" x2="127" y2="134.62" width="0.1524" layer="91"/>
<wire x1="127" y1="134.62" x2="160.02" y2="134.62" width="0.1524" layer="91"/>
<wire x1="160.02" y1="134.62" x2="160.02" y2="114.3" width="0.1524" layer="91"/>
<pinref part="CAMERA1" gate="G$1" pin="25"/>
<wire x1="160.02" y1="114.3" x2="147.32" y2="114.3" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="160.02" y1="114.3" x2="185.42" y2="114.3" width="0.1524" layer="91"/>
<junction x="160.02" y="114.3"/>
</segment>
<segment>
<pinref part="POWER" gate="-2" pin="S"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="50.8" y1="132.08" x2="58.42" y2="132.08" width="0.1524" layer="91"/>
<wire x1="58.42" y1="132.08" x2="58.42" y2="134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="4"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="132.08" y1="86.36" x2="124.46" y2="86.36" width="0.1524" layer="91"/>
<wire x1="124.46" y1="86.36" x2="124.46" y2="73.66" width="0.1524" layer="91"/>
<junction x="124.46" y="86.36"/>
<pinref part="CAMERA1" gate="G$1" pin="14"/>
<wire x1="132.08" y1="99.06" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<wire x1="124.46" y1="99.06" x2="124.46" y2="86.36" width="0.1524" layer="91"/>
<pinref part="CAMERA1" gate="G$1" pin="20"/>
<wire x1="132.08" y1="106.68" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<wire x1="124.46" y1="106.68" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<junction x="124.46" y="99.06"/>
<junction x="124.46" y="106.68"/>
<wire x1="124.46" y1="106.68" x2="124.46" y2="116.84" width="0.1524" layer="91"/>
<pinref part="CAMERA1" gate="G$1" pin="28"/>
<wire x1="132.08" y1="116.84" x2="124.46" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="POWER" gate="-1" pin="S"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="50.8" y1="129.54" x2="58.42" y2="129.54" width="0.1524" layer="91"/>
<wire x1="58.42" y1="129.54" x2="58.42" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="1.8V" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="32"/>
<wire x1="132.08" y1="121.92" x2="124.46" y2="121.92" width="0.1524" layer="91"/>
<wire x1="124.46" y1="121.92" x2="124.46" y2="119.38" width="0.1524" layer="91"/>
<pinref part="CAMERA1" gate="G$1" pin="30"/>
<wire x1="124.46" y1="119.38" x2="132.08" y2="119.38" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="119.38" y1="119.38" x2="124.46" y2="119.38" width="0.1524" layer="91"/>
<junction x="124.46" y="119.38"/>
</segment>
<segment>
<pinref part="PWR2" gate="-2" pin="S"/>
<pinref part="P+5" gate="1" pin="+5V"/>
<wire x1="50.8" y1="111.76" x2="55.88" y2="111.76" width="0.1524" layer="91"/>
<wire x1="55.88" y1="111.76" x2="55.88" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TRIGGER" class="0">
<segment>
<pinref part="TRIGGER" gate="1" pin="+5V"/>
<pinref part="CAMERA1" gate="G$1" pin="22"/>
<wire x1="111.76" y1="109.22" x2="132.08" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TRIG" gate="G$1" pin="1"/>
<pinref part="TRIGGER1" gate="1" pin="+5V"/>
<wire x1="38.1" y1="154.94" x2="63.5" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="2.8V" class="0">
<segment>
<pinref part="P+3" gate="1" pin="+5V"/>
<pinref part="CAMERA1" gate="G$1" pin="18"/>
<wire x1="119.38" y1="104.14" x2="132.08" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PWR2" gate="-1" pin="S"/>
<pinref part="P+6" gate="1" pin="+5V"/>
<wire x1="50.8" y1="109.22" x2="63.5" y2="109.22" width="0.1524" layer="91"/>
<wire x1="63.5" y1="109.22" x2="63.5" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="23"/>
<pinref part="DATA" gate="G$1" pin="1"/>
<wire x1="147.32" y1="111.76" x2="213.36" y2="111.76" width="0.1524" layer="91"/>
<wire x1="213.36" y1="111.76" x2="213.36" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="21"/>
<wire x1="147.32" y1="109.22" x2="185.42" y2="109.22" width="0.1524" layer="91"/>
<wire x1="185.42" y1="109.22" x2="185.42" y2="78.74" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="2"/>
<wire x1="185.42" y1="78.74" x2="198.12" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="19"/>
<wire x1="147.32" y1="106.68" x2="215.9" y2="106.68" width="0.1524" layer="91"/>
<wire x1="215.9" y1="106.68" x2="215.9" y2="76.2" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="3"/>
<wire x1="215.9" y1="76.2" x2="213.36" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="17"/>
<wire x1="147.32" y1="104.14" x2="182.88" y2="104.14" width="0.1524" layer="91"/>
<wire x1="182.88" y1="104.14" x2="182.88" y2="76.2" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="4"/>
<wire x1="182.88" y1="76.2" x2="198.12" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="15"/>
<wire x1="147.32" y1="101.6" x2="218.44" y2="101.6" width="0.1524" layer="91"/>
<wire x1="218.44" y1="101.6" x2="218.44" y2="73.66" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="5"/>
<wire x1="218.44" y1="73.66" x2="213.36" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="13"/>
<wire x1="147.32" y1="99.06" x2="180.34" y2="99.06" width="0.1524" layer="91"/>
<wire x1="180.34" y1="99.06" x2="180.34" y2="73.66" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="6"/>
<wire x1="180.34" y1="73.66" x2="198.12" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="11"/>
<wire x1="147.32" y1="96.52" x2="220.98" y2="96.52" width="0.1524" layer="91"/>
<wire x1="220.98" y1="96.52" x2="220.98" y2="71.12" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="7"/>
<wire x1="220.98" y1="71.12" x2="213.36" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="9"/>
<wire x1="147.32" y1="93.98" x2="177.8" y2="93.98" width="0.1524" layer="91"/>
<wire x1="177.8" y1="93.98" x2="177.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="8"/>
<wire x1="177.8" y1="71.12" x2="198.12" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="7"/>
<wire x1="147.32" y1="91.44" x2="223.52" y2="91.44" width="0.1524" layer="91"/>
<wire x1="223.52" y1="91.44" x2="223.52" y2="68.58" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="9"/>
<wire x1="223.52" y1="68.58" x2="213.36" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="5"/>
<wire x1="147.32" y1="88.9" x2="175.26" y2="88.9" width="0.1524" layer="91"/>
<wire x1="175.26" y1="88.9" x2="175.26" y2="68.58" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="10"/>
<wire x1="175.26" y1="68.58" x2="198.12" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="3"/>
<wire x1="147.32" y1="86.36" x2="226.06" y2="86.36" width="0.1524" layer="91"/>
<wire x1="226.06" y1="86.36" x2="226.06" y2="66.04" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="11"/>
<wire x1="226.06" y1="66.04" x2="213.36" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="1"/>
<wire x1="147.32" y1="83.82" x2="172.72" y2="83.82" width="0.1524" layer="91"/>
<wire x1="172.72" y1="83.82" x2="172.72" y2="66.04" width="0.1524" layer="91"/>
<pinref part="DATA" gate="G$1" pin="12"/>
<wire x1="172.72" y1="66.04" x2="198.12" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="12"/>
<wire x1="132.08" y1="96.52" x2="101.6" y2="96.52" width="0.1524" layer="91"/>
<wire x1="101.6" y1="96.52" x2="101.6" y2="154.94" width="0.1524" layer="91"/>
<pinref part="CONTROL" gate="1" pin="6"/>
<wire x1="101.6" y1="154.94" x2="119.38" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="10"/>
<wire x1="132.08" y1="93.98" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<wire x1="99.06" y1="93.98" x2="99.06" y2="152.4" width="0.1524" layer="91"/>
<pinref part="CONTROL" gate="1" pin="4"/>
<wire x1="99.06" y1="152.4" x2="119.38" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="2"/>
<wire x1="132.08" y1="83.82" x2="96.52" y2="83.82" width="0.1524" layer="91"/>
<wire x1="96.52" y1="83.82" x2="96.52" y2="149.86" width="0.1524" layer="91"/>
<pinref part="CONTROL" gate="1" pin="2"/>
<wire x1="96.52" y1="149.86" x2="119.38" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="31"/>
<wire x1="147.32" y1="121.92" x2="152.4" y2="121.92" width="0.1524" layer="91"/>
<wire x1="152.4" y1="121.92" x2="152.4" y2="154.94" width="0.1524" layer="91"/>
<pinref part="CONTROL" gate="1" pin="5"/>
<wire x1="134.62" y1="154.94" x2="152.4" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="29"/>
<wire x1="147.32" y1="119.38" x2="154.94" y2="119.38" width="0.1524" layer="91"/>
<wire x1="154.94" y1="119.38" x2="154.94" y2="152.4" width="0.1524" layer="91"/>
<pinref part="CONTROL" gate="1" pin="3"/>
<wire x1="154.94" y1="152.4" x2="134.62" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="CAMERA1" gate="G$1" pin="27"/>
<wire x1="147.32" y1="116.84" x2="157.48" y2="116.84" width="0.1524" layer="91"/>
<wire x1="157.48" y1="116.84" x2="157.48" y2="149.86" width="0.1524" layer="91"/>
<pinref part="CONTROL" gate="1" pin="1"/>
<wire x1="134.62" y1="149.86" x2="157.48" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="SERIAL" gate="G$1" pin="2"/>
<pinref part="CAMERA1" gate="G$1" pin="8"/>
<wire x1="86.36" y1="91.44" x2="132.08" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="SERIAL" gate="G$1" pin="1"/>
<pinref part="CAMERA1" gate="G$1" pin="6"/>
<wire x1="86.36" y1="88.9" x2="132.08" y2="88.9" width="0.1524" layer="91"/>
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
</compatibility>
</eagle>
