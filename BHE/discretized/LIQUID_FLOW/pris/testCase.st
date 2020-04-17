; ############### LIQUID STs ###################
; ### In ###
#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_0_TOP
 $DIS_TYPE
  CONSTANT_NEUMANN .41094
#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_3_TOP
 $DIS_TYPE
  CONSTANT_NEUMANN .41094

; ### Out ###
#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_1_TOP
 $DIS_TYPE
  CONSTANT_NEUMANN -.41094
#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_2_TOP
 $DIS_TYPE
  CONSTANT_NEUMANN -.41094

; ############# B0 U0 bottom #############
#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_0_BOT
 $DIS_TYPE
  CONSTANT_NEUMANN -.41094
#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_3_BOT
 $DIS_TYPE
  CONSTANT_NEUMANN -.41094

#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_1_BOT
 $DIS_TYPE
  CONSTANT_NEUMANN .41094
#SOURCE_TERM
 $PCS_TYPE
  LIQUID_FLOW
 $PRIMARY_VARIABLE
  PRESSURE1
 $GEO_TYPE
  SURFACE SFC_PIPE_2_BOT
 $DIS_TYPE
  CONSTANT_NEUMANN .41094

: ##########################################
;
;#SOURCE_TERM
; $PCS_TYPE
;  HEAT_TRANSPORT
; $PRIMARY_VARIABLE
;  TEMPERATURE1
; $GEO_TYPE
;  SURFACE    SFC_PIPE_0_TOP
; $DIS_TYPE
;  CONSTANT_NEUMANN      1.000000
; $CONNECTED_GEOMETRY
;  SURFACE SFC_PIPE_2_TOP
; $CONNECT_PARAMETERS
;  1e6 1  ; exchange coefficient   verbosity level = 0, 1
; $CONNECT_MODE
;  1 ; mode  ; 0: symmetric, 1: non-symmetric (downwind fixed), 2 variable (dependent on velocity in reference element)
;  ;  2  ref_element_number   n_ref_x, n_ref_y, n_ref_z minimum_velocity_abs
;
;
;#SOURCE_TERM
; $PCS_TYPE
;  HEAT_TRANSPORT
; $PRIMARY_VARIABLE
;  TEMPERATURE1
; $GEO_TYPE
;  SURFACE    SFC_PIPE_3_TOP
; $DIS_TYPE
;  CONSTANT_NEUMANN      1.000000
; $CONNECTED_GEOMETRY
;  SURFACE SFC_PIPE_1_TOP
; $CONNECT_PARAMETERS
;  1e6 1  ; exchange coefficient   verbosity level = 0, 1
; $CONNECT_MODE
;  1 ; mode  ; 0: symmetric, 1: non-symmetric (downwind fixed), 2 variable (dependent on velocity in reference element)
;  ;  2  ref_element_number   n_ref_x, n_ref_y, n_ref_z minimum_velocity_abs
;

#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  SURFACE    SFC_PIPE_2_BOT
 $DIS_TYPE
  CONSTANT_NEUMANN      1.000000
 $CONNECTED_GEOMETRY
  SURFACE SFC_PIPE_0_BOT
 $CONNECT_PARAMETERS
  1e6 0  ; exchange coefficient   verbosity level = 0, 1
 $CONNECT_MODE
  1 ; mode  ; 0: symmetric, 1: non-symmetric (downwind fixed), 2 variable (dependent on velocity in reference element)
  ;  2  ref_element_number   n_ref_x, n_ref_y, n_ref_z minimum_velocity_abs
$EVERYONE_WITH_EVERYONE


#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  SURFACE    SFC_PIPE_1_BOT
 $DIS_TYPE
  CONSTANT_NEUMANN      1.000000
 $CONNECTED_GEOMETRY
  SURFACE SFC_PIPE_3_BOT
 $CONNECT_PARAMETERS
  1e6 0 ; exchange coefficient   verbosity level = 0, 1
 $CONNECT_MODE
  1 ; mode  ; 0: symmetric, 1: non-symmetric (downwind fixed), 2 variable (dependent on velocity in reference element)
  ;  2  ref_element_number   n_ref_x, n_ref_y, n_ref_z minimum_velocity_abs
$EVERYONE_WITH_EVERYONE

#STOP
