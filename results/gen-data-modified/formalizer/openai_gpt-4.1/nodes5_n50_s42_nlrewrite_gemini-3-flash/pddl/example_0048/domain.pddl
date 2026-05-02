(define (domain corn_soup)
  (:requirements :durative-actions)
  (:predicates
    (saute_onions_garlic_pending)
    (saute_onions_garlic_done)
    (simmer_corn_broth_pending)
    (simmer_corn_broth_done)
    (husk_wash_corn_pending)
    (husk_wash_corn_done)
    (prep_dice_veggies_pending)
    (prep_dice_veggies_done)
    (blend_soup_pending)
    (blend_soup_done)
  )

  (:durative-action saute_onions_garlic
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (saute_onions_garlic_pending)) (at start (prep_dice_veggies_done)))
    :effect (and (at start (not (saute_onions_garlic_pending))) (at end (saute_onions_garlic_done)))
  )

  (:durative-action simmer_corn_broth
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (simmer_corn_broth_pending)) (at start (saute_onions_garlic_done)))
    :effect (and (at start (not (simmer_corn_broth_pending))) (at end (simmer_corn_broth_done)))
  )

  (:durative-action husk_wash_corn
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (husk_wash_corn_pending))
    :effect (and (at start (not (husk_wash_corn_pending))) (at end (husk_wash_corn_done)))
  )

  (:durative-action prep_dice_veggies
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (prep_dice_veggies_pending))
    :effect (and (at start (not (prep_dice_veggies_pending))) (at end (prep_dice_veggies_done)))
  )

  (:durative-action blend_soup
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (blend_soup_pending)) (at start (husk_wash_corn_done)) (at start (simmer_corn_broth_done)))
    :effect (and (at start (not (blend_soup_pending))) (at end (blend_soup_done)))
  )
)
