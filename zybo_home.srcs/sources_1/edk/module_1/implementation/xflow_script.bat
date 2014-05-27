@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc7z010clg400-1 -nt timestamp -bm module_1.bmm "D:/zybo_home/zybo_home.srcs/sources_1/edk/module_1/implementation/module_1.ngc" -uc module_1.ucf module_1.ngd 

@REM #
@REM # Command line for map
@REM #
map -o module_1_map.ncd -w -pr b -ol high -timing -detail module_1.ngd module_1.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high module_1_map.ncd module_1.ncd module_1.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml module_1.twx module_1.ncd module_1.pcf 

