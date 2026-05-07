(define (problem find_job)
  (:domain job_search)
  
  (:init
    (open_laptop_pending)
    (search_forums_pending)
    (fill_applications_pending)
    (upload_resume_pending)
    (wait_callbacks_pending)
    (go_interview_pending)
  )

  (:goal (and
    (open_laptop_done)
    (search_forums_done)
    (fill_applications_done)
    (upload_resume_done)
    (wait_callbacks_done)
    (go_interview_done)
  ))
)
