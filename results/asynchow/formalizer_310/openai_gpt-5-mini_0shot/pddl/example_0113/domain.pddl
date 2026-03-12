(define (domain cooking_knowledge)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action do_step1_buy_food
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step1_pending))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done)) ) )

  (:durative-action do_step2_lookup_videos
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step2_pending))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done)) ) )

  (:durative-action do_step3_watch_videos
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done)) ) )

  (:durative-action do_step4_cut_ingredients
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step4_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step4_done)) ) )

  (:durative-action do_step5_put_together
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and
              (at start (not (step5_pending)))
              (at end (step5_done)) ) )
)
