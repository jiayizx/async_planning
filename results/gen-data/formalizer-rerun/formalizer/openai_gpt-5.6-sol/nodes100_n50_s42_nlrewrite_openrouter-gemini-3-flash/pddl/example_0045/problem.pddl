(define (problem quick-hundred-problem)
 (:domain quick-hundred)
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
  (m1 step1) (m2 step2) (m3 step3) (m4 step4) (m5 step5) (m6 step6) (m7 step7) (m8 step8) (m9 step9) (m10 step10)
  (m11 step11) (m12 step12) (m13 step13) (m14 step14) (m15 step15) (m16 step16) (m17 step17) (m18 step18) (m19 step19) (m20 step20)
  (m21 step21) (m22 step22) (m23 step23) (m24 step24) (m25 step25) (m26 step26) (m27 step27) (m28 step28) (m29 step29) (m30 step30)
  (m31 step31) (m32 step32) (m33 step33) (m34 step34) (m35 step35) (m36 step36) (m37 step37) (m38 step38) (m39 step39) (m40 step40)
  (m41 step41) (m42 step42) (m43 step43) (m44 step44) (m45 step45) (m46 step46) (m47 step47) (m48 step48) (m49 step49) (m50 step50)
  (m51 step51) (m52 step52) (m53 step53) (m54 step54) (m55 step55) (m56 step56) (m57 step57) (m58 step58) (m59 step59) (m60 step60)
  (m61 step61) (m62 step62) (m63 step63) (m64 step64) (m65 step65) (m66 step66) (m67 step67) (m68 step68) (m69 step69) (m70 step70)
  (m71 step71) (m72 step72) (m73 step73) (m74 step74) (m75 step75) (m76 step76) (m77 step77) (m78 step78) (m79 step79) (m80 step80)
  (m81 step81) (m82 step82) (m83 step83) (m84 step84) (m85 step85) (m86 step86) (m87 step87) (m88 step88) (m89 step89) (m90 step90)
  (m91 step91) (m92 step92) (m93 step93) (m94 step94) (m95 step95) (m96 step96) (m97 step97) (m98 step98) (m99 step99) (m100 step100)
 )
 (:goal (and
  (done step1) (done step2) (done step3) (done step4) (done step5) (done step6) (done step7) (done step8) (done step9) (done step10)
  (done step11) (done step12) (done step13) (done step14) (done step15) (done step16) (done step17) (done step18) (done step19) (done step20)
  (done step21) (done step22) (done step23) (done step24) (done step25) (done step26) (done step27) (done step28) (done step29) (done step30)
  (done step31) (done step32) (done step33) (done step34) (done step35) (done step36) (done step37) (done step38) (done step39) (done step40)
  (done step41) (done step42) (done step43) (done step44) (done step45) (done step46) (done step47) (done step48) (done step49) (done step50)
  (done step51) (done step52) (done step53) (done step54) (done step55) (done step56) (done step57) (done step58) (done step59) (done step60)
  (done step61) (done step62) (done step63) (done step64) (done step65) (done step66) (done step67) (done step68) (done step69) (done step70)
  (done step71) (done step72) (done step73) (done step74) (done step75) (done step76) (done step77) (done step78) (done step79) (done step80)
  (done step81) (done step82) (done step83) (done step84) (done step85) (done step86) (done step87) (done step88) (done step89) (done step90)
  (done step91) (done step92) (done step93) (done step94) (done step95) (done step96) (done step97) (done step98) (done step99) (done step100)
  (task-complete)))
 (:metric minimize (total-time))
)