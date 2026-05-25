(define (domain job_search)
  (:requirements :durative-actions)
  
  (:predicates
    (open_laptop_pending)
    (open_laptop_done)
    (search_forums_pending)
    (search_forums_done)
    (fill_applications_pending)
    (fill_applications_done)
    (upload_resume_pending)
    (upload_resume_done)
    (wait_callbacks_pending)
    (wait_callbacks_done)
    (go_interview_pending)
    (go_interview_done)
  )

  (:durative-action open_laptop
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (open_laptop_pending)))
    :effect (and (at start (not (open_laptop_pending))) (at end (open_laptop_done)))
  )

  (:durative-action search_forums
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_forums_pending)) (at start (open_laptop_done)))
    :effect (and (at start (not (search_forums_pending))) (at end (search_forums_done)))
  )

  (:durative-action fill_applications
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (fill_applications_pending)) (at start (search_forums_done)))
    :effect (and (at start (not (fill_applications_pending))) (at end (fill_applications_done)))
  )

  (:durative-action upload_resume
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (upload_resume_pending)) (at start (search_forums_done)))
    :effect (and (at start (not (upload_resume_pending))) (at end (upload_resume_done)))
  )

  (:durative-action wait_callbacks
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (wait_callbacks_pending)) (at start (fill_applications_done)) (at start (upload_resume_done)))
    :effect (and (at start (not (wait_callbacks_pending))) (at end (wait_callbacks_done)))
  )

  (:durative-action go_interview
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (go_interview_pending)) (at start (wait_callbacks_done)))
    :effect (and (at start (not (go_interview_pending))) (at end (go_interview_done)))
  )
)
