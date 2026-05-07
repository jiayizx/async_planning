(define (domain guppy_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (water_dechlorinated)
    (guppies_acclimated)
    (equipment_purchased)
    (fish_observed)
    (tank_cycled)
    (water_tested)
    (guppies_introduced)
    (water_changed)
    (tank_setup)
    (research_done)
  )

  (:durative-action purchase_equipment
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_purchased)))
  )

  (:durative-action research_requirements
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action setup_tank
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (equipment_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tank_setup)))
  )

  (:durative-action cycle_tank
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (tank_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tank_cycled)))
  )

  (:durative-action test_water
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (tank_cycled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_tested)))
  )

  (:durative-action acclimate_guppies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (water_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guppies_acclimated)))
  )

  (:durative-action introduce_guppies
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (guppies_acclimated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guppies_introduced)))
  )

  (:durative-action dechlorinate_water
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (guppies_introduced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_dechlorinated)))
  )

  (:durative-action observe_fish
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_observed)))
  )

  (:durative-action change_water
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (water_dechlorinated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_changed)))
  )
)