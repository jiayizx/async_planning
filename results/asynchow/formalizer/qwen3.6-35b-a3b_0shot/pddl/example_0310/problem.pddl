(define (problem take_measurements)
  (:domain take_measurements)
  (:objects step1 step2 step3 step4 step5 step6 step7 - step)
  (:init 
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4)
    (step_pending step5) (step_pending step6) (step_pending step7))
  (:goal 
    (and (step_done step1) (step_done step2) (step_done step3) (step_done step4)
         (step_done step5) (step_done step6) (step_done step7)
         (waist_identified) (waist_measured) (hip_measured) (inseam_measured)
         (trousers_used) (thigh_measured) (half_girth_measured))))