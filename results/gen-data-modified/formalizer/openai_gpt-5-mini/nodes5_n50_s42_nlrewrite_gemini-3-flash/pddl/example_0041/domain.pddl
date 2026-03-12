(define (domain sippy_cup)
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
    (step5_pending)
    (step5_done)
  )

  (:durative-action step1_retrieve_clean_cup
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step1_done))
    )
  )

  (:durative-action step2_screw_lid_tight
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step2_pending)) (at start (step3_done)))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step2_done))
    )
  )

  (:durative-action step3_fill_with_apple_juice
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step3_done))
    )
  )

  (:durative-action step4_take_long_sip
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step4_pending)) (at start (step5_done)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step4_done))
    )
  )

  (:durative-action step5_sit_in_high_chair
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step5_pending))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step5_done))
    )
  )
)
