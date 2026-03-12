(define (domain find_homes_puppies)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
  )

  (:durative-action step1_establish_requirements
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_establish_return_policy
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_add_spay_neuter_clause
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_have_new_owners_sign_it
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_pending)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )
)
