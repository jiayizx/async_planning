(define (problem run_for_president)
  (:domain class_president)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (classmates_spoken)
      (issues_identified)
      (platform_written)
      (speeches_made)
      (posters_made)
    )
  )
)