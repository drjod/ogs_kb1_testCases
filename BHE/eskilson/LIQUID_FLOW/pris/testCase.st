

#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  POINT P_BHE
 $CONTRAFLOW_PIPES
  1 .0262 .032 .0262 .032 .059397 .38 .38 ; (0: U, 1: 2U) d_0_i d_0_o d_1_i d_1_o w lambda_0 lambda_1
 .65 5.2e-4 4130 1000 ; fluid: lambda, mu, c, rho
  1  ; number of segments 
  55 55. 0.12 2.3  ; ground number_of_elements length diameter lambda_g
 $CONTRAFLOW_INPUT
  1  ; number of data sets (steps)
  1e10 0 4.43e-4 50 ; time forcing_option Q [m3/s] T_in
 $DIS_TYPE
  CONSTANT_NEUMANN 1.

#STOP


#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  POLYLINE PLY_BHE
 $DIS_TYPE
  CONSTANT_NEUMANN 10
#STOP
