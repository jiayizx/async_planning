(define (problem season-bbq)
 (:domain bbq-seasoning)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
  step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
  step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
  step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
  step81 step82 step83 step84 step85 step86 step87 step88 step89 step90 - step)
 (:init
  (pending step1) (m1 step1) (pending step2) (m2 step2) (pending step3) (m3 step3) (pending step4) (m4 step4) (pending step5) (m5 step5)
  (pending step6) (m6 step6) (pending step7) (m7 step7) (pending step8) (m8 step8) (pending step9) (m9 step9) (pending step10) (m10 step10)
  (pending step11) (m11 step11) (pending step12) (m12 step12) (pending step13) (m13 step13) (pending step14) (m14 step14) (pending step15) (m15 step15)
  (pending step16) (m16 step16) (pending step17) (m17 step17) (pending step18) (m18 step18) (pending step19) (m19 step19) (pending step20) (m20 step20)
  (pending step21) (m21 step21) (pending step22) (m22 step22) (pending step23) (m23 step23) (pending step24) (m24 step24) (pending step25) (m25 step25)
  (pending step26) (m26 step26) (pending step27) (m27 step27) (pending step28) (m28 step28) (pending step29) (m29 step29) (pending step30) (m30 step30)
  (pending step31) (m31 step31) (pending step32) (m32 step32) (pending step33) (m33 step33) (pending step34) (m34 step34) (pending step35) (m35 step35)
  (pending step36) (m36 step36) (pending step37) (m37 step37) (pending step38) (m38 step38) (pending step39) (m39 step39) (pending step40) (m40 step40)
  (pending step41) (m41 step41) (pending step42) (m42 step42) (pending step43) (m43 step43) (pending step44) (m44 step44) (pending step45) (m45 step45)
  (pending step46) (m46 step46) (pending step47) (m47 step47) (pending step48) (m48 step48) (pending step49) (m49 step49) (pending step50) (m50 step50)
  (pending step51) (m51 step51) (pending step52) (m52 step52) (pending step53) (m53 step53) (pending step54) (m54 step54) (pending step55) (m55 step55)
  (pending step56) (m56 step56) (pending step57) (m57 step57) (pending step58) (m58 step58) (pending step59) (m59 step59) (pending step60) (m60 step60)
  (pending step61) (m61 step61) (pending step62) (m62 step62) (pending step63) (m63 step63) (pending step64) (m64 step64) (pending step65) (m65 step65)
  (pending step66) (m66 step66) (pending step67) (m67 step67) (pending step68) (m68 step68) (pending step69) (m69 step69) (pending step70) (m70 step70)
  (pending step71) (m71 step71) (pending step72) (m72 step72) (pending step73) (m73 step73) (pending step74) (m74 step74) (pending step75) (m75 step75)
  (pending step76) (m76 step76) (pending step77) (m77 step77) (pending step78) (m78 step78) (pending step79) (m79 step79) (pending step80) (m80 step80)
  (pending step81) (m81 step81) (pending step82) (m82 step82) (pending step83) (m83 step83) (pending step84) (m84 step84) (pending step85) (m85 step85)
  (pending step86) (m86 step86) (pending step87) (m87 step87) (pending step88) (m88 step88) (pending step89) (m89 step89) (pending step90) (m90 step90))
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
  (s90)))
 (:metric minimize (total-time))
)