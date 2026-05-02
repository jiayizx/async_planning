(define (domain corn_soup)
  (:requirements :durative-actions)
  (:predicates
    (saute_pending) (saute_done)
    (simmer_pending) (simmer_done)
    (husk_pending) (husk_done)
    (prep_pending) (prep_done)
    (blend_pending) (blend_done)
  )

  (:durative-action saute_onions_garlic
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (saute_pending)) (at start (prep_done)))
    :effect (and (at start (not (saute_pending))) (at end (saute_done)))
  )

  (:durative-action simmer_corn_broth
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (simmer_pending)) (at start (saute_done)))
    :effect (and (at start (not (simmer_pending))) (at end (simmer_done)))
  )

  (:durative-action husk_and_wash_corn
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (husk_pending))
    :effect (and (at start (not (husk_pending))) (at end (husk_done)))
  )

  (:durative-action prep_and_dice_vegetables
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (prep_pending))
    :effect (and (at start (not (prep_pending))) (at end (prep_done)))
  )

  (:durative-action blend_portion_of_soup
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (blend_pending)) (at start (husk_done)))
    :effect (and (at start (not (blend_pending))) (at end (blend_done)))
  )
)
