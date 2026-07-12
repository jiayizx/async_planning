(define (domain year-round-herbs)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_slot ?s - step)
    (step2_slot ?s - step)
    (step3_slot ?s - step)
    (step4_slot ?s - step)
    (step5_slot ?s - step)
    (grow_lights_installed)
    (organic_seeds_purchased)
    (seeds_germinated)
    (seedlings_transplanted)
    (windowsill_space_cleared)
  )

  (:durative-action install_led_grow_lights
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (step1_slot ?s))
      (at start (windowsill_space_cleared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grow_lights_installed))
    )
  )

  (:durative-action research_and_purchase_organic_seeds
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (step2_slot ?s))
      (at start (windowsill_space_cleared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (organic_seeds_purchased))
    )
  )

  (:durative-action sow_seeds_and_wait_for_germination
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (step3_slot ?s))
      (at start (organic_seeds_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (seeds_germinated))
    )
  )

  (:durative-action transplant_seedlings
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (step4_slot ?s))
      (at start (organic_seeds_purchased))
      (at start (seeds_germinated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (seedlings_transplanted))
    )
  )

  (:durative-action clear_windowsill_space
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (step5_slot ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (windowsill_space_cleared))
    )
  )
)