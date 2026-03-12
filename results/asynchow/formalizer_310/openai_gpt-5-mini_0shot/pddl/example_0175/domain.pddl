(define (domain tell_pregnancy)
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

  (:durative-action step1_observe
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_physical
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_fetal
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_scientific
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step4_pending)) (at start (step1_done)) (at start (step2_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )
)
