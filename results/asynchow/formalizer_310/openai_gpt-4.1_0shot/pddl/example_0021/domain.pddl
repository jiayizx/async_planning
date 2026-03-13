(define (domain play_video_games)
  (:requirements :durative-actions)
  (:predicates
    (pick_system_pending)
    (pick_system_done)
    (search_games_pending)
    (search_games_done)
    (order_online_pending)
    (order_online_done)
    (setup_system_pending)
    (setup_system_done)
    (find_interesting_games_pending)
    (find_interesting_games_done)
  )

  (:durative-action pick_system
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (pick_system_pending))
    :effect (and (at start (not (pick_system_pending))) (at end (pick_system_done)))
  )

  (:durative-action search_games
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_games_pending)) (at start (pick_system_done)))
    :effect (and (at start (not (search_games_pending))) (at end (search_games_done)))
  )

  (:durative-action order_online
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (order_online_pending)) (at start (search_games_done)) (at start (find_interesting_games_done)))
    :effect (and (at start (not (order_online_pending))) (at end (order_online_done)))
  )

  (:durative-action setup_system
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (setup_system_pending)) (at start (order_online_done)))
    :effect (and (at start (not (setup_system_pending))) (at end (setup_system_done)))
  )

  (:durative-action find_interesting_games
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (find_interesting_games_pending)) (at start (pick_system_done)))
    :effect (and (at start (not (find_interesting_games_pending))) (at end (find_interesting_games_done)))
  )
)
