(define (domain pb_sandwich)
  (:requirements :durative-actions)
  (:predicates
    (go_to_kitchen_pending)
    (go_to_kitchen_done)
    (open_cabinet_pending)
    (open_cabinet_done)
    (take_out_knife_pending)
    (take_out_knife_done)
    (take_out_plate_pending)
    (take_out_plate_done)
    (take_out_pb_and_bread_pending)
    (take_out_pb_and_bread_done)
  )

  (:durative-action go_to_kitchen
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (go_to_kitchen_pending))
    :effect (and (at start (not (go_to_kitchen_pending))) (at end (go_to_kitchen_done)))
  )

  (:durative-action open_cabinet
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (open_cabinet_pending)) (at start (go_to_kitchen_done)))
    :effect (and (at start (not (open_cabinet_pending))) (at end (open_cabinet_done)))
  )

  (:durative-action take_out_knife
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_out_knife_pending)) (at start (go_to_kitchen_done)))
    :effect (and (at start (not (take_out_knife_pending))) (at end (take_out_knife_done)))
  )

  (:durative-action take_out_plate
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_out_plate_pending)) (at start (go_to_kitchen_done)))
    :effect (and (at start (not (take_out_plate_pending))) (at end (take_out_plate_done)))
  )

  (:durative-action take_out_pb_and_bread
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (take_out_pb_and_bread_pending)) (at start (open_cabinet_done)))
    :effect (and (at start (not (take_out_pb_and_bread_pending))) (at end (take_out_pb_and_bread_done)))
  )
)
