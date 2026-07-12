(define (domain potpourri-flowers)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_done ?s - step)
    (sterilize_pending ?s - step)
    (strip_pending ?s - step)
    (harvest_pending ?s - step)
    (arrange_pending ?s - step)
    (lavender_pending ?s - step)
    (shears_sterilized)
    (petals_stripped)
    (rosebuds_harvested)
    (petals_arranged)
    (lavender_cut)
  )

  (:durative-action sterilize_shears
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (sterilize_pending ?s))
    :effect (and
      (at start (not (sterilize_pending ?s)))
      (at end (step_done ?s))
      (at end (shears_sterilized))
    )
  )

  (:durative-action strip_petals
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (strip_pending ?s))
      (at start (rosebuds_harvested))
    )
    :effect (and
      (at start (not (strip_pending ?s)))
      (at end (step_done ?s))
      (at end (petals_stripped))
    )
  )

  (:durative-action harvest_rosebuds
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (harvest_pending ?s))
    :effect (and
      (at start (not (harvest_pending ?s)))
      (at end (step_done ?s))
      (at end (rosebuds_harvested))
    )
  )

  (:durative-action arrange_petals
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (arrange_pending ?s))
      (at start (shears_sterilized))
      (at start (lavender_cut))
    )
    :effect (and
      (at start (not (arrange_pending ?s)))
      (at end (step_done ?s))
      (at end (petals_arranged))
    )
  )

  (:durative-action select_cut_lavender
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (lavender_pending ?s))
      (at start (shears_sterilized))
    )
    :effect (and
      (at start (not (lavender_pending ?s)))
      (at end (step_done ?s))
      (at end (lavender_cut))
    )
  )
)