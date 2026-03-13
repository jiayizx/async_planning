(define (domain avoid_ironing)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
  )

  (:durative-action do_step1_buy_steamer
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s1_pending))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action do_step2_fill_and_turn_on
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s2_pending)) (at start (s1_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action do_step3_put_item_on_hanger
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s3_pending))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action do_step4_hold_steamer_head_up
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s4_pending)) (at start (s2_done)) (at start (s3_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action do_step5_hang_clothes_in_shower
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s5_pending))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )
)
