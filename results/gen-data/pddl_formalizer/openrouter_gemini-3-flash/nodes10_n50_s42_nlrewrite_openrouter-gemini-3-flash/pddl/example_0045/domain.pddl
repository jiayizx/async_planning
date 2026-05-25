(define (domain roast_turnips)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchased)
    (preheated)
    (garnished)
    (tossed)
    (whisked)
    (washed)
    (greased)
    (diced)
    (roasted)
    (dried)
  )

  (:durative-action purchase_turnips
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchased)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (preheated)))
  )

  (:durative-action garnish_dish
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garnished)))
  )

  (:durative-action toss_turnips
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tossed)))
  )

  (:durative-action whisk_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (whisked)))
  )

  (:durative-action wash_turnips
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (washed)))
  )

  (:durative-action grease_sheet
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (greased)))
  )

  (:durative-action dice_turnips
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (diced)))
  )

  (:durative-action roast_turnips
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending ?s)) (at start (preheated)) (at start (greased)) (at start (diced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roasted)))
  )

  (:durative-action dry_turnips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dried)))
  )
)