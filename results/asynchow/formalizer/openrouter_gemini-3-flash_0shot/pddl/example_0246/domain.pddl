(define (domain puppy_adoption)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (requirements_established)
    (return_policy_established)
    (clause_added)
    (contract_signed)
  )

  (:durative-action establish_requirements
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (requirements_established)))
  )

  (:durative-action establish_return_policy
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (return_policy_established)))
  )

  (:durative-action add_clause
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clause_added)))
  )

  (:durative-action sign_contract
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and 
      (at start (step_pending ?s))
      (at start (requirements_established))
      (at start (return_policy_established))
      (at start (clause_added))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_signed)))
  )
)