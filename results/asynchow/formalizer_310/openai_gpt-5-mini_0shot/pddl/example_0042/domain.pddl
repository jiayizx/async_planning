(define (domain breakfast_domain)
  (:requirements :durative-actions)
  (:predicates
    (heat_pan_pending) (heat_pan_done)
    (crack_eggs_pending) (crack_eggs_done)
    (whisk_pending) (whisk_done)
    (pour_pending) (pour_done)
    (scramble_pending) (scramble_done)
    (add_butter_pending) (add_butter_done)
    (plate_pending) (plate_done)
  )

  (:durative-action heat_pan_on_stove
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (heat_pan_pending))
    :effect (and (at start (not (heat_pan_pending))) (at end (heat_pan_done)))
  )

  (:durative-action crack_eggs_in_bowl
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (crack_eggs_pending))
    :effect (and (at start (not (crack_eggs_pending))) (at end (crack_eggs_done)))
  )

  (:durative-action whisk_eggs_to_scramble
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (whisk_pending)) (at start (crack_eggs_done)))
    :effect (and (at start (not (whisk_pending))) (at end (whisk_done)))
  )

  (:durative-action pour_whisked_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pour_pending)) (at start (whisk_done)) (at start (add_butter_done)))
    :effect (and (at start (not (pour_pending))) (at end (pour_done)))
  )

  (:durative-action scramble_as_cooking
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (scramble_pending)) (at start (pour_done)))
    :effect (and (at start (not (scramble_pending))) (at end (scramble_done)))
  )

  (:durative-action add_butter_to_pan
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (add_butter_pending)) (at start (heat_pan_done)))
    :effect (and (at start (not (add_butter_pending))) (at end (add_butter_done)))
  )

  (:durative-action put_eggs_on_plate
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (plate_pending)) (at start (scramble_done)))
    :effect (and (at start (not (plate_pending))) (at end (plate_done)))
  )
)
