(define (domain build_generator)
  (:requirements :durative-actions)
  (:predicates
    (fabricate_mounting_plate_pending)
    (fabricate_mounting_plate_done)
    (mount_pulleys_pending)
    (mount_pulleys_done)
    (run_belts_pending)
    (run_belts_done)
    (mount_gas_tank_pending)
    (mount_gas_tank_done)
    (reconnect_gas_supply_pending)
    (reconnect_gas_supply_done)
  )

  (:durative-action fabricate_mounting_plate
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (fabricate_mounting_plate_pending))
    :effect (and (at start (not (fabricate_mounting_plate_pending))) (at end (fabricate_mounting_plate_done)))
  )

  (:durative-action mount_pulleys
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (mount_pulleys_pending))
    :effect (and (at start (not (mount_pulleys_pending))) (at end (mount_pulleys_done)))
  )

  (:durative-action run_belts
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (run_belts_pending)) (at start (mount_pulleys_done)))
    :effect (and (at start (not (run_belts_pending))) (at end (run_belts_done)))
  )

  (:durative-action mount_gas_tank
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (mount_gas_tank_pending)) (at start (fabricate_mounting_plate_done)))
    :effect (and (at start (not (mount_gas_tank_pending))) (at end (mount_gas_tank_done)))
  )

  (:durative-action reconnect_gas_supply
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (reconnect_gas_supply_pending)) (at start (mount_gas_tank_done)))
    :effect (and (at start (not (reconnect_gas_supply_pending))) (at end (reconnect_gas_supply_done)))
  )
)
