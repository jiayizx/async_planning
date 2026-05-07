(define (domain app_development)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (idea_generated)
    (functions_planned)
    (logistics_planned)
    (code_written)
    (app_tested)
  )

  (:durative-action come_up_with_idea
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (idea_generated)))
  )

  (:durative-action plan_functions
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (idea_generated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (functions_planned)))
  )

  (:durative-action plan_logistics
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (idea_generated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (logistics_planned)))
  )

  (:durative-action write_code
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (functions_planned)) (at start (logistics_planned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (code_written)))
  )

  (:durative-action test_app
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (code_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (app_tested)))
  )
)