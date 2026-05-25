(define (problem find_good_homes)
  (:domain puppy_homes)
  
  (:init
    (establish_requirements_pending)
    (establish_return_policy_pending)
    (add_spay_neuter_clause_pending)
    (have_owners_sign_pending)
  )

  (:goal (and
    (establish_requirements_done)
    (establish_return_policy_done)
    (add_spay_neuter_clause_done)
    (have_owners_sign_done)
  ))
)
