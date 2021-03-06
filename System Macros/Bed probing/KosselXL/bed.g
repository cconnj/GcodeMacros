; bed.g
; called to perform automatic delta calibration via G32
;
; generated by RepRapFirmware Configuration Tool on Sat Mar 18 2017 15:04:00 GMT+0000 (Co-ordinated Universal Time)

; Clear any bed transform
M561

; Home all towers
G28

;move the head close to the bed
;G1 X0 Y82.65 Z2 F9000
G1 X0 Y129.44 Z2 F9000

; Probe the bed at 6 peripheral and 3 halfway points, and perform 6-factor auto compensation
; Before running this, you should have set up your Z-probe trigger height to suit your build, in the G31 command in config.g.
G30 P0 X0 Y82.65 H0 Z-99999
G30 P1 X60.8 Y35.1 H0 Z-99999
G30 P2 X60.8 Y-35.1 H0 Z-99999
G30 P3 X0 Y-82.65 H0 Z-99999
G30 P4 X-73.61 Y-42.5 H0 Z-99999
G30 P5 X-73.61 Y42.5 H0 Z-99999
G30 P6 X0 Y38.37 H0 Z-99999
G30 P7 X25.75 Y-14.87 H0 Z-99999
G30 P8 X-36.81 Y-21.25 H0 Z-99999
G30 P9 X0 Y0 H0 Z-99999 S8
; Use S-1 for measurements only, without calculations. Use S4 for endstop heights and Z-height only. Use S6 for full 6 factors
; If your Z probe has significantly different trigger heights depending on XY position, adjust the H parameters in the G30 commands accordingly. The value of each H parameter should be (trigger height at that XY position) - (trigger height at centre of bed)

