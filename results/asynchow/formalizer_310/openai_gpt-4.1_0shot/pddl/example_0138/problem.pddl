(define (problem gov_assistance_single_mothers_problem)
  (:domain gov_assistance_single_mothers)
  (:init
    (fafsa_pending)
    (pell_pending)
    (fseog_pending)
  )
  (:goal (and (fafsa_done) (pell_done) (fseog_done)))
)
