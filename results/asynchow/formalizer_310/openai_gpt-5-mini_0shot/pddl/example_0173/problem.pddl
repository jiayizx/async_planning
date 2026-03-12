(define (problem switch_careers_problem)
  (:domain switch_careers)
  (:init
    (update_resume_pending)
    (apply_jobs_pending)
    (practice_interview_pending)
  )
  (:goal (and
    (update_resume_done)
    (apply_jobs_done)
    (practice_interview_done)
  ))
)
