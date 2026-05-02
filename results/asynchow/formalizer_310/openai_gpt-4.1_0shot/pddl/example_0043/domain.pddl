(define (domain beer-buying)
  (:requirements :durative-actions)
  (:predicates
    (get_in_car_pending)
    (get_in_car_done)
    (count_money_pending)
    (count_money_done)
    (give_money_pending)
    (give_money_done)
    (drive_store_pending)
    (drive_store_done)
    (show_id_pending)
    (show_id_done)
  )

  (:durative-action do_get_in_car
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (get_in_car_pending))
    :effect (and (at start (not (get_in_car_pending))) (at end (get_in_car_done)))
  )

  (:durative-action do_count_money
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (count_money_pending)) (at start (drive_store_done)))
    :effect (and (at start (not (count_money_pending))) (at end (count_money_done)))
  )

  (:durative-action do_give_money
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (give_money_pending)) (at start (count_money_done)) (at start (show_id_done)))
    :effect (and (at start (not (give_money_pending))) (at end (give_money_done)))
  )

  (:durative-action do_drive_store
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_store_pending)) (at start (get_in_car_done)))
    :effect (and (at start (not (drive_store_pending))) (at end (drive_store_done)))
  )

  (:durative-action do_show_id
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (show_id_pending)) (at start (drive_store_done)))
    :effect (and (at start (not (show_id_pending))) (at end (show_id_done)))
  )
)
