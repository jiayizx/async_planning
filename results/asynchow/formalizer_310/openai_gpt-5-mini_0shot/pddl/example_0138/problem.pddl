(define (problem get_gov_assistance_single_mothers_problem)
  (:domain get_gov_assistance_single_mothers)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done)))
)
