(define (problem weekend_exciting_problem)
  (:domain weekend_exciting)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ; initialize all pending predicates true as required
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
  )

  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    ; final semantic predicate forces the planner to respect the causal chain
    (step5_completed)
  ))
)
