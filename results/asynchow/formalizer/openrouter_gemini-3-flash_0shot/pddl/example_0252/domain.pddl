(define (domain chili_sauce_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (ingredients_in_pan)
    (mixture_boiled)
    (slurry_prepared)
    (slurry_added)
    (sauce_whisked)
    (sauce_cooled)
  )

  (:durative-action step1_put_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_in_pan)))
  )

  (:durative-action step2_boil_mixture
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_in_pan)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_boiled)))
  )

  (:durative-action step3_whisk_slurry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slurry_prepared)))
  )

  (:durative-action step4_add_slurry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (mixture_boiled)) (at start (slurry_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slurry_added)))
  )

  (:durative-action step5_whisk_sauce
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slurry_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_whisked)))
  )

  (:durative-action step6_cool_sauce
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (sauce_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_cooled)))
  )
)