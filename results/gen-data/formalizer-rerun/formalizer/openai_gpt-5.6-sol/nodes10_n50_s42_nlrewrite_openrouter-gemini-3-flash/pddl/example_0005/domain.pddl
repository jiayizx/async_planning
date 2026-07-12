(define (domain wear-gloves-to-bed)
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
    (cream_applied)
    (gloves_located)
    (gloves_checked)
    (bed_prepared)
    (thermostat_set)
    (water_placed)
    (hands_washed_and_dried)
    (gloves_worn)
    (smart_panel_reached)
    (gloves_retrieved)
  )

  (:durative-action apply_hand_cream
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (gloves_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cream_applied)))
  )

  (:durative-action locate_gloves
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gloves_located)))
  )

  (:durative-action check_gloves
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (gloves_located))
      (at start (hands_washed_and_dried)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gloves_checked)))
  )

  (:durative-action prepare_bed
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bed_prepared)))
  )

  (:durative-action set_thermostat
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (smart_panel_reached)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (thermostat_set)))
  )

  (:durative-action place_water
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (bed_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_placed)))
  )

  (:durative-action wash_and_dry_hands
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hands_washed_and_dried)))
  )

  (:durative-action pull_on_gloves
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (cream_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gloves_worn)))
  )

  (:durative-action navigate_to_smart_panel
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (smart_panel_reached)))
  )

  (:durative-action retrieve_gloves
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (gloves_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gloves_retrieved)))
  )
)