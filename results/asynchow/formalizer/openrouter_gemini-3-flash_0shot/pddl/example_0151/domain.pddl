(define (domain firearms_brazil)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (docs_2_ready)
    (docs_3_ready)
    (application_filed)
  )

  (:durative-action prepare_docs_2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (docs_2_ready)))
  )

  (:durative-action prepare_docs_3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (docs_3_ready)))
  )

  (:durative-action fill_application_sinarm
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (docs_2_ready)) (at start (docs_3_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_filed)))
  )
)