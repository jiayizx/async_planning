(define (domain gym_attendance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gyms_searched)
    (prices_compared)
    (hours_checked)
    (driven_to_gym)
    (membership_obtained)
  )

  (:durative-action search_gyms
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gyms_searched)))
  )

  (:durative-action compare_prices
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (gyms_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prices_compared)))
  )

  (:durative-action check_hours
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (gyms_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hours_checked)))
  )

  (:durative-action drive_to_gym
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (prices_compared)) (at start (hours_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_gym)))
  )

  (:durative-action get_membership
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_gym)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (membership_obtained)))
  )
)