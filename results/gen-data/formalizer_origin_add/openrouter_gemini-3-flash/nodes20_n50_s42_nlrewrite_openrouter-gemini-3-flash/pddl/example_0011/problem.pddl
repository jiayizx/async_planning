(define (problem bacteria_collection_problem)
  (:domain bacteria_collection)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
    (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
    (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
  )
  (:goal
    (and
      (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
      (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
      (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
      (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    )
  )
)