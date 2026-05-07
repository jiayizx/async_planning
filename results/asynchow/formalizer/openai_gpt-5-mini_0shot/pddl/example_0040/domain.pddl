(define (domain build_pool)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (financed_done)
    (hired_done)
    (contract_made_done)
    (money_transferred_done)
    (monitoring_done)
  )

  (:durative-action do_step1_get_financed
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (financed_done))
    )
  )

  (:durative-action do_step2_hire_contractor
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (hired_done))
    )
  )

  (:durative-action do_step3_make_contract
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (financed_done)) (at start (hired_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (contract_made_done))
    )
  )

  (:durative-action do_step4_transfer_money
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step4)) (at start (contract_made_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (money_transferred_done))
    )
  )

  (:durative-action do_step5_monitor_progress
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step5)) (at start (money_transferred_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (monitoring_done))
    )
  )
)
