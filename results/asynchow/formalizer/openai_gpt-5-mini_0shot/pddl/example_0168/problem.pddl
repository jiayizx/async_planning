(define (problem play_with_chinchilla_prob)
  (:domain play_with_chinchilla)

  (:objects step1 step2 step3 step4 - step)

  (:init
    ;; initialize all pending predicates (rule 7)
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
  )

  (:goal (and
            (step1_done)
            (step2_done)
            (step3_done)
            (step4_done)
            (s4_completed)
            (play_ready)
          ))
)
