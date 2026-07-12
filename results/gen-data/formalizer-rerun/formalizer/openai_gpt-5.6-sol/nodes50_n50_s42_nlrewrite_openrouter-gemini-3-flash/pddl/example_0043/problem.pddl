(define (problem decide-renovate-or-shift)
 (:domain renovate-or-shift)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 - step)
 (:init
  (m1 step1) (m2 step2) (m3 step3) (m4 step4) (m5 step5) (m6 step6) (m7 step7) (m8 step8) (m9 step9) (m10 step10)
  (m11 step11) (m12 step12) (m13 step13) (m14 step14) (m15 step15) (m16 step16) (m17 step17) (m18 step18) (m19 step19) (m20 step20)
  (m21 step21) (m22 step22) (m23 step23) (m24 step24) (m25 step25) (m26 step26) (m27 step27) (m28 step28) (m29 step29) (m30 step30)
  (m31 step31) (m32 step32) (m33 step33) (m34 step34) (m35 step35) (m36 step36) (m37 step37) (m38 step38) (m39 step39) (m40 step40)
  (m41 step41) (m42 step42) (m43 step43) (m44 step44) (m45 step45) (m46 step46) (m47 step47) (m48 step48) (m49 step49) (m50 step50)
  (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
  (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
  (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
  (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
  (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50))
 (:goal (and
  (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
  (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
  (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
  (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
  (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25)
  (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
  (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35)
  (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
  (step_done step41) (step_done step42) (step_done step43) (step_done step44) (step_done step45)
  (step_done step46) (step_done step47) (step_done step48) (step_done step49) (step_done step50)
  (decision_made)))
 (:metric minimize (total-time))
)