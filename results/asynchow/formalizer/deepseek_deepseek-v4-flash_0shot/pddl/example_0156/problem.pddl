(define (problem keep_sodium_levels_problem)
  (:domain keep_sodium_levels_up)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done) (talk_done) (nausea_done) (diarrheals_done)))
)