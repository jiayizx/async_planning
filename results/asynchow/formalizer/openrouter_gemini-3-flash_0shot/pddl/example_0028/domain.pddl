(define (domain video_game_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (game_bought)
    (console_bought)
    (console_hooked)
    (game_inserted)
    (game_played)
  )

  (:durative-action buy_game
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (game_bought)))
  )

  (:durative-action buy_console
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (console_bought)))
  )

  (:durative-action hook_up_tv
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (game_bought)) (at start (console_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (console_hooked)))
  )

  (:durative-action insert_game
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (console_hooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (game_inserted)))
  )

  (:durative-action hit_play
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (game_inserted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (game_played)))
  )
)