(define (domain muscle_development)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gym_found)
    (trainer_found)
    (protein_consumed)
    (routine_increased)
    (workout_done)
  )

  (:durative-action find_gym
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gym_found)))
  )

  (:durative-action find_trainer
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (gym_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trainer_found)))
  )

  (:durative-action eat_protein
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (trainer_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (protein_consumed)))
  )

  (:durative-action increase_routine
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (protein_consumed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (routine_increased)))
  )

  (:durative-action workout_everyday
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (protein_consumed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workout_done)))
  )
)