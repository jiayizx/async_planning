(define (domain deal_with_anxiety_ordering)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (order_phone_done)
    (drive_thru_done)
    (friend_order_done)
    (app_order_done)
    (food_received)
  )

  ;; Step 1: Order over the phone (5 minutes = 300 seconds)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (order_phone_done))
    )
  )

  ;; Step 2: Go through a drive-thru (10 minutes = 600 seconds)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (drive_thru_done))
    )
  )

  ;; Step 3: Ask a friend to order for you (3 minutes = 180 seconds)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (friend_order_done))
    )
  )

  ;; Step 4: Use an app or order online (5 minutes = 300 seconds)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (app_order_done))
    )
  )

  ;; Step 5: Receive your food (2 minutes = 120 seconds)
  ;; Requires steps 1-4 completed before it can start
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step5))
      (at start (order_phone_done))
      (at start (drive_thru_done))
      (at start (friend_order_done))
      (at start (app_order_done))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (food_received))
    )
  )
)
