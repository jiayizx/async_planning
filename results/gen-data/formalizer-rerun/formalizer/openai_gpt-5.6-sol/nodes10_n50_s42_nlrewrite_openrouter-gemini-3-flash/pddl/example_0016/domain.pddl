(define (domain healthy-guppies)
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
    (water_dechlorinated)
    (guppies_acclimated)
    (aquarium_purchased)
    (fish_observed)
    (tank_cycled)
    (water_tested)
    (guppies_introduced)
    (water_change_performed)
    (tank_setup)
    (requirements_researched)
  )

  (:durative-action treat-tap-water
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (guppies_introduced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_dechlorinated)))
  )

  (:durative-action acclimate-guppies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (water_tested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guppies_acclimated)))
  )

  (:durative-action purchase-aquarium
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (aquarium_purchased)))
  )

  (:durative-action observe-fish
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (requirements_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fish_observed)))
  )

  (:durative-action cycle-tank
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (tank_setup)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tank_cycled)))
  )

  (:durative-action test-water
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (tank_cycled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_tested)))
  )

  (:durative-action introduce-guppies
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (guppies_acclimated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guppies_introduced)))
  )

  (:durative-action perform-water-change
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (water_dechlorinated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_change_performed)))
  )

  (:durative-action setup-tank
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (aquarium_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tank_setup)))
  )

  (:durative-action research-requirements
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (requirements_researched)))
  )
)