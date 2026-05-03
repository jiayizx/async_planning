(define (problem identify_strengths_problem)
  (:domain identify_strengths)
  
  (:init
    (review_job_desc_pending)
    (read_org_pending)
    (match_strengths_pending)
    (identify_examples_pending)
  )
  
  (:goal (and
    (review_job_desc_done)
    (read_org_done)
    (match_strengths_done)
    (identify_examples_done)
  ))
)