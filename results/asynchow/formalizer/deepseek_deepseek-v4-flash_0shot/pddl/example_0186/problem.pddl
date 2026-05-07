(define (problem remove_old_caulking_problem)
  (:domain remove_old_caulking)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (pending step1)
    (pending step2)
    (pending step3)
    (pending step4)
  )
  (:goal (and (done step1) (done step2) (done step3) (done step4)))
)