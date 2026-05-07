(define (problem play_neighbor_problem)
  (:domain play_neighbor)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)

    ; identity bindings so each durative-action can only apply to its corresponding step object
    (is_step1 step1)
    (is_step2 step2)
    (is_step3 step3)
    (is_step4 step4)
    (is_step5 step5)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    ; final semantic predicate: walking across the street (step4) must be produced
    (s4_done)
  ))
)
