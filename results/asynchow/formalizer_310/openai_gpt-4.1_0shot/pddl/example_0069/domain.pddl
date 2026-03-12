(define (domain get-into-car)
  (:requirements :durative-actions)
  (:predicates
    (get_out_of_bed_pending)
    (get_out_of_bed_done)
    (prepare_outfit_pending)
    (prepare_outfit_done)
    (go_to_bathroom_pending)
    (go_to_bathroom_done)
    (take_shower_pending)
    (take_shower_done)
    (get_out_of_shower_pending)
    (get_out_of_shower_done)
    (put_on_clothes_pending)
    (put_on_clothes_done)
    (go_to_car_pending)
    (go_to_car_done)
  )

  (:durative-action do_get_out_of_bed
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (get_out_of_bed_pending))
    :effect (and (at start (not (get_out_of_bed_pending))) (at end (get_out_of_bed_done)))
  )

  (:durative-action do_prepare_outfit
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (prepare_outfit_pending)) (at start (get_out_of_bed_done)))
    :effect (and (at start (not (prepare_outfit_pending))) (at end (prepare_outfit_done)))
  )

  (:durative-action do_go_to_bathroom
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (go_to_bathroom_pending)) (at start (prepare_outfit_done)))
    :effect (and (at start (not (go_to_bathroom_pending))) (at end (go_to_bathroom_done)))
  )

  (:durative-action do_take_shower
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (take_shower_pending)) (at start (go_to_bathroom_done)))
    :effect (and (at start (not (take_shower_pending))) (at end (take_shower_done)))
  )

  (:durative-action do_get_out_of_shower
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_out_of_shower_pending)) (at start (go_to_bathroom_done)))
    :effect (and (at start (not (get_out_of_shower_pending))) (at end (get_out_of_shower_done)))
  )

  (:durative-action do_put_on_clothes
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (put_on_clothes_pending)) (at start (take_shower_done)) (at start (get_out_of_shower_done)))
    :effect (and (at start (not (put_on_clothes_pending))) (at end (put_on_clothes_done)))
  )

  (:durative-action do_go_to_car
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (go_to_car_pending)) (at start (put_on_clothes_done)))
    :effect (and (at start (not (go_to_car_pending))) (at end (go_to_car_done)))
  )
)
