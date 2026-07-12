(define (problem invest-in-silver)
 (:domain silver-investment)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 - step)
 (:init
  (p1 step1) (p2 step2) (p3 step3) (p4 step4) (p5 step5)
  (p6 step6) (p7 step7) (p8 step8) (p9 step9) (p10 step10)
  (p11 step11) (p12 step12) (p13 step13) (p14 step14) (p15 step15)
  (p16 step16) (p17 step17) (p18 step18) (p19 step19) (p20 step20)
  (p21 step21) (p22 step22) (p23 step23) (p24 step24) (p25 step25)
  (p26 step26) (p27 step27) (p28 step28) (p29 step29) (p30 step30)
  (p31 step31) (p32 step32) (p33 step33) (p34 step34) (p35 step35)
  (p36 step36) (p37 step37) (p38 step38) (p39 step39) (p40 step40)
  (p41 step41) (p42 step42) (p43 step43) (p44 step44) (p45 step45)
  (p46 step46) (p47 step47) (p48 step48) (p49 step49) (p50 step50))
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
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)))
 (:metric minimize (total-time))
)