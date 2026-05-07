(define (problem walk_in_swamp)
  (:domain swamp_walking)
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
      (shirt_pants_worn)
      (waterproof_gear_on)
      (gloves_worn)
      (boots_socks_worn)
      (hat_worn)
    )
  )
)