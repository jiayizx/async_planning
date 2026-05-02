(define (domain bath)
  (:requirements :durative-actions)
  (:predicates
    (take_off_clothes_pending)
    (take_off_clothes_done)
    (add_bubble_bath_pending)
    (add_bubble_bath_done)
    (turn_off_running_water_pending)
    (turn_off_running_water_done)
    (fill_up_bath_tub_pending)
    (fill_up_bath_tub_done)
    (set_out_towel_pending)
    (set_out_towel_done)
  )

  (:durative-action take_off_clothes
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (take_off_clothes_pending))
    :effect (and (at start (not (take_off_clothes_pending))) (at end (take_off_clothes_done)))
  )

  (:durative-action add_bubble_bath
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (add_bubble_bath_pending)) (at start (take_off_clothes_done)))
    :effect (and (at start (not (add_bubble_bath_pending))) (at end (add_bubble_bath_done)))
  )

  (:durative-action turn_off_running_water
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (turn_off_running_water_pending)) (at start (add_bubble_bath_done)) (at start (set_out_towel_done)))
    :effect (and (at start (not (turn_off_running_water_pending))) (at end (turn_off_running_water_done)))
  )

  (:durative-action fill_up_bath_tub
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (fill_up_bath_tub_pending))
    :effect (and (at start (not (fill_up_bath_tub_pending))) (at end (fill_up_bath_tub_done)))
  )

  (:durative-action set_out_towel
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (set_out_towel_pending)) (at start (fill_up_bath_tub_done)))
    :effect (and (at start (not (set_out_towel_pending))) (at end (set_out_towel_done)))
  )
)
