(define (domain warning-signs-planning)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (seminar_attended)
    (case_studies_reviewed)
    (guidelines_researched)
    (checklist_downloaded)
    (warning_signs_identified)
  )

  (:durative-action attend_professional_seminar
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (guidelines_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (seminar_attended))
    )
  )

  (:durative-action review_grooming_case_studies
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (seminar_attended))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (case_studies_reviewed))
    )
  )

  (:durative-action research_safety_guidelines
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guidelines_researched))
    )
  )

  (:durative-action download_symptoms_checklist
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (guidelines_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (checklist_downloaded))
    )
  )

  (:durative-action cross_reference_observed_changes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (checklist_downloaded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (warning_signs_identified))
    )
  )
)