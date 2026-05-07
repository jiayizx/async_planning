(define (domain pregnancy_diagnosis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (observed)
    (physical_changes_noted)
    (diagnosis_confirmed)
    (fetal_response_checked)
  )

  ;; Step 1: Observe behavior (2 months = 60 days)
  (:durative-action observe_behavior
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (observed)))
  )

  ;; Step 2: Physical changes (3 months = 90 days)
  (:durative-action note_physical_changes
    :parameters (?s - step)
    :duration (= ?duration 90)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (physical_changes_noted)))
  )

  ;; Step 4: Scientific diagnosis (2 weeks = 14 days)
  ;; Constraints: Step 1 and Step 2 must precede Step 4
  (:durative-action perform_diagnosis
    :parameters (?s - step)
    :duration (= ?duration 14)
    :condition (and (at start (step_pending ?s)) (at start (observed)) (at start (physical_changes_noted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (diagnosis_confirmed)))
  )

  ;; Step 3: Fetal responsiveness (1 month = 30 days)
  ;; Constraints: Step 4 must precede Step 3
  (:durative-action check_fetal_responsiveness
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (diagnosis_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fetal_response_checked)))
  )
)