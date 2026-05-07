(define (domain iron_shirt)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (iron_clean)
    (water_filled)
    (board_adjusted)
    (hang_place_ready)
    (towels_ready)
  )

  (:durative-action clean_iron
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (iron_clean)))
  )

  (:durative-action fill_water
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (iron_clean)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_filled)))
  )

  (:durative-action adjust_board
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (board_adjusted)))
  )

  (:durative-action prepare_hang_place
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hang_place_ready)))
  )

  (:durative-action get_towels
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (towels_ready)))
  )
)