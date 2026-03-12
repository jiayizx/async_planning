(define (domain canoe_making)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action apply_sealant
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action harvest_log
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action hollow_log
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action carve_bow_stern
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action install_seats
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step5_pending)) (at start (step3_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)