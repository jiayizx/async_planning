(define (problem measure-fresh-vs-dried-herbs)
  (:domain herb-measurement)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 - step)
  (:init
    (p1 step1) (p2 step2) (p3 step3) (p4 step4) (p5 step5)
    (p6 step6) (p7 step7) (p8 step8) (p9 step9) (p10 step10)
    (p11 step11) (p12 step12) (p13 step13) (p14 step14) (p15 step15)
    (p16 step16) (p17 step17) (p18 step18) (p19 step19) (p20 step20)
    (p21 step21) (p22 step22) (p23 step23) (p24 step24) (p25 step25)
    (p26 step26) (p27 step27) (p28 step28) (p29 step29) (p30 step30)
    (p31 step31) (p32 step32) (p33 step33) (p34 step34) (p35 step35)
    (p36 step36) (p37 step37) (p38 step38) (p39 step39) (p40 step40))
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4)
    (step_done step5) (step_done step6) (step_done step7) (step_done step8)
    (step_done step9) (step_done step10) (step_done step11) (step_done step12)
    (step_done step13) (step_done step14) (step_done step15) (step_done step16)
    (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (step_done step21) (step_done step22) (step_done step23) (step_done step24)
    (step_done step25) (step_done step26) (step_done step27) (step_done step28)
    (step_done step29) (step_done step30) (step_done step31) (step_done step32)
    (step_done step33) (step_done step34) (step_done step35) (step_done step36)
    (step_done step37) (step_done step38) (step_done step39) (step_done step40)
    (d23)))
  (:metric minimize (total-time))
)