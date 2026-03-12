(define (domain snowman_building)
  (:requirements :durative-actions)
  (:predicates
    (decide_pending)
    (decide_done)
    (gloves_pending)
    (gloves_done)
    (boots_pending)
    (boots_done)
    (coat_pending)
    (coat_done)
    (hat_pending)
    (hat_done)
    (outside_pending)
    (outside_done)
    (roll_pending)
    (roll_done)
  )

  (:durative-action do_decide
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (decide_pending))
    :effect (and (at start (not (decide_pending))) (at end (decide_done)))
  )

  (:durative-action do_gloves
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (gloves_pending)) (at start (decide_done)))
    :effect (and (at start (not (gloves_pending))) (at end (gloves_done)))
  )

  (:durative-action do_boots
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (boots_pending)) (at start (decide_done)))
    :effect (and (at start (not (boots_pending))) (at end (boots_done)))
  )

  (:durative-action do_coat
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (coat_pending)) (at start (decide_done)))
    :effect (and (at start (not (coat_pending))) (at end (coat_done)))
  )

  (:durative-action do_hat
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (hat_pending)) (at start (decide_done)))
    :effect (and (at start (not (hat_pending))) (at end (hat_done)))
  )

  (:durative-action do_outside
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (outside_pending)) (at start (gloves_done)) (at start (boots_done)) (at start (coat_done)) (at start (hat_done)))
    :effect (and (at start (not (outside_pending))) (at end (outside_done)))
  )

  (:durative-action do_roll
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (roll_pending)) (at start (outside_done)))
    :effect (and (at start (not (roll_pending))) (at end (roll_done)))
  )
)
