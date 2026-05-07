(define (domain backflip_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (videos_searched)
    (videos_watched)
    (gym_contacted)
    (feasibility_confirmed)
    (trainer_booked)
    (advice_followed)
    (training_completed)
  )

  (:durative-action search_videos
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (videos_searched)))
  )

  (:durative-action watch_videos
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (videos_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (videos_watched)))
  )

  (:durative-action contact_gym
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (videos_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gym_contacted)))
  )

  (:durative-action ask_feasibility
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (gym_contacted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (feasibility_confirmed)))
  )

  (:durative-action book_trainer
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (gym_contacted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trainer_booked)))
  )

  (:durative-action follow_advice
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (feasibility_confirmed)) (at start (trainer_booked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (advice_followed)))
  )

  (:durative-action continue_training
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (advice_followed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (training_completed)))
  )
)