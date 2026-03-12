(define (problem dha_problem)
  (:domain dha_domain)
  (:init
    ;; All pending predicates start true
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
  )

  ;; Goal requires every step's done predicate
  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
  ))
)
