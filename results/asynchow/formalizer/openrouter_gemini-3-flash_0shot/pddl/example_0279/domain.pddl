(define (domain off_balance_exercise)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (trainer_worked)
    (balls_used)
    (split_stance_done)
    (board_exercises_done)
  )

  (:durative-action work_with_trainer
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trainer_worked)))
  )

  (:durative-action use_balls
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (trainer_worked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balls_used)))
  )

  (:durative-action incorporate_split_stance
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (trainer_worked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (split_stance_done)))
  )

  (:durative-action try_board_exercises
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (trainer_worked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (board_exercises_done)))
  )
)