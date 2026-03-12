(define (domain chess-tournament)
  (:requirements :durative-actions)
  (:predicates
    (go_to_location_pending)
    (go_to_location_done)
    (check_in_pending)
    (check_in_done)
    (find_spot_pending)
    (find_spot_done)
    (run_strategies_pending)
    (run_strategies_done)
    (go_to_chair_pending)
    (go_to_chair_done)
    (play_opponent_pending)
    (play_opponent_done)
    (congratulate_opponent_pending)
    (congratulate_opponent_done)
  )

  (:durative-action go_to_location
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (go_to_location_pending))
    :effect (and (at start (not (go_to_location_pending))) (at end (go_to_location_done)))
  )

  (:durative-action check_in
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (check_in_pending)) (at start (go_to_location_done)))
    :effect (and (at start (not (check_in_pending))) (at end (check_in_done)))
  )

  (:durative-action find_spot
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (find_spot_pending)) (at start (check_in_done)))
    :effect (and (at start (not (find_spot_pending))) (at end (find_spot_done)))
  )

  (:durative-action run_strategies
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (run_strategies_pending)) (at start (check_in_done)))
    :effect (and (at start (not (run_strategies_pending))) (at end (run_strategies_done)))
  )

  (:durative-action go_to_chair
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (go_to_chair_pending)) (at start (find_spot_done)) (at start (run_strategies_done)))
    :effect (and (at start (not (go_to_chair_pending))) (at end (go_to_chair_done)))
  )

  (:durative-action play_opponent
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (play_opponent_pending)) (at start (go_to_chair_done)))
    :effect (and (at start (not (play_opponent_pending))) (at end (play_opponent_done)))
  )

  (:durative-action congratulate_opponent
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (congratulate_opponent_pending)) (at start (play_opponent_done)))
    :effect (and (at start (not (congratulate_opponent_pending))) (at end (congratulate_opponent_done)))
  )
)
