(define (domain basketball_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (coach_hired)
    (ball_bought)
    (court_found)
    (dribbling_practiced)
    (shooting_practiced)
  )

  (:durative-action hire_coach
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coach_hired)))
  )

  (:durative-action buy_ball
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ball_bought)))
  )

  (:durative-action find_court
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (ball_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (court_found)))
  )

  (:durative-action practice_dribbling
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (coach_hired)) (at start (court_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dribbling_practiced)))
  )

  (:durative-action practice_shooting
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (coach_hired)) (at start (court_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shooting_practiced)))
  )
)