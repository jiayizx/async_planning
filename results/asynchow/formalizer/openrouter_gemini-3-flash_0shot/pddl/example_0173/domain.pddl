(define (domain career_switch)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (resume_updated)
    (jobs_applied)
    (interview_skills_practiced)
  )

  (:durative-action update_resume
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (resume_updated))
    )
  )

  (:durative-action apply_jobs
    :parameters (?s - step)
    :duration (= ?duration 2419200)
    :condition (and
      (at start (step_pending ?s))
      (at start (resume_updated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jobs_applied))
    )
  )

  (:durative-action practice_interviewing
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (interview_skills_practiced))
    )
  )
)