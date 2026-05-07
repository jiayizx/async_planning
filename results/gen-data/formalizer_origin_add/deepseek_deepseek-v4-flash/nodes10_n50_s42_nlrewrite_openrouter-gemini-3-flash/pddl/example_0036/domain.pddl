(define (domain roast_vegetables)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tossed)
    (purchased)
    (spread)
    (roasted)
    (preheated)
    (washed)
    (chopped)
    (lined)
    (placed_tray)
    (deglazed)
  )
  
  (:durative-action toss_vegetables
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (purchased)) (at start (chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tossed)))
  )
  
  (:durative-action purchase_squash_carrots
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchased)))
  )
  
  (:durative-action spread_vegetables
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (preheated)) (at start (washed)) (at start (deglazed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spread)))
  )
  
  (:durative-action roast_vegetables
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (spread)) (at start (preheated)) (at start (washed)) (at start (deglazed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roasted)))
  )
  
  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (preheated)))
  )
  
  (:durative-action wash_peel_vegetables
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (washed)))
  )
  
  (:durative-action chop_vegetables
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chopped)))
  )
  
  (:durative-action line_baking_tray
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (tossed)) (at start (purchased)) (at start (chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lined)))
  )
  
  (:durative-action place_tray_in_oven
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (tossed)) (at start (purchased)) (at start (chopped)) (at start (lined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (placed_tray)))
  )
  
  (:durative-action deglaze_pan
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (deglazed)))
  )
)