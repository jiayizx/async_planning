(define (problem build_pool)
  (:domain pool_construction)
  
  (:init
    (get_financed_pending)
    (hire_contractor_pending)
    (make_contract_pending)
    (transfer_money_pending)
    (monitor_job_pending)
  )

  (:goal (and
    (get_financed_done)
    (hire_contractor_done)
    (make_contract_done)
    (transfer_money_done)
    (monitor_job_done)
  ))
)
