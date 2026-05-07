(define (domain vacation_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (researched)
    (planned)
    (invited)
    (costs_split)
    (vacation_ready)
  )

  (:durative-action research_trip
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (researched)))
  )

  (:durative-action plan_budget
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (planned)))
  )

  (:durative-action invite_others
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (planned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invited)))
  )

  (:durative-action split_costs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (planned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (costs_split)))
  )

  (:durative-action meet_at_airport
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (invited)) (at start (costs_split)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vacation_ready)))
  )
)