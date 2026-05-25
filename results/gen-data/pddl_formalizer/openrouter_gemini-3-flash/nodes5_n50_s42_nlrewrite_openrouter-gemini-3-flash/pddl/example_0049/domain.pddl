(define (domain self_analysis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (notebook_purchased)
    (values_defined)
    (records_reviewed)
    (report_written)
    (session_scheduled)
  )

  (:durative-action purchase_notebook
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (notebook_purchased)))
  )

  (:durative-action define_values
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (notebook_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (values_defined)))
  )

  (:durative-action review_records
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (values_defined)) (at start (notebook_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (records_reviewed)))
  )

  (:durative-action write_report
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (records_reviewed)) (at start (values_defined)) (at start (notebook_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (report_written)))
  )

  (:durative-action schedule_session
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (notebook_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (session_scheduled)))
  )
)