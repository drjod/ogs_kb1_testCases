
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
  HP 1 95. .5 
  4 5. 0.1 1e3 1e-5 0 1  ; number_of_entries well_shutdown_temperature_range accuracy_temperature accuracy_powerrate accuracy_flowrate connection_mode (0: RHS, 1: matrix), logging
 2e5	1	1.e3	70 	1.e-2 ; time mode power_target target extremum
 1e6 	1 	1.e6  	70 	1.e-2
 2e6 	1  	5.e6	70 	1.e-2
 1e20  	1  	-2.e6   20. 	-1.e-2
 $IGNORE_AXISYMMETRY

#STOP
