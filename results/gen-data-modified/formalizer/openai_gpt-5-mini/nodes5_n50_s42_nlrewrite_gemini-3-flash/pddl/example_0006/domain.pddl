(define (domain beef_stroganoff)
  (:requirements :durative-actions)
  (:predicates
    (slice_beef_pending)
    (slice_beef_done)
    (chop_veg_pending)
    (chop_veg_done)
    (sear_beef_pending)
    (sear_beef_done)
    (simmer_pending)
    (simmer_done)
    (saute_veg_pending)
    (saute_veg_done)
  )

  (:durative-action slice_beef
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (slice_beef_pending))
    :effect (and
      (at start (not (slice_beef_pending)))
      (at end (slice_beef_done))
    )
  )

  (:durative-action chop_mushrooms_onions
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (chop_veg_pending))
    :effect (and
      (at start (not (chop_veg_pending)))
      (at end (chop_veg_done))
    )
  )

  (:durative-action sear_beef
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (sear_beef_pending)) (at start (slice_beef_done)))
    :effect (and
      (at start (not (sear_beef_pending)))
      (at end (sear_beef_done))
    )
  )

  (:durative-action saute_vegetables
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (saute_veg_pending)) (at start (chop_veg_done)))
    :effect (and
      (at start (not (saute_veg_pending)))
      (at end (saute_veg_done))
    )
  )

  (:durative-action simmer_everything
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (simmer_pending)) (at start (sear_beef_done)) (at start (saute_veg_done)))
    :effect (and
      (at start (not (simmer_pending)))
      (at end (simmer_done))
    )
  )
)
