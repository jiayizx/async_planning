(define (problem quick-breakfast-problem)
 (:domain quick-breakfast)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
  step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
  step61 step62 step63 step64 step65 step66 step67 step68 step69 step70 - step)
 (:init
  (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5) (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
  (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15) (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
  (step_pending step21) (step_pending step22) (step_pending step23) (step_pending step24) (step_pending step25) (step_pending step26) (step_pending step27) (step_pending step28) (step_pending step29) (step_pending step30)
  (step_pending step31) (step_pending step32) (step_pending step33) (step_pending step34) (step_pending step35) (step_pending step36) (step_pending step37) (step_pending step38) (step_pending step39) (step_pending step40)
  (step_pending step41) (step_pending step42) (step_pending step43) (step_pending step44) (step_pending step45) (step_pending step46) (step_pending step47) (step_pending step48) (step_pending step49) (step_pending step50)
  (step_pending step51) (step_pending step52) (step_pending step53) (step_pending step54) (step_pending step55) (step_pending step56) (step_pending step57) (step_pending step58) (step_pending step59) (step_pending step60)
  (step_pending step61) (step_pending step62) (step_pending step63) (step_pending step64) (step_pending step65) (step_pending step66) (step_pending step67) (step_pending step68) (step_pending step69) (step_pending step70)
  (m1 step1) (m2 step2) (m3 step3) (m4 step4) (m5 step5) (m6 step6) (m7 step7) (m8 step8) (m9 step9) (m10 step10)
  (m11 step11) (m12 step12) (m13 step13) (m14 step14) (m15 step15) (m16 step16) (m17 step17) (m18 step18) (m19 step19) (m20 step20)
  (m21 step21) (m22 step22) (m23 step23) (m24 step24) (m25 step25) (m26 step26) (m27 step27) (m28 step28) (m29 step29) (m30 step30)
  (m31 step31) (m32 step32) (m33 step33) (m34 step34) (m35 step35) (m36 step36) (m37 step37) (m38 step38) (m39 step39) (m40 step40)
  (m41 step41) (m42 step42) (m43 step43) (m44 step44) (m45 step45) (m46 step46) (m47 step47) (m48 step48) (m49 step49) (m50 step50)
  (m51 step51) (m52 step52) (m53 step53) (m54 step54) (m55 step55) (m56 step56) (m57 step57) (m58 step58) (m59 step59) (m60 step60)
  (m61 step61) (m62 step62) (m63 step63) (m64 step64) (m65 step65) (m66 step66) (m67 step67) (m68 step68) (m69 step69) (m70 step70))
 (:goal (and
  (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5) (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
  (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15) (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
  (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25) (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
  (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35) (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
  (step_done step41) (step_done step42) (step_done step43) (step_done step44) (step_done step45) (step_done step46) (step_done step47) (step_done step48) (step_done step49) (step_done step50)
  (step_done step51) (step_done step52) (step_done step53) (step_done step54) (step_done step55) (step_done step56) (step_done step57) (step_done step58) (step_done step59) (step_done step60)
  (step_done step61) (step_done step62) (step_done step63) (step_done step64) (step_done step65) (step_done step66) (step_done step67) (step_done step68) (step_done step69) (step_done step70)
  (breakfast_ready)))
 (:metric minimize (total-time))
)