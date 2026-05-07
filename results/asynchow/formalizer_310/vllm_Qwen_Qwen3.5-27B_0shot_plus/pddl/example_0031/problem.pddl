(define (problem chess_tournament_problem)
  (:domain chess_tournament)
  
  (:init
    (go_to_location_pending)
    (check_in_pending)
    (find_spot_pending)
    (run_strategies_pending)
    (go_to_chair_pending)
    (play_game_pending)
    (congratulate_pending)
  )

  (:goal (and
    (go_to_location_done)
    (check_in_done)
    (find_spot_done)
    (run_strategies_done)
    (go_to_chair_done)
    (play_game_done)
    (congratulate_done)
  ))
)