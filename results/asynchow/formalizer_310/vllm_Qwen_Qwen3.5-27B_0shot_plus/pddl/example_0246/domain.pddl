(define (domain puppy_homes)
  (:requirements :durative-actions)
  
  (:predicates
    (establish_requirements_pending)
    (establish_requirements_done)
    (establish_return_policy_pending)
    (establish_return_policy_done)
    (add_spay_neuter_clause_pending)
    (add_spay_neuter_clause_done)
    (have_owners_sign_pending)
    (have_owners_sign_done)
  )

  (:durative-action establish_requirements
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (establish_requirements_pending))
    :effect (and (at start (not (establish_requirements_pending)))
                 (at end (establish_requirements_done)))
  )

  (:durative-action establish_return_policy
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (establish_return_policy_pending))
    :effect (and (at start (not (establish_return_policy_pending)))
                 (at end (establish_return_policy_done)))
  )

  (:durative-action add_spay_neuter_clause
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (add_spay_neuter_clause_pending))
    :effect (and (at start (not (add_spay_neuter_clause_pending)))
                 (at end (add_spay_neuter_clause_done)))
  )

  (:durative-action have_owners_sign
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (have_owners_sign_pending))
                    (at start (establish_requirements_done))
                    (at start (establish_return_policy_done))
                    (at start (add_spay_neuter_clause_done)))
    :effect (and (at start (not (have_owners_sign_pending)))
                 (at end (have_owners_sign_done)))
  )
)
