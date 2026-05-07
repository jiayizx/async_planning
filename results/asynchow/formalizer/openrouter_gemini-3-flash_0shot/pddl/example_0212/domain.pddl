(define (domain turn_bad_day_around)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (source_identified)
    (small_step_planned)
    (ongoing_solutions_found)
    (positive_focus_achieved)
    (perspective_gained)
  )

  (:durative-action identify_source
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (source_identified)))
  )

  (:durative-action plan_small_step
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (source_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (small_step_planned)))
  )

  (:durative-action address_ongoing
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (small_step_planned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ongoing_solutions_found)))
  )

  (:durative-action focus_positive
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (positive_focus_achieved)))
  )

  (:durative-action remember_perspective
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (perspective_gained)))
  )
)