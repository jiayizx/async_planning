(define (problem adoption_task)
  (:domain adoption)
  
  (:init
    (call_agency_pending)
    (pass_id_checks_pending)
    (wait_callback_pending)
    (meet_child_pending)
    (pass_last_id_checks_pending)
    (bring_child_home_pending)
  )

  (:goal (and
    (call_agency_done)
    (pass_id_checks_done)
    (wait_callback_done)
    (meet_child_done)
    (pass_last_id_checks_done)
    (bring_child_home_done)
  ))
)
