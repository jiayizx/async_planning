(define (domain flight_bump_reaction)
  (:requirements :durative-actions)
  
  (:predicates
    (speak_pending)
    (speak_done)
    (confirm_pending)
    (confirm_done)
    (reimburse_pending)
    (reimburse_done)
    (vouchers_pending)
    (vouchers_done)
  )

  (:durative-action speak_with_agent
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (speak_pending))
    :effect (and (at start (not (speak_pending))) (at end (speak_done)))
  )

  (:durative-action confirm_flight
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (confirm_pending)) (at start (speak_done)))
    :effect (and (at start (not (confirm_pending))) (at end (confirm_done)))
  )

  (:durative-action ask_reimbursement
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (reimburse_pending)) (at start (speak_done)))
    :effect (and (at start (not (reimburse_pending))) (at end (reimburse_done)))
  )

  (:durative-action ask_vouchers
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (vouchers_pending)) (at start (speak_done)))
    :effect (and (at start (not (vouchers_pending))) (at end (vouchers_done)))
  )
)
