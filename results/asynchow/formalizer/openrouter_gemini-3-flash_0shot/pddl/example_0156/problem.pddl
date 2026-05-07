(define (problem keep_sodium_levels_up_prob)
  (:domain keep_sodium_levels_up)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (physician_consulted)
    (anti_nausea_taken)
    (anti_diarrheals_taken)
  ))
)