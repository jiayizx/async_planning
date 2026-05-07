(define (problem build_generator_prob)
  (:domain build_generator)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (plate_fabricated)
      (pulleys_mounted)
      (belts_run)
      (tank_mounted)
      (gas_reconnected)
    )
  )
)