(define (domain fix_leaky_dishwasher)
  (:requirements :durative-actions)
  (:predicates
    (purchase_pump_pending)
    (purchase_pump_done)
    (cut_power_water_pending)
    (cut_power_water_done)
    (disconnect_wires_lines_pending)
    (disconnect_wires_lines_done)
    (remove_from_cabinet_pending)
    (remove_from_cabinet_done)
    (disconnect_old_pump_pending)
    (disconnect_old_pump_done)
    (install_new_pump_pending)
    (install_new_pump_done)
    (reconnect_dishwasher_pending)
    (reconnect_dishwasher_done)
  )

  (:durative-action purchase_pump
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (purchase_pump_pending))
    :effect (and (at start (not (purchase_pump_pending))) (at end (purchase_pump_done)))
  )

  (:durative-action cut_power_and_water
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (cut_power_water_pending))
    :effect (and (at start (not (cut_power_water_pending))) (at end (cut_power_water_done)))
  )

  (:durative-action disconnect_wires_and_lines
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (disconnect_wires_lines_pending)) (at start (remove_from_cabinet_done)))
    :effect (and (at start (not (disconnect_wires_lines_pending))) (at end (disconnect_wires_lines_done)))
  )

  (:durative-action remove_dishwasher_from_cabinet
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (remove_from_cabinet_pending)) (at start (cut_power_water_done)))
    :effect (and (at start (not (remove_from_cabinet_pending))) (at end (remove_from_cabinet_done)))
  )

  (:durative-action disconnect_old_pump
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (disconnect_old_pump_pending)) (at start (disconnect_wires_lines_done)))
    :effect (and (at start (not (disconnect_old_pump_pending))) (at end (disconnect_old_pump_done)))
  )

  (:durative-action install_new_pump
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (install_new_pump_pending)) (at start (purchase_pump_done)) (at start (disconnect_old_pump_done)))
    :effect (and (at start (not (install_new_pump_pending))) (at end (install_new_pump_done)))
  )

  (:durative-action reconnect_dishwasher
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (reconnect_dishwasher_pending)) (at start (install_new_pump_done)))
    :effect (and (at start (not (reconnect_dishwasher_pending))) (at end (reconnect_dishwasher_done)))
  )
)
