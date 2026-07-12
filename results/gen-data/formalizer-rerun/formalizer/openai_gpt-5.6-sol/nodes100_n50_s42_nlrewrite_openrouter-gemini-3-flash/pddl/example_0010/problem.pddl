(define (problem beat-egg-whites-problem)
 (:domain beat-egg-whites)
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
  (pending step1) (pending step2) (pending step3) (pending step4) (pending step5) (pending step6) (pending step7) (pending step8) (pending step9) (pending step10)
  (pending step11) (pending step12) (pending step13) (pending step14) (pending step15) (pending step16) (pending step17) (pending step18) (pending step19) (pending step20)
  (pending step21) (pending step22) (pending step23) (pending step24) (pending step25) (pending step26) (pending step27) (pending step28) (pending step29) (pending step30)
  (pending step31) (pending step32) (pending step33) (pending step34) (pending step35) (pending step36) (pending step37) (pending step38) (pending step39) (pending step40)
  (pending step41) (pending step42) (pending step43) (pending step44) (pending step45) (pending step46) (pending step47) (pending step48) (pending step49) (pending step50)
  (pending step51) (pending step52) (pending step53) (pending step54) (pending step55) (pending step56) (pending step57) (pending step58) (pending step59) (pending step60)
  (pending step61) (pending step62) (pending step63) (pending step64) (pending step65) (pending step66) (pending step67) (pending step68) (pending step69) (pending step70)
  (pending step71) (pending step72) (pending step73) (pending step74) (pending step75) (pending step76) (pending step77) (pending step78) (pending step79) (pending step80)
  (pending step81) (pending step82) (pending step83) (pending step84) (pending step85) (pending step86) (pending step87) (pending step88) (pending step89) (pending step90)
  (pending step91) (pending step92) (pending step93) (pending step94) (pending step95) (pending step96) (pending step97) (pending step98) (pending step99) (pending step100)
  (is1 step1) (is2 step2) (is3 step3) (is4 step4) (is5 step5) (is6 step6) (is7 step7) (is8 step8) (is9 step9) (is10 step10)
  (is11 step11) (is12 step12) (is13 step13) (is14 step14) (is15 step15) (is16 step16) (is17 step17) (is18 step18) (is19 step19) (is20 step20)
  (is21 step21) (is22 step22) (is23 step23) (is24 step24) (is25 step25) (is26 step26) (is27 step27) (is28 step28) (is29 step29) (is30 step30)
  (is31 step31) (is32 step32) (is33 step33) (is34 step34) (is35 step35) (is36 step36) (is37 step37) (is38 step38) (is39 step39) (is40 step40)
  (is41 step41) (is42 step42) (is43 step43) (is44 step44) (is45 step45) (is46 step46) (is47 step47) (is48 step48) (is49 step49) (is50 step50)
  (is51 step51) (is52 step52) (is53 step53) (is54 step54) (is55 step55) (is56 step56) (is57 step57) (is58 step58) (is59 step59) (is60 step60)
  (is61 step61) (is62 step62) (is63 step63) (is64 step64) (is65 step65) (is66 step66) (is67 step67) (is68 step68) (is69 step69) (is70 step70)
  (is71 step71) (is72 step72) (is73 step73) (is74 step74) (is75 step75) (is76 step76) (is77 step77) (is78 step78) (is79 step79) (is80 step80)
  (is81 step81) (is82 step82) (is83 step83) (is84 step84) (is85 step85) (is86 step86) (is87 step87) (is88 step88) (is89 step89) (is90 step90)
  (is91 step91) (is92 step92) (is93 step93) (is94 step94) (is95 step95) (is96 step96) (is97 step97) (is98 step98) (is99 step99) (is100 step100))
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
  (step_done step91) (step_done step92) (step_done step93) (step_done step94) (step_done step95) (step_done step96) (step_done step97) (step_done step98) (step_done step99) (step_done step100)
  (d8)))
 (:metric minimize (total-time))
)