(define (domain product-photography-critical-path)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (photography_complete))
  (:durative-action execute_complete_schedule
    :parameters (?s - step)
    :duration (= ?duration 352140)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (photography_complete))))
)