(define (problem care_dwarf_rabbits_problem)
  (:domain care_dwarf_rabbits)
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
    (vet_found)
    (vaccinated)
    (parasites_removed)
  ))
)