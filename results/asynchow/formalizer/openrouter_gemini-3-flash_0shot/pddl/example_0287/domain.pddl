(define (domain credit_judgment_removal)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (public_records_found)
    (reports_obtained)
    (court_docs_gathered)
    (docs_included)
    (dispute_letter_written)
    (letter_mailed)
    (entry_removed)
  )

  (:durative-action step1_look_public_records
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (reports_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (public_records_found)))
  )

  (:durative-action step2_get_reports
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reports_obtained)))
  )

  (:durative-action step3_gather_court_docs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (court_docs_gathered)))
  )

  (:durative-action step4_write_dispute_letter
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (docs_included)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dispute_letter_written)))
  )

  (:durative-action step5_include_docs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (public_records_found)) (at start (court_docs_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (docs_included)))
  )

  (:durative-action step6_mail_letter
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (dispute_letter_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (letter_mailed)))
  )

  (:durative-action step7_confirm_removal
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (letter_mailed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (entry_removed)))
  )
)