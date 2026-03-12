(define (domain play_chinchilla)
  (:requirements :durative-actions)
  (:predicates
    (put_chinchilla_pending)
    (put_chinchilla_done)
    (setup_wheel_pending)
    (setup_wheel_done)
    (fill_toys_pending)
    (fill_toys_done)
    (add_house_pending)
    (add_house_done)
  )

  (:durative-action put_chinchilla
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (put_chinchilla_pending))
    :effect (and (at start (not (put_chinchilla_pending))) (at end (put_chinchilla_done)))
  )

  (:durative-action setup_wheel
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (setup_wheel_pending)) (at start (put_chinchilla_done)))
    :effect (and (at start (not (setup_wheel_pending))) (at end (setup_wheel_done)))
  )

  (:durative-action fill_toys
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (fill_toys_pending)) (at start (put_chinchilla_done)))
    :effect (and (at start (not (fill_toys_pending))) (at end (fill_toys_done)))
  )

  (:durative-action add_house
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (add_house_pending)) (at start (put_chinchilla_done)))
    :effect (and (at start (not (add_house_pending))) (at end (add_house_done)))
  )
)
