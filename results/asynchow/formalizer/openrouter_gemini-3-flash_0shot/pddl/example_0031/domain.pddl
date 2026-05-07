(define (domain chess_tournament)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_location)
    (checked_in)
    (spot_found)
    (strategies_reviewed)
    (at_chair)
    (game_played)
    (congratulated)
  )

  (:durative-action go_to_location
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_location)))
  )

  (:durative-action check_in
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (at_location)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (checked_in)))
  )

  (:durative-action find_spot
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (checked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spot_found)))
  )

  (:durative-action review_strategies
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (checked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strategies_reviewed)))
  )

  (:durative-action go_to_chair
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (spot_found)) (at start (strategies_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_chair)))
  )

  (:durative-action play_game
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (at_chair)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (game_played)))
  )

  (:durative-action congratulate_opponent
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (game_played)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (congratulated)))
  )
)