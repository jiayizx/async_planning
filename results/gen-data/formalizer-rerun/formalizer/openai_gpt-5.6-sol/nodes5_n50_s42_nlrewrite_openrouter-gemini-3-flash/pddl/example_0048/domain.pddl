(define (domain corn-soup)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (onions_garlic_sauteed)
    (corn_broth_simmered)
    (fresh_corn_shucked)
    (vegetables_chopped)
    (soup_portion_blended)
  )

  (:durative-action saute_onions_and_garlic
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step1))
      (at start (vegetables_chopped))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (onions_garlic_sauteed))
    )
  )

  (:durative-action simmer_corn_and_broth
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step2))
      (at start (onions_garlic_sauteed))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (corn_broth_simmered))
    )
  )

  (:durative-action shuck_and_silk_fresh_corn
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (fresh_corn_shucked))
    )
  )

  (:durative-action prep_and_chop_vegetables
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (vegetables_chopped))
    )
  )

  (:durative-action blend_soup_portion
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step5))
      (at start (fresh_corn_shucked))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (soup_portion_blended))
    )
  )
)