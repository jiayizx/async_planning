(define (domain make-farina)
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
    (grains_measured)
    (water_boiled)
    (grains_whisked)
    (table_and_toppings_prepared)
    (farina_thickened)
  )

  (:durative-action measure_dry_farina
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (grains_whisked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grains_measured))
    )
  )

  (:durative-action boil_salted_water
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_boiled))
    )
  )

  (:durative-action whisk_grains_into_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (water_boiled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grains_whisked))
    )
  )

  (:durative-action prepare_table_and_toppings
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (water_boiled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (table_and_toppings_prepared))
    )
  )

  (:durative-action simmer_until_thickened
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (grains_measured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (farina_thickened))
    )
  )
)