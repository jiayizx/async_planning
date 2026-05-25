(define (domain roast_turnips)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (turnips_purchased)
    (oven_preheated)
    (parsley_garnished)
    (turnips_tossed)
    (mixture_whisked)
    (turnips_washed)
    (sheet_greased)
    (turnips_diced)
    (turnips_roasted)
    (turnips_dried)
  )

  (:durative-action purchase_turnips
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnips_purchased)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action whisk_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_whisked)))
  )

  (:durative-action wash_turnips
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnips_washed)))
  )

  (:durative-action peel_dice_turnips
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (turnips_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnips_diced)))
  )

  (:durative-action grease_sheet
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sheet_greased)))
  )

  (:durative-action toss_turnips
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (mixture_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnips_tossed)))
  )

  (:durative-action dry_turnips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (turnips_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnips_dried)))
  )

  (:durative-action roast_turnips
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)) (at start (sheet_greased)) (at start (turnips_diced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turnips_roasted)))
  )

  (:durative-action garnish_parsley
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (turnips_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_garnished)))
  )
)