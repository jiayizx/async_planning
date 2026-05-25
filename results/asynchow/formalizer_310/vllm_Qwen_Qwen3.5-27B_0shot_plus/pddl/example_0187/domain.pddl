(define (domain identify_strengths)
  (:requirements :durative-actions)
  
  (:predicates
    (review_job_desc_pending)
    (review_job_desc_done)
    (read_org_pending)
    (read_org_done)
    (match_strengths_pending)
    (match_strengths_done)
    (identify_examples_pending)
    (identify_examples_done)
  )

  (:durative-action review_job_desc
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (review_job_desc_pending))
    :effect (and (at start (not (review_job_desc_pending)))
                 (at end (review_job_desc_done)))
  )

  (:durative-action read_org
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (read_org_pending))
    :effect (and (at start (not (read_org_pending)))
                 (at end (read_org_done)))
  )

  (:durative-action identify_examples
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (identify_examples_pending))
    :effect (and (at start (not (identify_examples_pending)))
                 (at end (identify_examples_done)))
  )

  (:durative-action match_strengths
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (match_strengths_pending))
                    (at start (review_job_desc_done))
                    (at start (identify_examples_done)))
    :effect (and (at start (not (match_strengths_pending)))
                 (at end (match_strengths_done)))
  )
)