
:SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  POLYLINE PLY_WARMWELL
 $THRESHOLD_GEOMETRY
  POINT POINT13
 $DIS_TYPE
  CONSTANT_NEUMANN 1e-3
 $THRESHOLD
  1 HEAT_TRANSPORT 70 1 5 2 ; type [1: lower, 2: upper], process name, threshold value, scheme [0: explicit, 1: implicit], delta [only if scheme is implicit], verbosity [0, 1, 2]
 $FCT_TYPE
  IN_OUT
 
#STOP
