(define (domain video_games)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (system_picked)
    (games_searched)
    (interests_matched)
    (ordered)
    (setup_complete)
  )

  (:durative-action pick_system
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (system_picked)))
  )

  (:durative-action search_games
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (system_picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (games_searched)))
  )

  (:durative-action match_interests
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (system_picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interests_matched)))
  )

  (:durative-action order_online
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (games_searched)) (at start (interests_matched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ordered)))
  )

  (:durative-action setup_system
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (setup_complete)))
  )
)