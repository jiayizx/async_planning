(define (domain farina_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (grains_measured)
    (water_boiled)
    (grains_whisked)
    (table_prepared)
    (farina_simmered)
  )

  (:durative-action measure_grains
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (grains_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grains_measured)))
  )

  (:durative-action boil_water
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled)))
  )

  (:durative-action whisk_grains
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grains_whisked)))
  )

  (:durative-action prepare_table
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_prepared)))
  )

  (:durative-action simmer_mixture
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (grains_measured)) (at start (grains_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (farina_simmered)))
  )
)