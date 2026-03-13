(define (domain blueberry_pie)
  (:requirements :durative-actions)
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (prepare_pastry_pending)
    (prepare_pastry_done)
    (mix_blueberries_pending)
    (mix_blueberries_done)
    (pour_mixture_pending)
    (pour_mixture_done)
    (top_with_crust_pending)
    (top_with_crust_done)
    (crimp_and_seal_pending)
    (crimp_and_seal_done)
    (cut_slits_pending)
    (cut_slits_done)
    (bake_pending)
    (bake_done)
    (finished_pending)
    (finished_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action prepare_pastry
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (prepare_pastry_pending))
    :effect (and (at start (not (prepare_pastry_pending))) (at end (prepare_pastry_done)))
  )

  (:durative-action mix_blueberries
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mix_blueberries_pending))
    :effect (and (at start (not (mix_blueberries_pending))) (at end (mix_blueberries_done)))
  )

  (:durative-action pour_mixture
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pour_mixture_pending)) (at start (prepare_pastry_done)) (at start (mix_blueberries_done)))
    :effect (and (at start (not (pour_mixture_pending))) (at end (pour_mixture_done)))
  )

  (:durative-action top_with_crust
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (top_with_crust_pending)) (at start (pour_mixture_done)))
    :effect (and (at start (not (top_with_crust_pending))) (at end (top_with_crust_done)))
  )

  (:durative-action crimp_and_seal
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (crimp_and_seal_pending)) (at start (top_with_crust_done)))
    :effect (and (at start (not (crimp_and_seal_pending))) (at end (crimp_and_seal_done)))
  )

  (:durative-action cut_slits
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (cut_slits_pending)) (at start (top_with_crust_done)))
    :effect (and (at start (not (cut_slits_pending))) (at end (cut_slits_done)))
  )

  (:durative-action bake
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (bake_pending)) (at start (preheat_oven_done)) (at start (crimp_and_seal_done)) (at start (cut_slits_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )

  (:durative-action finished
    :parameters ()
    :duration (= ?duration 0)
    :condition (and (at start (finished_pending)) (at start (bake_done)))
    :effect (and (at start (not (finished_pending))) (at end (finished_done)))
  )
)
