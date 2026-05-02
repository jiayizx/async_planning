(define (problem buy_firearms_brazil_problem)
  (:domain buy_firearms_brazil)
  (:init
    (fill_sinarm_pending)
    (prepare_docs_A_pending)
    (prepare_docs_B_pending)
  )
  (:goal (and
    (fill_sinarm_done)
    (prepare_docs_A_done)
    (prepare_docs_B_done)
  ))
)
