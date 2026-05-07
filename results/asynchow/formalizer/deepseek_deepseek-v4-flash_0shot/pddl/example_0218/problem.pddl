(define (problem pickle_jalapenos_problem)
  (:domain pickle_jalapenos)
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and (step_done step1) (step_done step2) (step_done step3) (step3_done)))
)