(define (domain superhero_movie)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
  )

  (:durative-action purchase_tickets
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step1_pending)) (at start (step8_done)) (at start (step10_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action charge_power_bank
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action check_parking
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step3_pending)) (at start (step11_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action decide_theater
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action invite_friends
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action pack_bag
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step6_pending)) (at start (step2_done)) (at start (step4_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action browse_trailers
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action select_showtime
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step8_pending)) (at start (step4_done)) (at start (step14_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action drive_to_cinema
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step9_pending)) (at start (step1_done)) (at start (step3_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action read_reviews
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step10_pending)) (at start (step7_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action map_route
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step11_pending)) (at start (step14_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action ask_off_work
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step12_pending))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action check_calendar
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step13_pending))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action finalize_date
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step14_pending)) (at start (step12_done)) (at start (step13_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action put_on_shirt
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step15_pending)) (at start (step2_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)