(define (domain vacation_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pros_cons_mulled)
    (husband_preference_known)
    (self_preference_selected)
    (locations_written)
    (papers_in_hat)
    (location_drawn)
  )

  (:durative-action mull_pros_cons
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pros_cons_mulled)))
  )

  (:durative-action ask_husband
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pros_cons_mulled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (husband_preference_known)))
  )

  (:durative-action select_self_preference
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (pros_cons_mulled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (self_preference_selected)))
  )

  (:durative-action write_locations
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (husband_preference_known)) (at start (self_preference_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (locations_written)))
  )

  (:durative-action put_in_hat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (locations_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (papers_in_hat)))
  )

  (:durative-action draw_from_hat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (papers_in_hat)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (location_drawn)))
  )
)