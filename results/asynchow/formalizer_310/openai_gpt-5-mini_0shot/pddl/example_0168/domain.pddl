(define (domain play_with_chinchilla)
  (:requirements :durative-actions)
  (:predicates
    (put_in_cage_pending)
    (put_in_cage_done)
    (setup_wheel_pending)
    (setup_wheel_done)
    (fill_toys_pending)
    (fill_toys_done)
    (add_hiding_house_pending)
    (add_hiding_house_done)
  )

  (:durative-action put_in_cage
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (put_in_cage_pending))
    :effect (and (at start (not (put_in_cage_pending))) (at end (put_in_cage_done)))
  )

  (:durative-action setup_wheel
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (setup_wheel_pending)) (at start (put_in_cage_done)))
    :effect (and (at start (not (setup_wheel_pending))) (at end (setup_wheel_done)))
  )

  (:durative-action fill_toys
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (fill_toys_pending)) (at start (put_in_cage_done)))
    :effect (and (at start (not (fill_toys_pending))) (at end (fill_toys_done)))
  )

  (:durative-action add_hiding_house
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (add_hiding_house_pending)) (at start (put_in_cage_done)))
    :effect (and (at start (not (add_hiding_house_pending))) (at end (add_hiding_house_done)))
  )
)
