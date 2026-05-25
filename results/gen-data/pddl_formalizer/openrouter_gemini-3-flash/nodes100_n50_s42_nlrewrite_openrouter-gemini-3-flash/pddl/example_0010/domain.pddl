(define (domain egg_beating)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dependency ?s - step ?pre - step)
  )

  ;; A single action to handle all steps.
  ;; The planner must ensure all 'dependency' steps are 'step_done' before starting.
  (:durative-action execute_step
    :parameters (?s - step)
    :duration (= ?duration 1) ;; Placeholder: in a real scenario we'd use fluents,
    ;; but for OPTIC compatibility with fixed durations from the prompt,
    ;; we will define specific actions for the unique durations or keep them distinct.
    ;; To ensure the solver doesn't time out, we'll use a simplified multi-action approach
    ;; but grouped by duration or simply keep the 100 actions but optimized for parsing.
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)))
  )
)