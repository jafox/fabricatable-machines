+================================================
+                                                
+ Grbl - Vectric machine output configuration file   
+                                                
+================================================
+                                                
+ History                                        
+                                                  
+ Who      When       What                         
+ ======== ========== ===========================
+ EdwardP  28/11/2014 Written from GCode_mm.pp
+                     Added arc move support  
+ EdwardP  11/02/2015 Commented out arcs as these
+                     slow GRBL performance appear 
+                     interpolated anyway
+ EdwardP  18/06/2015 Explicitly set absolute mode (G90)
+ Mark     24/11/2015 Updated for interim 0.9 spec.
+                     Renaming to be machine specific.
+                     Removing M30 from Footer.
+ ======== ========== ===========================

POST_NAME = "Grbl Autohome (mm) (*.gcode)"
+------------------------------------------------
+    TEXT INSIDE THESE BRACKETS ARE BACKUP VALUES AND EXPLANATIONS
+ 	The real values Vcarve will use are in ""-marks 
+------------------------------------------------

 
FILE_EXTENSION = "gcode"
 
UNITS = "MM"
 
+------------------------------------------------
+    Line terminating characters                 
+------------------------------------------------
 
LINE_ENDING = "[13][10]"
 
+------------------------------------------------
+    Block numbering                             
+------------------------------------------------
 
LINE_NUMBER_START     = 0
LINE_NUMBER_INCREMENT = 10
LINE_NUMBER_MAXIMUM = 999999
 
+================================================
+                                                
+    Formating for variables                     
+                                                
+================================================
 
VAR LINE_NUMBER = [N|A|N|1.0]
VAR SPINDLE_SPEED = [S|A|S|1.0]
VAR FEED_RATE = [F|C|F|1.1]
VAR X_POSITION = [X|C|X|1.4]
VAR Y_POSITION = [Y|C|Y|1.4]
VAR Z_POSITION = [Z|C|Z|1.4]
+VAR ARC_CENTRE_I_INC_POSITION = [I|A|I|1.4]
+VAR ARC_CENTRE_J_INC_POSITION = [J|A|J|1.4]
VAR X_HOME_POSITION = [XH|A|X|1.4]
VAR Y_HOME_POSITION = [YH|A|Y|1.4]
VAR Z_HOME_POSITION = [ZH|A|Z|1.4]
 
+================================================
+                                                
+    Block definitions for toolpath output       
+                                                
+================================================
 
+---------------------------------------------------
+  Commands output at the start of the file
+ Gcode Reference https://www.shapeoko.com/wiki/index.php/G-Code
+
+"T1" Tool 1  
+"G17" X-Y plane (for arcs)
+"G21" mm units
+"G90" Absolute distance mode (instead of relative)
+---------------------------------------------------
 
begin HEADER
+---------------------------------------------------
+"T1" Tool 1  
+"G17" X-Y plane (for arcs)
+"G21" mm units
+"G90" Absolute distance mode (instead of relative)
+---------------------------------------------------
"T1" 
"G17"
"G21"
"G90"
+---------------------------------------------------
+"$H" run GRBL homing cycle
+---------------------------------------------------
$H					
+---------------------------------------------------
+"G92 X-96.73 Y-36.4 Z0"   ;set the difference between homing location and where we want X and Y home postion to be
+---------------------------------------------------
"G92 X-95 Y-25.9 Z0"  
+---------------------------------------------------
+ "G0 X-82 Z-50"			;quickly jog to a good postion to start probing. X is important, Z negative is just to save some time
+ "G38.2 F300 Z-130"	;start probing downwards
+ "G92 Z0"				;make probe surface Z zero
+ "G0 Z2"				;move up 2 mm
+ "G38.2 F50 Z-5"		;probe again with extra slow speed for maximum precision
+ "G92 Z0"				;make probe surface Z zero again
+ "G0 Z40"				;move good height to clear the gantry foot
+---------------------------------------------------
"G0 X-82 Z-50"		
"G38.2 F300 Z-130"	
"G92 Z0"				
"G0 Z2"				
"G38.2 F50 Z-5"		
"G92 Z0"			
"G0 Z40"
+---------------------------------------------------
+ "G92 Z47" CHANGE Z HERE AFTER PLANEING THE WORK SURFACE, distance between homing plate and bed
+---------------------------------------------------
"G92 Z47"
+---------------------------------------------------
+ Safe Z and start spindle
+---------------------------------------------------
"G0[ZH]"
"G0[XH][YH][S]M3"
+---------------------------------------------------
+ "G04 P2" Wait 2 sec to start milling
+---------------------------------------------------
"G04 P2"
+---------------------------------------------------
+  Commands output for rapid moves 
+---------------------------------------------------
 
begin RAPID_MOVE
 
"G0[X][Y][Z]"
 
 
+---------------------------------------------------
+  Commands output for the first feed rate move
+---------------------------------------------------
 
begin FIRST_FEED_MOVE
 
"G1[X][Y][Z][F]"
 
 
+---------------------------------------------------
+  Commands output for feed rate moves
+---------------------------------------------------
 
begin FEED_MOVE
 
"G1[X][Y][Z]"
 
 
+---------------------------------------------------
+  Commands output for the first clockwise arc move
+---------------------------------------------------

+begin FIRST_CW_ARC_MOVE

+"G2[X][Y][I][J][F]"
 
 
+---------------------------------------------------
+  Commands output for clockwise arc  move
+---------------------------------------------------
 
+begin CW_ARC_MOVE
 
+"G2[X][Y][I][J]"
 
 
+---------------------------------------------------
+  Commands output for the first counterclockwise arc move
+---------------------------------------------------
 
+begin FIRST_CCW_ARC_MOVE
 
+"G3[X][Y][I][J][F]"
 
 
+---------------------------------------------------
+  Commands output for counterclockwise arc  move
+---------------------------------------------------
 
+begin CCW_ARC_MOVE
 
+"G3[X][Y][I][J]"
 
 
+---------------------------------------------------
+  Commands output at the end of the file
+---------------------------------------------------
 
begin FOOTER
 
"G0[ZH]"
"M5"
"G0 Y2600"
"M02"