(define (problem remove-old-caulking-prob)
  (:domain remove-old-caulking)

  (:objects s1 s2 s3 s4 - step)

  (:init
    ;; all steps start pending
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
    (step_pending s4)

    ;; identify which object corresponds to which action
    (is_s1 s1)
    (is_s2 s2)
    (is_s3 s3)
    (is_s4 s4)
  )

  ;; Goal: all steps done and final semantic predicate s3_done
  ;; Including s3_done forces the chain 2 -> 4 -> 3 to be respected
  (:goal (and
            (step_done s1)
            (step_done s2)
            (step_done s3)
            (step_done s4)
            (s3_done)
         ))
)
