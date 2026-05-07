(define (domain varsity_start)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (jv_season_done)
    (summer_training_done)
    (commitment_confessed)
    (skills_shown)
    (varsity_spot_received)
    (preseason_performance_done)
    (varsity_start_achieved)
  )

  (:durative-action play_jv_season
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jv_season_done)))
  )

  (:durative-action train_summer
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (jv_season_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summer_training_done)))
  )

  (:durative-action confess_commitment
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (jv_season_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (commitment_confessed)))
  )

  (:durative-action show_skills
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (summer_training_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skills_shown)))
  )

  (:durative-action perform_preseason
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (skills_shown)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (preseason_performance_done)))
  )

  (:durative-action receive_varsity_spot
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (commitment_confessed)) (at start (preseason_performance_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (varsity_spot_received)))
  )

  (:durative-action head_to_field
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (varsity_spot_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (varsity_start_achieved)))
  )
)