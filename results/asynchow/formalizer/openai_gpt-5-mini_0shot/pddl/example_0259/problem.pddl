(define (problem make-beerbox-tophat)
  (:domain beerbox-tophat)
  (:objects step1 step2 step3 - step)
  (:init
    ;; All steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  ;; Goal: all steps completed AND the final semantic predicate (s3_done)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (s3_done)
         ))
)
