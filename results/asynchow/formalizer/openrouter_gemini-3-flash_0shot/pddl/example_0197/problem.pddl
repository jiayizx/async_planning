(define (problem reference_task)
  (:domain reference_numeric_style)
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
    (instructor_consulted)
    (citations_numbered_individually)
    (citations_numbered_alphabetically)
  ))
)