(define (problem make_sims_hunger_games)
  (:domain sims_hunger_games)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (pending_step step1)
    (pending_step step2)
    (pending_step step3)
    (pending_step step4)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (traits_given)
  ))
)