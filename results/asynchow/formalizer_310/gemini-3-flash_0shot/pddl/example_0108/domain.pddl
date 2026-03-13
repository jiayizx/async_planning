(define (domain yellowstone_trip)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
  )

  (:durative-action look_up_attractions
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action look_up_map
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action drive_to_yellowstone
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step3_pending)) (at start (step1_done)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action go_to_entrance
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action visit_attractions
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)