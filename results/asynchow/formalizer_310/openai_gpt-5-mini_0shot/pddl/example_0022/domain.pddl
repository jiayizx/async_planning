(define (domain make_lasagna)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
  )

  (:durative-action step1_go_to_store
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_buy_noodles
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_buy_sauce
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_go_home
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step4_pending)) (at start (step2_done)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_assemble_ingredients
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_preheat_oven
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step6_pending)) (at start (step4_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7_cover_dish
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step7_pending)) (at start (step4_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )
)
