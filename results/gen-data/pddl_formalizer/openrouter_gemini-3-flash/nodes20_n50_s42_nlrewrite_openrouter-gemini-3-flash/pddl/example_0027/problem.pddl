(define (problem scholarship_problem)
  (:domain scholarship_application)
  (:objects
    step1_obj step2_obj step3_obj step4_obj step5_obj step6_obj step7_obj step8_obj step9_obj step10_obj
    step11_obj step12_obj step13_obj step14_obj step15_obj step16_obj step17_obj step18_obj step19_obj step20_obj - step
  )
  (:init
    (step_pending step1_obj) (step_pending step2_obj) (step_pending step3_obj) (step_pending step4_obj) (step_pending step5_obj)
    (step_pending step6_obj) (step_pending step7_obj) (step_pending step8_obj) (step_pending step9_obj) (step_pending step10_obj)
    (step_pending step11_obj) (step_pending step12_obj) (step_pending step13_obj) (step_pending step14_obj) (step_pending step15_obj)
    (step_pending step16_obj) (step_pending step17_obj) (step_pending step18_obj) (step_pending step19_obj) (step_pending step20_obj)
  )
  (:goal (and
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
  ))
  (:metric minimize (total-time))
)