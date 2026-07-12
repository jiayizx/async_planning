(define (problem personal-budget-instance)
 (:domain personal-budget)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
  step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
  step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
  step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
  step81 step82 step83 step84 step85 step86 step87 step88 step89 step90
  step91 step92 step93 step94 step95 step96 step97 step98 step99 step100 - step)
 (:init
  (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5) (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
  (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15) (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
  (step_pending step21) (step_pending step22) (step_pending step23) (step_pending step24) (step_pending step25) (step_pending step26) (step_pending step27) (step_pending step28) (step_pending step29) (step_pending step30)
  (step_pending step31) (step_pending step32) (step_pending step33) (step_pending step34) (step_pending step35) (step_pending step36) (step_pending step37) (step_pending step38) (step_pending step39) (step_pending step40)
  (step_pending step41) (step_pending step42) (step_pending step43) (step_pending step44) (step_pending step45) (step_pending step46) (step_pending step47) (step_pending step48) (step_pending step49) (step_pending step50)
  (step_pending step51) (step_pending step52) (step_pending step53) (step_pending step54) (step_pending step55) (step_pending step56) (step_pending step57) (step_pending step58) (step_pending step59) (step_pending step60)
  (step_pending step61) (step_pending step62) (step_pending step63) (step_pending step64) (step_pending step65) (step_pending step66) (step_pending step67) (step_pending step68) (step_pending step69) (step_pending step70)
  (step_pending step71) (step_pending step72) (step_pending step73) (step_pending step74) (step_pending step75) (step_pending step76) (step_pending step77) (step_pending step78) (step_pending step79) (step_pending step80)
  (step_pending step81) (step_pending step82) (step_pending step83) (step_pending step84) (step_pending step85) (step_pending step86) (step_pending step87) (step_pending step88) (step_pending step89) (step_pending step90)
  (step_pending step91) (step_pending step92) (step_pending step93) (step_pending step94) (step_pending step95) (step_pending step96) (step_pending step97) (step_pending step98) (step_pending step99) (step_pending step100)
  (i1 step1) (i2 step2) (i3 step3) (i4 step4) (i5 step5) (i6 step6) (i7 step7) (i8 step8) (i9 step9) (i10 step10)
  (i11 step11) (i12 step12) (i13 step13) (i14 step14) (i15 step15) (i16 step16) (i17 step17) (i18 step18) (i19 step19) (i20 step20)
  (i21 step21) (i22 step22) (i23 step23) (i24 step24) (i25 step25) (i26 step26) (i27 step27) (i28 step28) (i29 step29) (i30 step30)
  (i31 step31) (i32 step32) (i33 step33) (i34 step34) (i35 step35) (i36 step36) (i37 step37) (i38 step38) (i39 step39) (i40 step40)
  (i41 step41) (i42 step42) (i43 step43) (i44 step44) (i45 step45) (i46 step46) (i47 step47) (i48 step48) (i49 step49) (i50 step50)
  (i51 step51) (i52 step52) (i53 step53) (i54 step54) (i55 step55) (i56 step56) (i57 step57) (i58 step58) (i59 step59) (i60 step60)
  (i61 step61) (i62 step62) (i63 step63) (i64 step64) (i65 step65) (i66 step66) (i67 step67) (i68 step68) (i69 step69) (i70 step70)
  (i71 step71) (i72 step72) (i73 step73) (i74 step74) (i75 step75) (i76 step76) (i77 step77) (i78 step78) (i79 step79) (i80 step80)
  (i81 step81) (i82 step82) (i83 step83) (i84 step84) (i85 step85) (i86 step86) (i87 step87) (i88 step88) (i89 step89) (i90 step90)
  (i91 step91) (i92 step92) (i93 step93) (i94 step94) (i95 step95) (i96 step96) (i97 step97) (i98 step98) (i99 step99) (i100 step100))
 (:goal (and
  (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5) (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
  (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15) (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
  (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25) (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
  (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35) (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
  (step_done step41) (step_done step42) (step_done step43) (step_done step44) (step_done step45) (step_done step46) (step_done step47) (step_done step48) (step_done step49) (step_done step50)
  (step_done step51) (step_done step52) (step_done step53) (step_done step54) (step_done step55) (step_done step56) (step_done step57) (step_done step58) (step_done step59) (step_done step60)
  (step_done step61) (step_done step62) (step_done step63) (step_done step64) (step_done step65) (step_done step66) (step_done step67) (step_done step68) (step_done step69) (step_done step70)
  (step_done step71) (step_done step72) (step_done step73) (step_done step74) (step_done step75) (step_done step76) (step_done step77) (step_done step78) (step_done step79) (step_done step80)
  (step_done step81) (step_done step82) (step_done step83) (step_done step84) (step_done step85) (step_done step86) (step_done step87) (step_done step88) (step_done step89) (step_done step90)
  (step_done step91) (step_done step92) (step_done step93) (step_done step94) (step_done step95) (step_done step96) (step_done step97) (step_done step98) (step_done step99) (step_done step100) (p100)))
 (:metric minimize (total-time))
)