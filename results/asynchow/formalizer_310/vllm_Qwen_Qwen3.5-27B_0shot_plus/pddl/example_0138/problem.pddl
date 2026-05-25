(define (problem get_assistance)
  (:domain government_assistance)
  
  (:init
    (fafsa_pending)
    (pell_pending)
    (fseog_pending)
  )

  (:goal (and (fafsa_done) (pell_done) (fseog_done)))
)