(define (domain indoor-herb-garden)
  (:requirements :durative-actions)
  (:predicates
    (install_lights_pending)
    (install_lights_done)
    (purchase_supplies_pending)
    (purchase_supplies_done)
    (sow_seeds_pending)
    (sow_seeds_done)
    (transplant_seedlings_pending)
    (transplant_seedlings_done)
    (research_varieties_pending)
    (research_varieties_done)
  )

  (:durative-action do_install_lights
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (install_lights_pending)) (at start (research_varieties_done)))
    :effect (and (at start (not (install_lights_pending))) (at end (install_lights_done)))
  )

  (:durative-action do_purchase_supplies
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (purchase_supplies_pending)) (at start (research_varieties_done)))
    :effect (and (at start (not (purchase_supplies_pending))) (at end (purchase_supplies_done)))
  )

  (:durative-action do_sow_seeds
    :parameters ()
    :duration (= ?duration 864000)
    :condition (and (at start (sow_seeds_pending)) (at start (purchase_supplies_done)))
    :effect (and (at start (not (sow_seeds_pending))) (at end (sow_seeds_done)))
  )

  (:durative-action do_transplant_seedlings
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (transplant_seedlings_pending)) (at start (purchase_supplies_done)) (at start (sow_seeds_done)))
    :effect (and (at start (not (transplant_seedlings_pending))) (at end (transplant_seedlings_done)))
  )

  (:durative-action do_research_varieties
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (research_varieties_pending))
    :effect (and (at start (not (research_varieties_pending))) (at end (research_varieties_done)))
  )
)
