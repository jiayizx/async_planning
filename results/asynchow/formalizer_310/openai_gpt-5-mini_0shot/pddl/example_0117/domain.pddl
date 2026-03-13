(define (domain learn-basketball)
  (:requirements :durative-actions)
  (:predicates
    (hire_coach_pending)
    (hire_coach_done)
    (buy_ball_pending)
    (buy_ball_done)
    (find_court_pending)
    (find_court_done)
    (practice_dribble_pending)
    (practice_dribble_done)
    (practice_shoot_pending)
    (practice_shoot_done)
  )

  (:durative-action hire_coach
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (hire_coach_pending))
    :effect (and (at start (not (hire_coach_pending))) (at end (hire_coach_done)))
  )

  (:durative-action buy_ball
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (buy_ball_pending))
    :effect (and (at start (not (buy_ball_pending))) (at end (buy_ball_done)))
  )

  (:durative-action find_court
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (find_court_pending)) (at start (buy_ball_done)))
    :effect (and (at start (not (find_court_pending))) (at end (find_court_done)))
  )

  (:durative-action practice_dribble
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (practice_dribble_pending)) (at start (hire_coach_done)) (at start (find_court_done)))
    :effect (and (at start (not (practice_dribble_pending))) (at end (practice_dribble_done)))
  )

  (:durative-action practice_shoot
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (practice_shoot_pending)) (at start (hire_coach_done)) (at start (find_court_done)))
    :effect (and (at start (not (practice_shoot_pending))) (at end (practice_shoot_done)))
  )
)
