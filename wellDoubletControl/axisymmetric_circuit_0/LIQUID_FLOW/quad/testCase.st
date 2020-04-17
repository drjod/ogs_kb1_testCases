

#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  POINT P_HE  ; heat source / sink //  heat exchanger
 $WELL_DOUBLET_GEOMETRY
  POINT P_AT_WW ; warm well 1 // measurement point
  POLYLINE PLY_WW_ST_LIQUID   ; warm well 1 // liquid flow BC
  POINT P_AT_CW   ; cold well 2 // measurement point
  POLYLINE PLY_CW_ST_LIQUID   ; cold well 2 // liquid flow bc
 $DIS_TYPE
  CONSTANT 1
 $WELL_DOUBLET_PARAMETER
  3 1 0.1 10 1e-5 ; number_of_entries well_shutdown_temperature_range accuracy_temperature accuracy_powerrate accuracy_flowrate
1728000		0	1e6	5e-3	70  ; time mode power_target target extremum - until 1728000 (including) - 20 days
2590000 	0       2e6   	5e-3 	70 ; after 1728000 until 2590000 (30 days)
1e20		0	-1e6	-5e-3	13 ; after 2590000

#STOP




#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  POLYLINE PLY_WW_ST_LIQUID
 $DIS_TYPE
  CONSTANT_NEUMANN 1e-3


#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  POLYLINE PLY_CW_ST_LIQUID
 $DIS_TYPE
  CONSTANT_NEUMANN -1e-3

#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  POINT P_HE
 $DIS_TYPE
  CONSTANT 1e6

