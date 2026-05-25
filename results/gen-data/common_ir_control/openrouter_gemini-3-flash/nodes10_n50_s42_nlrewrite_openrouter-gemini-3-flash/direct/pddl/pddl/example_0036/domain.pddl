(define (domain roast_vegetables)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (vegetables_purchased)
    (vegetables_washed_peeled)
    (vegetables_chopped)
    (vegetables_tossed)
    (oven_preheated)
    (pan_deglazed)
    (tray_lined)
    (vegetables_spread)
    (tray_placed)
    (vegetables_roasted)
  )

  (:durative-action purchase_vegetables
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_purchased)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action wash_peel_vegetables
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_washed_peeled)))
  )

  (:durative-action chop_vegetables
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_chopped)))
  )

  (:durative-action toss_vegetables
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_tossed)))
  )

  (:durative-action deglaze_pan
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pan_deglazed)))
  )

  (:durative-action line_tray
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tray_lined)))
  )

  (:durative-action spread_vegetables
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_washed_peeled)) (at start (pan_deglazed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_spread)))
  )

  (:durative-action place_tray
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_tossed)) (at start (tray_lined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tray_placed)))
  )

  (:durative-action roast_vegetables
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_spread)) (at start (vegetables_washed_peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_roasted)))
  )
)