(define (domain make_money)
  (:requirements :durative-actions)
  
  (:predicates
    (pick_up_application_pending)
    (pick_up_application_done)
    (go_to_restaurant_pending)
    (go_to_restaurant_done)
    (turn_in_application_pending)
    (turn_in_application_done)
    (work_summer_job_pending)
    (work_summer_job_done)
    (fill_out_application_pending)
    (fill_out_application_done)
  )

  (:durative-action pick_up_application
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pick_up_application_pending))
    :effect (and (at start (not (pick_up_application_pending)))
                 (at end (pick_up_application_done)))
  )

  (:durative-action go_to_restaurant
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (go_to_restaurant_pending))
    :effect (and (at start (not (go_to_restaurant_pending)))
                 (at end (go_to_restaurant_done)))
  )

  (:durative-action fill_out_application
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (fill_out_application_pending))
                    (at start (pick_up_application_done)))
    :effect (and (at start (not (fill_out_application_pending)))
                 (at end (fill_out_application_done)))
  )

  (:durative-action turn_in_application
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (turn_in_application_pending))
                    (at start (go_to_restaurant_done))
                    (at start (fill_out_application_done)))
    :effect (and (at start (not (turn_in_application_pending)))
                 (at end (turn_in_application_done)))
  )

  (:durative-action work_summer_job
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (work_summer_job_pending))
                    (at start (turn_in_application_done)))
    :effect (and (at start (not (work_summer_job_pending)))
                 (at end (work_summer_job_done)))
  )
)
