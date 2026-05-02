(define (domain exfoliate_eyebrows)
  (:requirements :durative-actions)
  (:predicates
    (step1_sanitize_pending)
    (step1_sanitize_done)
    (step2_apply_pending)
    (step2_apply_done)
    (step3_rub_pending)
    (step3_rub_done)
    (step4_rinse_pending)
    (step4_rinse_done)
  )

  (:durative-action step1_sanitize
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step1_sanitize_pending))
    :effect (and
      (at start (not (step1_sanitize_pending)))
      (at end (step1_sanitize_done))
    )
  )

  (:durative-action step2_apply
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step2_apply_pending)) (at start (step1_sanitize_done)))
    :effect (and
      (at start (not (step2_apply_pending)))
      (at end (step2_apply_done))
    )
  )

  (:durative-action step3_rub
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step3_rub_pending)) (at start (step2_apply_done)) (at start (step4_rinse_done)))
    :effect (and
      (at start (not (step3_rub_pending)))
      (at end (step3_rub_done))
    )
  )

  (:durative-action step4_rinse
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step4_rinse_pending))
    :effect (and
      (at start (not (step4_rinse_pending)))
      (at end (step4_rinse_done))
    )
  )
)
