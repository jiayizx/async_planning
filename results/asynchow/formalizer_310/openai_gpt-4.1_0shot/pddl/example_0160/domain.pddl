(define (domain react_bumped_flight)
  (:requirements :durative-actions)
  (:predicates
    (speak_with_gate_agent_pending)
    (speak_with_gate_agent_done)
    (confirm_flight_pending)
    (confirm_flight_done)
    (ask_for_reimbursement_pending)
    (ask_for_reimbursement_done)
    (ask_for_vouchers_pending)
    (ask_for_vouchers_done)
  )

  (:durative-action speak_with_gate_agent
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (speak_with_gate_agent_pending))
    :effect (and
      (at start (not (speak_with_gate_agent_pending)))
      (at end (speak_with_gate_agent_done))
    )
  )

  (:durative-action confirm_flight
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (confirm_flight_pending))
      (at start (speak_with_gate_agent_done))
    )
    :effect (and
      (at start (not (confirm_flight_pending)))
      (at end (confirm_flight_done))
    )
  )

  (:durative-action ask_for_reimbursement
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (ask_for_reimbursement_pending))
      (at start (speak_with_gate_agent_done))
    )
    :effect (and
      (at start (not (ask_for_reimbursement_pending)))
      (at end (ask_for_reimbursement_done))
    )
  )

  (:durative-action ask_for_vouchers
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (ask_for_vouchers_pending))
      (at start (speak_with_gate_agent_done))
    )
    :effect (and
      (at start (not (ask_for_vouchers_pending)))
      (at end (ask_for_vouchers_done))
    )
  )
)
