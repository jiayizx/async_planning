(define (problem laundry_task)
  (:domain laundry)
  
  (:init
    (buy_fabric_softener_pending)
    (buy_laundry_detergent_pending)
    (gather_dirty_clothes_pending)
    (open_washing_machine_pending)
    (put_clothes_in_washing_machine_pending)
    (add_laundry_detergent_pending)
    (turn_on_washing_machine_pending)
  )

  (:goal (and
    (buy_fabric_softener_done)
    (buy_laundry_detergent_done)
    (gather_dirty_clothes_done)
    (open_washing_machine_done)
    (put_clothes_in_washing_machine_done)
    (add_laundry_detergent_done)
    (turn_on_washing_machine_done)
  ))
)
