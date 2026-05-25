(define (domain cosplay_garnet)
  (:requirements :durative-actions)
  
  (:predicates
    (get_wig_pending)
    (get_wig_done)
    (prepare_to_sew_pending)
    (prepare_to_sew_done)
    (get_leggings_pending)
    (get_leggings_done)
    (recreate_shirt_pending)
    (recreate_shirt_done)
    (get_gloves_pending)
    (get_gloves_done)
    (get_shoes_pending)
    (get_shoes_done)
    (get_shades_pending)
    (get_shades_done)
  )

  (:durative-action get_wig
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (get_wig_pending))
    :effect (and (at start (not (get_wig_pending))) (at end (get_wig_done)))
  )

  (:durative-action prepare_to_sew
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (prepare_to_sew_pending))
    :effect (and (at start (not (prepare_to_sew_pending))) (at end (prepare_to_sew_done)))
  )

  (:durative-action get_leggings
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (get_leggings_pending))
    :effect (and (at start (not (get_leggings_pending))) (at end (get_leggings_done)))
  )

  (:durative-action recreate_shirt
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (recreate_shirt_pending)) (at start (prepare_to_sew_done)))
    :effect (and (at start (not (recreate_shirt_pending))) (at end (recreate_shirt_done)))
  )

  (:durative-action get_gloves
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (get_gloves_pending))
    :effect (and (at start (not (get_gloves_pending))) (at end (get_gloves_done)))
  )

  (:durative-action get_shoes
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (get_shoes_pending))
    :effect (and (at start (not (get_shoes_pending))) (at end (get_shoes_done)))
  )

  (:durative-action get_shades
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (get_shades_pending))
    :effect (and (at start (not (get_shades_pending))) (at end (get_shades_done)))
  )
)