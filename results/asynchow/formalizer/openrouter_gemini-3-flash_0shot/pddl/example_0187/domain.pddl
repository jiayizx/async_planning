(define (domain identify_strengths)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (job_reviewed)
    (org_researched)
    (examples_identified)
    (strengths_matched)
  )

  (:durative-action review_job_description
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (job_reviewed)))
  )

  (:durative-action research_organization
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (org_researched)))
  )

  (:durative-action match_strengths
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and 
      (at start (step_pending ?s))
      (at start (job_reviewed))
      (at start (examples_identified))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strengths_matched)))
  )

  (:durative-action identify_examples
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (examples_identified)))
  )
)