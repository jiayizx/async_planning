(define (domain video_game_setup)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (game_bought)
    (console_bought)
    (tv_hooked)
    (game_inserted)
    (game_played))

  (:durative-action step1_buy_game
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (game_bought))))

  (:durative-action step2_buy_console
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (console_bought))))

  (:durative-action step3_hook_tv
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3))
                    (at start (game_bought))
                    (at start (console_bought)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (tv_hooked))))

  (:durative-action step4_insert_game
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4))
                    (at start (tv_hooked)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (game_inserted))))

  (:durative-action step5_play_game
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5))
                    (at start (game_inserted)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (game_played))))
)