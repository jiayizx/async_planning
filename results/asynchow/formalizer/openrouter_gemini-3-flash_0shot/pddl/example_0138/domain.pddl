(define (domain government_assistance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (fafsa_done)
    (pell_grant_done)
    (fseog_done)
  )

  (:durative-action fill_fafsa
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fafsa_done)))
  )

  (:durative-action apply_pell_grant
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (fafsa_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pell_grant_done)))
  )

  (:durative-action apply_fseog
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (fafsa_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fseog_done)))
  )
)