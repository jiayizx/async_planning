(define (domain gov_assistance_single_mothers)
  (:requirements :durative-actions)
  (:predicates
    (fafsa_pending)
    (fafsa_done)
    (pell_pending)
    (pell_done)
    (fseog_pending)
    (fseog_done)
  )

  (:durative-action do_fafsa
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (fafsa_pending))
    :effect (and (at start (not (fafsa_pending))) (at end (fafsa_done)))
  )

  (:durative-action do_pell
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pell_pending)) (at start (fafsa_done)))
    :effect (and (at start (not (pell_pending))) (at end (pell_done)))
  )

  (:durative-action do_fseog
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (fseog_pending)) (at start (fafsa_done)))
    :effect (and (at start (not (fseog_pending))) (at end (fseog_done)))
  )
)
