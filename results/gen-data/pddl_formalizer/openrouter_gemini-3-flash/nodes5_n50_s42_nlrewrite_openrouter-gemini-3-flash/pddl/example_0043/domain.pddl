(define (domain child_safety_awareness)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (seminar_attended)
    (case_studies_reviewed)
    (guidelines_researched)
    (checklist_downloaded)
    (cross_referenced)
  )

  (:durative-action research_guidelines
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guidelines_researched)))
  )

  (:durative-action attend_seminar
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (guidelines_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seminar_attended)))
  )

  (:durative-action review_case_studies
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (seminar_attended)) (at start (guidelines_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (case_studies_reviewed)))
  )

  (:durative-action download_checklist
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (guidelines_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (checklist_downloaded)))
  )

  (:durative-action cross_reference
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (guidelines_researched)) (at start (checklist_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cross_referenced)))
  )
)