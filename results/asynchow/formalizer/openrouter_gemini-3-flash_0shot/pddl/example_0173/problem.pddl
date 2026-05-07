(define (problem career_switch_prob)
  (:domain career_switch)
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
    (resume_updated)
    (jobs_applied)
    (interview_skills_practiced)
  ))
)