(define (problem go-to-college)
  (:domain college-planning)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 - step)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending)
    (step5_pending) (step6_pending) (step7_pending) (step8_pending)
    (step9_pending) (step10_pending) (step11_pending) (step12_pending)
    (step13_pending) (step14_pending) (step15_pending) (step16_pending)
    (step17_pending) (step18_pending) (step19_pending) (step20_pending))
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3)
    (step_done step4) (step_done step5) (step_done step6)
    (step_done step7) (step_done step8) (step_done step9)
    (step_done step10) (step_done step11) (step_done step12)
    (step_done step13) (step_done step14) (step_done step15)
    (step_done step16) (step_done step17) (step_done step18)
    (step_done step19) (step_done step20)
    (orientation_and_housing_registered)))
  (:metric minimize (total-time))
)