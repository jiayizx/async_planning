(define (domain pool_building)
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
    (job_monitoring_pending)
    (job_monitoring_done)
  )

  (:durative-action do_get_financed
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (get_financed_pending))
    :effect (and (at start (not (get_financed_pending))) (at end (get_financed_done)))
  )

  (:durative-action do_hire_contractor
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (hire_contractor_pending))
    :effect (and (at start (not (hire_contractor_pending))) (at end (hire_contractor_done)))
  )

  (:durative-action do_make_contract
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (make_contract_pending)) (at start (get_financed_done)) (at start (hire_contractor_done)))
    :effect (and (at start (not (make_contract_pending))) (at end (make_contract_done)))
  )

  (:durative-action do_transfer_money
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (transfer_money_pending)) (at start (make_contract_done)))
    :effect (and (at start (not (transfer_money_pending))) (at end (transfer_money_done)))
  )

  (:durative-action do_job_monitoring
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (job_monitoring_pending)) (at start (transfer_money_done)))
    :effect (and (at start (not (job_monitoring_pending))) (at end (job_monitoring_done)))
  )
)
