

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
  HP 0 ; No heat pump
  6 1 0.1 10 1e-5 ; number_of_entries well_shutdown_temperature_range accuracy_temperature accuracy_powerrate accuracy_flowrate
1728000		1	2e6	70	0.01  ; time mode power_target target extremum - until 1728000 (including) - 20 days
2590000 	1       5e6   	70 	0.01 ; after 1728000 until 2590000 (30 days)
3456000		1	1e3	70	0.01 ; after 2590000 until 3456000 (40 days)
4320000		1	-1e6	13	-0.01 ; after 3456000 until 4320000 (50 days)
5184000		1	-5e6	13	-0.01 ; after 4320000 until 5184000 (60 days)
1e20		1	-1e2	13	-0.01 ; after 5184000

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

