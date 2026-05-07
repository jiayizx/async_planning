(define (problem wear_harem_pants_prob)
  (:domain wear_harem_pants)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (crop_top_worn)
      (top_picked)
      (shirt_tucked)
    )
  )
)