(define (domain tuna_patties_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tuna_drained)
    (veg_diced)
    (tuna_flaked)
    (eggs_whisked)
    (egg_wash_mixed)
    (tuna_veg_combined)
    (patties_formed)
    (breadcrumbs_hydrated)
    (patties_fried)
    (sauce_prepared)
  )

  (:durative-action drain_tuna
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tuna_drained)))
  )

  (:durative-action dice_veg
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (veg_diced)))
  )

  (:durative-action flake_tuna
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (tuna_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tuna_flaked)))
  )

  (:durative-action whisk_eggs
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (tuna_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_whisked)))
  )

  (:durative-action mix_egg_wash
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (eggs_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_wash_mixed)))
  )

  (:durative-action combine_tuna_veg
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (veg_diced)) (at start (tuna_flaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tuna_veg_combined)))
  )

  (:durative-action form_patties
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (tuna_veg_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patties_formed)))
  )

  (:durative-action hydrate_breadcrumbs
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (egg_wash_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breadcrumbs_hydrated)))
  )

  (:durative-action fry_patties
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (patties_formed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patties_fried)))
  )

  (:durative-action prepare_sauce
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (tuna_flaked)) (at start (eggs_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_prepared)))
  )
)