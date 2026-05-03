(define (domain bake_blueberry_pie)
  (:requirements :durative-actions)
  
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (prepare_crust_pending)
    (prepare_crust_done)
    (mix_blueberries_pending)
    (mix_blueberries_done)
    (pour_mixture_pending)
    (pour_mixture_done)
    (top_crust_pending)
    (top_crust_done)
    (crimp_seal_pending)
    (crimp_seal_done)
    (cut_slits_pending)
    (cut_slits_done)
    (bake_pie_pending)
    (bake_pie_done)
    (finished_pending)
    (finished_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (preheat_oven_pending)))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action prepare_crust
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (prepare_crust_pending)))
    :effect (and (at start (not (prepare_crust_pending))) (at end (prepare_crust_done)))
  )

  (:durative-action mix_blueberries
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (mix_blueberries_pending)))
    :effect (and (at start (not (mix_blueberries_pending))) (at end (mix_blueberries_done)))
  )

  (:durative-action pour_mixture
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pour_mixture_pending)) (at start (prepare_crust_done)) (at start (mix_blueberries_done)))
    :effect (and (at start (not (pour_mixture_pending))) (at end (pour_mixture_done)))
  )

  (:durative-action top_crust
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (top_crust_pending)) (at start (pour_mixture_done)))
    :effect (and (at start (not (top_crust_pending))) (at end (top_crust_done)))
  )

  (:durative-action crimp_seal
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (crimp_seal_pending)) (at start (top_crust_done)))
    :effect (and (at start (not (crimp_seal_pending))) (at end (crimp_seal_done)))
  )

  (:durative-action cut_slits
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (cut_slits_pending)) (at start (top_crust_done)))
    :effect (and (at start (not (cut_slits_pending))) (at end (cut_slits_done)))
  )

  (:durative-action bake_pie
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (bake_pie_pending)) (at start (preheat_oven_done)) (at start (crimp_seal_done)) (at start (cut_slits_done)))
    :effect (and (at start (not (bake_pie_pending))) (at end (bake_pie_done)))
  )

  (:durative-action finished
    :parameters ()
    :duration (= ?duration 0)
    :condition (and (at start (finished_pending)) (at start (bake_pie_done)))
    :effect (and (at start (not (finished_pending))) (at end (finished_done)))
  )
)
