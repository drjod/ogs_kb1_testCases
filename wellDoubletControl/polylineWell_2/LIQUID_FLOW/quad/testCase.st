
#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  POLYLINE WELL_WARM
 $WELL_DOUBLET_GEOMETRY
  POLYLINE WELL_COLD
 $DIS_TYPE
  CONSTANT_NEUMANN  1.
 $WELL_DOUBLET_PARAMETER
  HP 0 ; 0: no heat pump 
  6 5. 0.1 1e3 1.e-5 ; number_of_entries well_shutdown_temperature_range accuracy_temperature accuracy_powerrate accuracy_flowrate
 2e5	2	1.e3	60 	1.e-2 ; time mode power_target target extremum
 1e6 	2  	1.e6 	60 	1.e-2
 2e6 	2  	5.e6  	60 	1.e-2
 2.2e6 	2  	-1.  	-50 	-1.e-2
 3e6  	2  	-1.e6   -30 	-1.e-2
 1e20  	2  	-2.e6   -30 	-1.e-2
 $IGNORE_AXISYMMETRY

#STOP
