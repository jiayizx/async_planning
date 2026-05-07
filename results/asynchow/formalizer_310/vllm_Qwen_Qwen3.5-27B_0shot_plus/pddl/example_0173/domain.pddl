(define (domain switch_careers)
  (:requirements :durative-actions)
  
  (:predicates
    (update_resume_pending)
    (update_resume_done)
    (apply_jobs_pending)
    (apply_jobs_done)
    (practice_interview_pending)
    (practice_interview_done)
  )

  (:durative-action do_update_resume
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (update_resume_pending))
    :effect (and (at start (not (update_resume_pending))) (at end (update_resume_done)))
  )

  (:durative-action do_apply_jobs
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and (at start (apply_jobs_pending)) (at start (update_resume_done)))
    :effect (and (at start (not (apply_jobs_pending))) (at end (apply_jobs_done)))
  )

  (:durative-action do_practice_interview
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (at start (practice_interview_pending))
    :effect (and (at start (not (practice_interview_pending))) (at end (practice_interview_done)))
  )
)
