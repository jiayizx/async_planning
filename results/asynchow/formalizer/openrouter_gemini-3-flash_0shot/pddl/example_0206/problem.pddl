(define (problem puff_pastry_problem)
  (:domain puff_pastry_making)
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
      (shells_ready)
      (brie_ready)
      (puffs_ready)
      (ham_cheese_ready)
      (twists_ready)
    )
  )
)