(define (domain guppy_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (treated_water_done)
    (acclimated_done)
    (purchased_done)
    (observed_done)
    (cycled_done)
    (tested_done)
    (introduced_done)
    (waterchange_done)
    (setup_done)
    (research_done)
  )

  (:durative-action do_step1_treat_water
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (introduced_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (treated_water_done)))
  )

  (:durative-action do_step2_acclimate
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (tested_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (acclimated_done)))
  )

  (:durative-action do_step3_purchase_equipment
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchased_done)))
  )

  (:durative-action do_step4_observe_fish
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending ?s) (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (observed_done)))
  )

  (:durative-action do_step5_cycle_tank
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (and (step_pending ?s) (setup_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cycled_done)))
  )

  (:durative-action do_step6_test_water
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (cycled_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tested_done)))
  )

  (:durative-action do_step7_introduce_guppies
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (acclimated_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (introduced_done)))
  )

  (:durative-action do_step8_first_water_change
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending ?s) (treated_water_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waterchange_done)))
  )

  (:durative-action do_step9_setup_and_heater
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (purchased_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (setup_done)))
  )

  (:durative-action do_step10_research
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )
)
