(define (domain introduce_friends)
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

  (:durative-action send_invite
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action research_restaurant
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action create_group_chat
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action book_table
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step4_pending)) (at start (step2_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action host_dinner
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)