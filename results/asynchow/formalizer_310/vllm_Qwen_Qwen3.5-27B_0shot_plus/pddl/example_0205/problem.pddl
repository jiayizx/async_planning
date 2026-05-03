(define (problem build_generator)
  (:domain generator_build)
  
  (:init
    (fabricate_mounting_plate_pending)
    (mount_pulleys_pending)
    (run_belt_pending)
    (mount_gas_tank_pending)
    (reconnect_gas_supply_pending)
  )

  (:goal (and
    (fabricate_mounting_plate_done)
    (mount_pulleys_done)
    (run_belt_done)
    (mount_gas_tank_done)
    (reconnect_gas_supply_done)
  ))
)
