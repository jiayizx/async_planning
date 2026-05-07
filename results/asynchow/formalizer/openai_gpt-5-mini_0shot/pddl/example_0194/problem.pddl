(define (problem protect_from_sun_prob)
  (:domain protect_from_sun)
  (:objects s1 s2 s3 s4 - step)
  (:init
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
    (step_pending s4)
  )
  ; Ordering constraint: Step 4 must precede Step 1.
  ; Enforced by requiring s4_ok as a start condition of step1 (see domain).
  (:goal (and
    (step_done s1)
    (step_done s2)
    (step_done s3)
    (step_done s4)
    ; final semantic predicate: outcome of the last action in the causal chain
    (s1_ok)
  ))
)
