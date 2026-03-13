(define (domain laundry)
  (:requirements :durative-actions)
  (:predicates
    (buy_fabric_softener_pending)
    (buy_fabric_softener_done)
    (buy_detergent_pending)
    (buy_detergent_done)
    (gather_clothes_pending)
    (gather_clothes_done)
    (open_washing_machine_pending)
    (open_washing_machine_done)
    (put_clothes_pending)
    (put_clothes_done)
    (add_detergent_pending)
    (add_detergent_done)
    (turn_on_washing_machine_pending)
    (turn_on_washing_machine_done)
  )

  (:durative-action buy_fabric_softener
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (buy_fabric_softener_pending))
    :effect (and (at start (not (buy_fabric_softener_pending))) (at end (buy_fabric_softener_done)))
  )

  (:durative-action buy_laundry_detergent
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (buy_detergent_pending))
    :effect (and (at start (not (buy_detergent_pending))) (at end (buy_detergent_done)))
  )

  (:durative-action gather_dirty_clothes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (gather_clothes_pending)) (at start (buy_fabric_softener_done)) (at start (buy_detergent_done)))
    :effect (and (at start (not (gather_clothes_pending))) (at end (gather_clothes_done)))
  )

  (:durative-action open_washing_machine
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (open_washing_machine_pending)) (at start (gather_clothes_done)))
    :effect (and (at start (not (open_washing_machine_pending))) (at end (open_washing_machine_done)))
  )

  (:durative-action put_clothes_in_washing_machine
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (put_clothes_pending)) (at start (open_washing_machine_done)))
    :effect (and (at start (not (put_clothes_pending))) (at end (put_clothes_done)))
  )

  (:durative-action add_laundry_detergent
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (add_detergent_pending)) (at start (open_washing_machine_done)))
    :effect (and (at start (not (add_detergent_pending))) (at end (add_detergent_done)))
  )

  (:durative-action turn_on_washing_machine
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (turn_on_washing_machine_pending)) (at start (put_clothes_done)) (at start (add_detergent_done)))
    :effect (and (at start (not (turn_on_washing_machine_pending))) (at end (turn_on_washing_machine_done)))
  )
)
