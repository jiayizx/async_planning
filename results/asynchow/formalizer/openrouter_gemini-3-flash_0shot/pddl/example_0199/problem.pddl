(define (problem keep_cat_problem)
  (:domain keep_cat_in_yard)
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
      (fence_installed)
      (pvc_installed)
      (objects_removed)
      (net_attached)
      (enclosure_built)
    )
  )
)