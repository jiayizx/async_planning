(define (problem calc_equity_prob)
  (:domain owners_equity)
  (:objects
    s1 s2 s3 s4 s5 s6 - step
  )
  (:init
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
    (step_pending s4)
    (step_pending s5)
    (step_pending s6)
    ;; The constraint 'Step 6 must precede step 1 and 2' implies a cyclic dependency.
    ;; To calculate the critical path for a single execution cycle, we assume the 
    ;; prerequisite for the first steps in the chain is met.
    (individual_equity_calculated)
  )
  (:goal
    (and
      (step_done s1)
      (step_done s2)
      (step_done s3)
      (step_done s4)
      (step_done s5)
      (step_done s6)
      (individual_equity_calculated)
    )
  )
)