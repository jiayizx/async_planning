(define (problem lose_upper_body_fat_prob)
  (:domain lose_upper_body_fat)
  (:objects step1 step2 step3 step4 - step)
  (:init
    ;; initialize all steps as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  ;; Goal requires all steps done and the semantic outcomes so the planner
  ;; must perform step4 before 1,2,3 and must complete all steps.
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (s1_semantic_done)
            (s2_semantic_done)
            (s3_semantic_done)
            (s4_semantic_done)
          ))
)
