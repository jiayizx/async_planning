(define (domain breakfast_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (heat_pan_pending)
    (heat_pan_done)
    (crack_eggs_pending)
    (crack_eggs_done)
    (whisk_eggs_pending)
    (whisk_eggs_done)
    (pour_eggs_pending)
    (pour_eggs_done)
    (scramble_cooking_pending)
    (scramble_cooking_done)
    (add_butter_pending)
    (add_butter_done)
    (plate_eggs_pending)
    (plate_eggs_done)
  )

  (:durative-action heat_pan
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (heat_pan_pending))
    :effect (and (at start (not (heat_pan_pending))) (at end (heat_pan_done)))
  )

  (:durative-action crack_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (crack_eggs_pending))
    :effect (and (at start (not (crack_eggs_pending))) (at end (crack_eggs_done)))
  )

  (:durative-action whisk_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (whisk_eggs_pending)) (at start (crack_eggs_done)))
    :effect (and (at start (not (whisk_eggs_pending))) (at end (whisk_eggs_done)))
  )

  (:durative-action pour_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pour_eggs_pending)) (at start (whisk_eggs_done)) (at start (add_butter_done)))
    :effect (and (at start (not (pour_eggs_pending))) (at end (pour_eggs_done)))
  )

  (:durative-action scramble_cooking
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (scramble_cooking_pending)) (at start (pour_eggs_done)))
    :effect (and (at start (not (scramble_cooking_pending))) (at end (scramble_cooking_done)))
  )

  (:durative-action add_butter
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (add_butter_pending)) (at start (heat_pan_done)))
    :effect (and (at start (not (add_butter_pending))) (at end (add_butter_done)))
  )

  (:durative-action plate_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (plate_eggs_pending)) (at start (scramble_cooking_done)))
    :effect (and (at start (not (plate_eggs_pending))) (at end (plate_eggs_done)))
  )
)
