(define (domain varsity_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (play_jv_season_pending)
    (play_jv_season_done)
    (train_skills_pending)
    (train_skills_done)
    (confess_commitment_pending)
    (confess_commitment_done)
    (show_skills_pending)
    (show_skills_done)
    (receive_spot_pending)
    (receive_spot_done)
    (perform_preseason_pending)
    (perform_preseason_done)
    (head_field_pending)
    (head_field_done)
  )

  (:durative-action play_jv_season
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (at start (play_jv_season_pending))
    :effect (and (at start (not (play_jv_season_pending))) (at end (play_jv_season_done)))
  )

  (:durative-action train_skills
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (train_skills_pending)) (at start (play_jv_season_done)))
    :effect (and (at start (not (train_skills_pending))) (at end (train_skills_done)))
  )

  (:durative-action confess_commitment
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (confess_commitment_pending)) (at start (play_jv_season_done)))
    :effect (and (at start (not (confess_commitment_pending))) (at end (confess_commitment_done)))
  )

  (:durative-action show_skills
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (show_skills_pending)) (at start (train_skills_done)))
    :effect (and (at start (not (show_skills_pending))) (at end (show_skills_done)))
  )

  (:durative-action perform_preseason
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (perform_preseason_pending)) (at start (show_skills_done)))
    :effect (and (at start (not (perform_preseason_pending))) (at end (perform_preseason_done)))
  )

  (:durative-action receive_spot
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (receive_spot_pending)) (at start (confess_commitment_done)) (at start (perform_preseason_done)))
    :effect (and (at start (not (receive_spot_pending))) (at end (receive_spot_done)))
  )

  (:durative-action head_field
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (head_field_pending)) (at start (receive_spot_done)))
    :effect (and (at start (not (head_field_pending))) (at end (head_field_done)))
  )
)
