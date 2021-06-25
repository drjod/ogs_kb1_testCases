
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
  HP 0 ; no heat pump
  3 1 0.1 1e3 1e-5 0 1 	; number_of_entries well_shutdown_temperature_range accuracy_temperature accuracy_powerrate accuracy_flowrate connection_mode (0: RHS, 1: matrix), logging 
 1e6	0  	1.e6	1e-2 	70  ; time mode power_target target extremum
 2e6 	0	5.e6 	1e-2   	70
 1e20 	0  	-1.e6  	-1e-2 	20
 $IGNORE_AXISYMMETRY

#STOP
