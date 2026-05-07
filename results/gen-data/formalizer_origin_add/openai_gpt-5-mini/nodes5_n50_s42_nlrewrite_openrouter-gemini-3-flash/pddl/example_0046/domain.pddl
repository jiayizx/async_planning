(define (domain mayday)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dance_done)
    (gather_done)
    (weave_done)
    (deliver_done)
    (buy_done)
  )

  ;; Step 1: Dance around the maypole (1800s)
  (:durative-action do_dance_around_maypole_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (gather_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (dance_done))
    )
  )

  ;; Step 2: Gather wildflowers from the meadow (3600s)
  (:durative-action do_gather_wildflowers_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (gather_done))
    )
  )

  ;; Step 3: Weave the flowers into decorative crowns (2700s)
  (:durative-action do_weave_flowers_into_crowns_step3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (gather_done)) (at start (buy_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (weave_done))
    )
  )

  ;; Step 4: Deliver surprise flower baskets to neighbors' porches (7200s)
  (:durative-action do_deliver_flower_baskets_step4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step4)) (at start (weave_done)) (at start (gather_done)) (at start (buy_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (deliver_done))
    )
  )

  ;; Step 5: Buy colorful ribbons and wire (1200s)
  (:durative-action do_buy_ribbons_and_wire_step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (buy_done))
    )
  )
)
