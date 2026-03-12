(define (domain beef-stroganoff)
  (:requirements :durative-actions)
  (:predicates
    (slice_beef_pending)
    (slice_beef_done)
    (chop_veggies_pending)
    (chop_veggies_done)
    (sear_beef_pending)
    (sear_beef_done)
    (saute_veggies_pending)
    (saute_veggies_done)
    (simmer_sauce_pending)
    (simmer_sauce_done)
  )

  (:durative-action slice_beef
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (slice_beef_pending))
    :effect (and (at start (not (slice_beef_pending))) (at end (slice_beef_done)))
  )

  (:durative-action chop_veggies
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (chop_veggies_pending))
    :effect (and (at start (not (chop_veggies_pending))) (at end (chop_veggies_done)))
  )

  (:durative-action sear_beef
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (sear_beef_pending)) (at start (slice_beef_done)))
    :effect (and (at start (not (sear_beef_pending))) (at end (sear_beef_done)))
  )

  (:durative-action saute_veggies
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (saute_veggies_pending)) (at start (chop_veggies_done)))
    :effect (and (at start (not (saute_veggies_pending))) (at end (saute_veggies_done)))
  )

  (:durative-action simmer_sauce
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (simmer_sauce_pending)) (at start (sear_beef_done)) (at start (saute_veggies_done)))
    :effect (and (at start (not (simmer_sauce_pending))) (at end (simmer_sauce_done)))
  )
)
