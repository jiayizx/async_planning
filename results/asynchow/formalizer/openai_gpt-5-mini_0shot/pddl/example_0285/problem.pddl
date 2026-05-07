(define (problem care-succulents-prob)
  (:domain care-succulents)

  (:objects step1 step2 step3 - step)

  (:init
    ; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ; Goal: every step done, and final semantic predicate (quarantine_completed)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (quarantine_completed)
          ))
)
