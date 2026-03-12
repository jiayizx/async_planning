(define (domain use-sumac)
  (:requirements :durative-actions)
  (:predicates
    (step1_purchase_pending)
    (step1_purchase_done)
    (step2_use_replace_pending)
    (step2_use_replace_done)
    (step3_add_dips_pending)
    (step3_add_dips_done)
    (step4_marinate_pending)
    (step4_marinate_done)
    (step5_add_zaatar_pending)
    (step5_add_zaatar_done)
    (step6_add_frittata_pending)
    (step6_add_frittata_done)
    (step7_sprinkle_roastveg_pending)
    (step7_sprinkle_roastveg_done)
  )

  (:durative-action step1_purchase
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step1_purchase_pending))
    :effect (and
              (at start (not (step1_purchase_pending)))
              (at end (step1_purchase_done))
            )
  )

  (:durative-action step2_use_replace
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step2_use_replace_pending)) (at start (step1_purchase_done)))
    :effect (and
              (at start (not (step2_use_replace_pending)))
              (at end (step2_use_replace_done))
            )
  )

  (:durative-action step3_add_dips
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step3_add_dips_pending)) (at start (step1_purchase_done)))
    :effect (and
              (at start (not (step3_add_dips_pending)))
              (at end (step3_add_dips_done))
            )
  )

  (:durative-action step4_marinate
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step4_marinate_pending)) (at start (step1_purchase_done)))
    :effect (and
              (at start (not (step4_marinate_pending)))
              (at end (step4_marinate_done))
            )
  )

  (:durative-action step5_add_zaatar
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step5_add_zaatar_pending)) (at start (step1_purchase_done)))
    :effect (and
              (at start (not (step5_add_zaatar_pending)))
              (at end (step5_add_zaatar_done))
            )
  )

  (:durative-action step6_add_frittata
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step6_add_frittata_pending)) (at start (step1_purchase_done)))
    :effect (and
              (at start (not (step6_add_frittata_pending)))
              (at end (step6_add_frittata_done))
            )
  )

  (:durative-action step7_sprinkle_roastveg
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step7_sprinkle_roastveg_pending)) (at start (step1_purchase_done)))
    :effect (and
              (at start (not (step7_sprinkle_roastveg_pending)))
              (at end (step7_sprinkle_roastveg_done))
            )
  )
)
