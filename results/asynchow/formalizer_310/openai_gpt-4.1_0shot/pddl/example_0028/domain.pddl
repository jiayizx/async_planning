(define (domain play_video_game)
  (:requirements :durative-actions)
  (:predicates
    (buy_video_game_pending)
    (buy_video_game_done)
    (buy_console_pending)
    (buy_console_done)
    (hook_console_pending)
    (hook_console_done)
    (put_game_in_pending)
    (put_game_in_done)
    (hit_play_pending)
    (hit_play_done)
  )

  (:durative-action buy_video_game
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (buy_video_game_pending))
    :effect (and (at start (not (buy_video_game_pending))) (at end (buy_video_game_done)))
  )

  (:durative-action buy_console
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (buy_console_pending))
    :effect (and (at start (not (buy_console_pending))) (at end (buy_console_done)))
  )

  (:durative-action hook_console
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (hook_console_pending)) (at start (buy_video_game_done)) (at start (buy_console_done)))
    :effect (and (at start (not (hook_console_pending))) (at end (hook_console_done)))
  )

  (:durative-action put_game_in
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (put_game_in_pending)) (at start (hook_console_done)))
    :effect (and (at start (not (put_game_in_pending))) (at end (put_game_in_done)))
  )

  (:durative-action hit_play
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (hit_play_pending)) (at start (put_game_in_done)))
    :effect (and (at start (not (hit_play_pending))) (at end (hit_play_done)))
  )
)
