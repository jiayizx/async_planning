(define (domain guppy_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (researched)
    (purchased)
    (setup_done)
    (cycled)
    (tested)
    (acclimated)
    (introduced)
    (water_treated)
    (observed)
    (water_changed)
  )

  (:durative-action research_requirements
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (researched)))
  )

  (:durative-action purchase_equipment
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchased)))
  )

  (:durative-action setup_tank
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (setup_done)))
  )

  (:durative-action cycle_tank
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (setup_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cycled)))
  )

  (:durative-action test_parameters
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (cycled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tested)))
  )

  (:durative-action acclimate_guppies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (acclimated)))
  )

  (:durative-action introduce_guppies
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (acclimated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (introduced)))
  )

  (:durative-action treat_water
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (introduced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_treated)))
  )

  (:durative-action observe_fish
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (observed)))
  )

  (:durative-action partial_water_change
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (water_treated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_changed)))
  )
)