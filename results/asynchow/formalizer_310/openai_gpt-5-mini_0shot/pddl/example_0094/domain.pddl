(define (domain varsity)
  (:requirements :durative-actions)
  (:predicates
    (play_jv_pending) (play_jv_done)
    (train_summer_pending) (train_summer_done)
    (confess_coach_pending) (confess_coach_done)
    (show_skills_pending) (show_skills_done)
    (receive_spot_pending) (receive_spot_done)
    (pre_season_game_pending) (pre_season_game_done)
    (first_var_game_pending) (first_var_game_done)
  )

  (:durative-action do_play_jv
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (at start (play_jv_pending))
    :effect (and (at start (not (play_jv_pending))) (at end (play_jv_done)))
  )

  (:durative-action do_train_summer
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (train_summer_pending)) (at start (play_jv_done)))
    :effect (and (at start (not (train_summer_pending))) (at end (train_summer_done)))
  )

  (:durative-action do_confess_coach
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (confess_coach_pending)) (at start (play_jv_done)))
    :effect (and (at start (not (confess_coach_pending))) (at end (confess_coach_done)))
  )

  (:durative-action do_show_skills
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (show_skills_pending)) (at start (train_summer_done)))
    :effect (and (at start (not (show_skills_pending))) (at end (show_skills_done)))
  )

  (:durative-action do_receive_spot
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (receive_spot_pending)) (at start (confess_coach_done)) (at start (pre_season_game_done)))
    :effect (and (at start (not (receive_spot_pending))) (at end (receive_spot_done)))
  )

  (:durative-action do_pre_season_game
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (pre_season_game_pending)) (at start (show_skills_done)))
    :effect (and (at start (not (pre_season_game_pending))) (at end (pre_season_game_done)))
  )

  (:durative-action do_first_var_game
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (first_var_game_pending)) (at start (receive_spot_done)))
    :effect (and (at start (not (first_var_game_pending))) (at end (first_var_game_done)))
  )
)
