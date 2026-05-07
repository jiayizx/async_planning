(define (problem medical_abstract_problem)
  (:domain medical_abstract)
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
    (title_chosen)
    (authors_listed)
    (abstract_edited)
  ))
)