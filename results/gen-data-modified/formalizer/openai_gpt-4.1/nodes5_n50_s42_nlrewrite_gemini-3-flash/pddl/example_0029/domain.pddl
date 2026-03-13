(define (domain solid_perfume)
  (:requirements :durative-actions)
  (:predicates
    (stir_essential_pending)
    (stir_essential_done)
    (measure_beeswax_pending)
    (measure_beeswax_done)
    (melt_wax_pending)
    (melt_wax_done)
    (sterilize_tins_pending)
    (sterilize_tins_done)
    (pour_mixture_pending)
    (pour_mixture_done)
  )

  (:durative-action stir_essential
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (stir_essential_pending)) (at start (melt_wax_done)))
    :effect (and (at start (not (stir_essential_pending))) (at end (stir_essential_done)))
  )

  (:durative-action measure_beeswax
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (measure_beeswax_pending))
    :effect (and (at start (not (measure_beeswax_pending))) (at end (measure_beeswax_done)))
  )

  (:durative-action melt_wax
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (melt_wax_pending)) (at start (measure_beeswax_done)))
    :effect (and (at start (not (melt_wax_pending))) (at end (melt_wax_done)))
  )

  (:durative-action sterilize_tins
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (sterilize_tins_pending))
    :effect (and (at start (not (sterilize_tins_pending))) (at end (sterilize_tins_done)))
  )

  (:durative-action pour_mixture
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pour_mixture_pending)) (at start (stir_essential_done)) (at start (sterilize_tins_done)))
    :effect (and (at start (not (pour_mixture_pending))) (at end (pour_mixture_done)))
  )
)
