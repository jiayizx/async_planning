(define (problem bake_soft_cookies_prob)
  (:domain bake_soft_cookies)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (cookies_stored)
    (towel_added)
    (bread_included)
  ))
)