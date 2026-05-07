(define (problem dress_for_audition_prob)
  (:domain dress_for_audition)
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
    (clothes_worn)
    (shoes_on)
    (hair_up)
  ))
)