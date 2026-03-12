(define (problem diagnose-geriatric-hamsters-problem)
  (:domain diagnose-geriatric-hamsters)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done)))
)
