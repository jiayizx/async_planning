(define (problem attract_birds_problem)
  (:domain attract_birds)
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
    (nest_box_hung)
    (nest_box_installed)
    (nesting_materials_provided)
  ))
)