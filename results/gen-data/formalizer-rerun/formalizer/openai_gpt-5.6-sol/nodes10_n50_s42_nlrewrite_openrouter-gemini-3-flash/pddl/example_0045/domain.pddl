(define (domain roast-turnips)
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
    (turnips_purchased)
    (oven_preheated)
    (dish_garnished)
    (turnips_tossed)
    (oil_spice_mixture_whisked)
    (turnips_washed)
    (baking_sheet_greased)
    (turnips_diced)
    (turnips_roasted)
    (turnips_dried)
  )

  (:durative-action purchase_turnips
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_purchased))))

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oven_preheated))))

  (:durative-action garnish_dish
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (turnips_dried)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dish_garnished))))

  (:durative-action toss_turnips
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (oil_spice_mixture_whisked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_tossed))))

  (:durative-action whisk_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oil_spice_mixture_whisked))))

  (:durative-action wash_turnips
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_washed))))

  (:durative-action grease_baking_sheet
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (oven_preheated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baking_sheet_greased))))

  (:durative-action peel_and_dice_turnips
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (turnips_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_diced))))

  (:durative-action roast_turnips
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (oven_preheated))
      (at start (baking_sheet_greased))
      (at start (turnips_diced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_roasted))))

  (:durative-action dry_turnips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (turnips_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (turnips_dried))))
)