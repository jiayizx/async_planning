(define (domain starfish-acclimation)
  (:requirements :durative-actions)
  (:predicates
    (float_bag_pending)
    (float_bag_done)
    (setup_drip_pending)
    (setup_drip_done)
    (prepare_quarantine_pending)
    (prepare_quarantine_done)
    (add_tank_water_pending)
    (add_tank_water_done)
    (transfer_starfish_pending)
    (transfer_starfish_done)
  )

  (:durative-action float_bag
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (float_bag_pending)) (at start (prepare_quarantine_done)))
    :effect (and (at start (not (float_bag_pending))) (at end (float_bag_done)))
  )

  (:durative-action setup_drip
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (setup_drip_pending)) (at start (prepare_quarantine_done)))
    :effect (and (at start (not (setup_drip_pending))) (at end (setup_drip_done)))
  )

  (:durative-action prepare_quarantine
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (prepare_quarantine_pending))
    :effect (and (at start (not (prepare_quarantine_pending))) (at end (prepare_quarantine_done)))
  )

  (:durative-action add_tank_water
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (add_tank_water_pending)) (at start (float_bag_done)))
    :effect (and (at start (not (add_tank_water_pending))) (at end (add_tank_water_done)))
  )

  (:durative-action transfer_starfish
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (transfer_starfish_pending)) (at start (setup_drip_done)) (at start (add_tank_water_done)))
    :effect (and (at start (not (transfer_starfish_pending))) (at end (transfer_starfish_done)))
  )
)
