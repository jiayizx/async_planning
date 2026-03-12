(define (domain identify_strengths)
  (:requirements :durative-actions)
  (:predicates
    (review_job_description_pending)
    (review_job_description_done)
    (read_org_pending)
    (read_org_done)
    (match_strengths_pending)
    (match_strengths_done)
    (identify_examples_pending)
    (identify_examples_done)
  )

  (:durative-action do_review_job_description
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (review_job_description_pending))
    :effect (and (at start (not (review_job_description_pending))) (at end (review_job_description_done)))
  )

  (:durative-action do_read_about_organization
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (read_org_pending))
    :effect (and (at start (not (read_org_pending))) (at end (read_org_done)))
  )

  (:durative-action do_match_personal_strengths
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (match_strengths_pending)) (at start (review_job_description_done)) (at start (identify_examples_done)))
    :effect (and (at start (not (match_strengths_pending))) (at end (match_strengths_done)))
  )

  (:durative-action do_identify_examples
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (identify_examples_pending))
    :effect (and (at start (not (identify_examples_pending))) (at end (identify_examples_done)))
  )
)
