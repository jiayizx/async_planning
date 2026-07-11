(define (domain pool_construction)
  (:requirements :durative-actions)
  
  (:predicates
    (get_financed_pending)
    (get_financed_done)
    (hire_contractor_pending)
    (hire_contractor_done)
    (make_contract_pending)
    (make_contract_done)
    (transfer_money_pending)
    (transfer_money_done)
    (monitor_job_pending)
    (monitor_job_done)
  )

  (:durative-action get_financed
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (get_financed_pending))
    :effect (and (at start (not (get_financed_pending))) (at end (get_financed_done)))
  )

  (:durative-action hire_contractor
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (hire_contractor_pending))
    :effect (and (at start (not (hire_contractor_pending))) (at end (hire_contractor_done)))
  )

  (:durative-action make_contract
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (make_contract_pending)) (at start (get_financed_done)) (at start (hire_contractor_done)))
    :effect (and (at start (not (make_contract_pending))) (at end (make_contract_done)))
  )

  (:durative-action transfer_money
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (transfer_money_pending)) (at start (make_contract_done)))
    :effect (and (at start (not (transfer_money_pending))) (at end (transfer_money_done)))
  )

  (:durative-action monitor_job
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (monitor_job_pending)) (at start (transfer_money_done)))
    :effect (and (at start (not (monitor_job_pending))) (at end (monitor_job_done)))
  )
)
