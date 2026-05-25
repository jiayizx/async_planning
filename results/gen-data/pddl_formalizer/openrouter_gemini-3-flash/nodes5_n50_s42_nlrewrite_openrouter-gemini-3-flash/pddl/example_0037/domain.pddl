(define (domain potpourri_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shears_sterilized)
    (petals_stripped)
    (rosebuds_harvested)
    (petals_arranged)
    (lavender_cut)
  )

  (:durative-action sterilize_shears
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shears_sterilized)))
  )

  (:durative-action harvest_rosebuds
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rosebuds_harvested)))
  )

  (:durative-action strip_petals
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rosebuds_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (petals_stripped)))
  )

  (:durative-action cut_lavender
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shears_sterilized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lavender_cut)))
  )

  (:durative-action arrange_petals
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shears_sterilized)) (at start (petals_stripped)) (at start (lavender_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (petals_arranged)))
  )
)