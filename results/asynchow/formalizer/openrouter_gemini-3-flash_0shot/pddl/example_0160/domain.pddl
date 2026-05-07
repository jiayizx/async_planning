(define (domain flight_bump_reaction)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (agent_spoken)
    (flight_confirmed)
    (reimbursement_requested)
    (vouchers_requested)
  )

  (:durative-action speak_with_gate_agent
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (agent_spoken)))
  )

  (:durative-action confirm_flight
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (agent_spoken)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (flight_confirmed)))
  )

  (:durative-action ask_for_reimbursement
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (agent_spoken)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (reimbursement_requested)))
  )

  (:durative-action ask_for_vouchers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (agent_spoken)))
    :effect (and (at start (not (step_pending ?s))) 
                 (at end (step_done ?s)) 
                 (at end (vouchers_requested)))
  )
)