(define (domain roast-fall-vegetables)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (vegetables_seasoned)
    (produce_purchased)
    (vegetables_spread)
    (vegetables_roasted)
    (oven_preheated)
    (vegetables_washed_peeled)
    (vegetables_chopped)
    (tray_lined)
    (tray_in_oven)
    (pan_deglazed)
  )

  (:durative-action season_vegetables
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (vegetables_chopped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_seasoned))
    )
  )

  (:durative-action purchase_produce
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (produce_purchased))
    )
  )

  (:durative-action spread_vegetables
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (vegetables_washed_peeled))
      (at start (pan_deglazed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_spread))
    )
  )

  (:durative-action roast_vegetables
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (vegetables_spread))
      (at start (vegetables_washed_peeled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_roasted))
    )
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oven_preheated))
    )
  )

  (:durative-action wash_and_peel
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (oven_preheated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_washed_peeled))
    )
  )

  (:durative-action chop_vegetables
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (produce_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_chopped))
    )
  )

  (:durative-action line_baking_tray
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (vegetables_seasoned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tray_lined))
    )
  )

  (:durative-action place_tray_in_oven
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (vegetables_seasoned))
      (at start (tray_lined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tray_in_oven))
    )
  )

  (:durative-action deglaze_pan
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pan_deglazed))
    )
  )
)