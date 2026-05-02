(define (domain sofa_acquisition)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
    (s15_pending) (s15_done)
  )

  (:durative-action schedule_delivery
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s1_pending)) (at start (s3_done)) (at start (s6_done)))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action measure_room
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (s2_pending))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action clear_furniture
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (s3_pending))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action browse_showroom
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (s4_pending)) (at start (s7_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action buy_cleaning_kit
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (s5_pending)) (at start (s12_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action dispose_old_sofa
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (s6_pending)) (at start (s15_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action research_trends
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (s7_pending))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  (:durative-action compare_prices
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (s8_pending)) (at start (s2_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  (:durative-action finalize_purchase
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s9_pending)) (at start (s4_done)) (at start (s14_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  (:durative-action wait_fabric
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (s10_pending)) (at start (s13_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )

  (:durative-action buy_pillows
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (s11_pending)) (at start (s3_done)) (at start (s14_done)))
    :effect (and (at start (not (s11_pending))) (at end (s11_done)))
  )

  (:durative-action read_reviews
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (s12_pending)) (at start (s2_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done)))
  )

  (:durative-action place_order
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (s13_pending)) (at start (s8_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done)))
  )

  (:durative-action apply_financing
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (s14_pending)) (at start (s2_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done)))
  )

  (:durative-action wait_factory_build
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (s15_pending)) (at start (s10_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done)))
  )
)