(define (domain find_part_time_job)
  (:requirements :durative-actions)
  (:predicates
    (open_laptop_pending)
    (open_laptop_done)
    (search_job_forums_pending)
    (search_job_forums_done)
    (fill_out_applications_pending)
    (fill_out_applications_done)
    (upload_resume_pending)
    (upload_resume_done)
    (wait_for_callbacks_pending)
    (wait_for_callbacks_done)
    (go_to_interview_pending)
    (go_to_interview_done)
  )

  (:durative-action open_laptop
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (open_laptop_pending))
    :effect (and (at start (not (open_laptop_pending))) (at end (open_laptop_done)))
  )

  (:durative-action search_job_forums
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_job_forums_pending)) (at start (open_laptop_done)))
    :effect (and (at start (not (search_job_forums_pending))) (at end (search_job_forums_done)))
  )

  (:durative-action fill_out_applications
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (fill_out_applications_pending)) (at start (search_job_forums_done)))
    :effect (and (at start (not (fill_out_applications_pending))) (at end (fill_out_applications_done)))
  )

  (:durative-action upload_resume
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (upload_resume_pending)) (at start (search_job_forums_done)))
    :effect (and (at start (not (upload_resume_pending))) (at end (upload_resume_done)))
  )

  (:durative-action wait_for_callbacks
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (wait_for_callbacks_pending)) (at start (fill_out_applications_done)) (at start (upload_resume_done)))
    :effect (and (at start (not (wait_for_callbacks_pending))) (at end (wait_for_callbacks_done)))
  )

  (:durative-action go_to_interview
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (go_to_interview_pending)) (at start (wait_for_callbacks_done)))
    :effect (and (at start (not (go_to_interview_pending))) (at end (go_to_interview_done)))
  )
)
