(define (problem look_good_instance)
  (:domain look_good_for_party)
  (:objects step1 step2 step3 step4 - step)
  (:init
    ;; All steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  ;; Goal requires every step completed and a final semantic predicate
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (groom_done)
  ))
)
