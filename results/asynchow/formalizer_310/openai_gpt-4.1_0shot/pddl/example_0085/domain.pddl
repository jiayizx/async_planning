(define (domain adopt-child)
  (:requirements :durative-actions)
  (:predicates
    (call_agency_pending)
    (call_agency_done)
    (pass_id_checks_pending)
    (pass_id_checks_done)
    (wait_called_back_pending)
    (wait_called_back_done)
    (meet_child_pending)
    (meet_child_done)
    (pass_last_id_checks_pending)
    (pass_last_id_checks_done)
    (bring_child_home_pending)
    (bring_child_home_done)
  )

  (:durative-action call_agency
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (call_agency_pending))
    :effect (and (at start (not (call_agency_pending))) (at end (call_agency_done)))
  )

  (:durative-action pass_id_checks
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (pass_id_checks_pending)) (at start (call_agency_done)))
    :effect (and (at start (not (pass_id_checks_pending))) (at end (pass_id_checks_done)))
  )

  (:durative-action wait_called_back
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (wait_called_back_pending)) (at start (pass_id_checks_done)))
    :effect (and (at start (not (wait_called_back_pending))) (at end (wait_called_back_done)))
  )

  (:durative-action meet_child
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (meet_child_pending)) (at start (wait_called_back_done)))
    :effect (and (at start (not (meet_child_pending))) (at end (meet_child_done)))
  )

  (:durative-action pass_last_id_checks
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (pass_last_id_checks_pending)) (at start (wait_called_back_done)))
    :effect (and (at start (not (pass_last_id_checks_pending))) (at end (pass_last_id_checks_done)))
  )

  (:durative-action bring_child_home
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (bring_child_home_pending)) (at start (meet_child_done)) (at start (pass_last_id_checks_done)))
    :effect (and (at start (not (bring_child_home_pending))) (at end (bring_child_home_done)))
  )
)
