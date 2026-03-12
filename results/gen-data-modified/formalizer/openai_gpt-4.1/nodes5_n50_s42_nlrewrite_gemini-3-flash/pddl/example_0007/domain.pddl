(define (domain leave-house)
  (:requirements :durative-actions)
  (:predicates
    (put_on_coat_pending)
    (put_on_coat_done)
    (put_keys_in_pocket_pending)
    (put_keys_in_pocket_done)
    (check_stove_lights_pending)
    (check_stove_lights_done)
    (set_alarm_pending)
    (set_alarm_done)
    (find_wallet_phone_pending)
    (find_wallet_phone_done)
  )

  (:durative-action put_on_coat
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (put_on_coat_pending)) (at start (check_stove_lights_done)))
    :effect (and (at start (not (put_on_coat_pending))) (at end (put_on_coat_done)))
  )

  (:durative-action put_keys_in_pocket
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_keys_in_pocket_pending)) (at start (put_on_coat_done)))
    :effect (and (at start (not (put_keys_in_pocket_pending))) (at end (put_keys_in_pocket_done)))
  )

  (:durative-action check_stove_lights
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (check_stove_lights_pending)) (at start (find_wallet_phone_done)))
    :effect (and (at start (not (check_stove_lights_pending))) (at end (check_stove_lights_done)))
  )

  (:durative-action set_alarm
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (set_alarm_pending)) (at start (check_stove_lights_done)))
    :effect (and (at start (not (set_alarm_pending))) (at end (set_alarm_done)))
  )

  (:durative-action find_wallet_phone
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_wallet_phone_pending))
    :effect (and (at start (not (find_wallet_phone_pending))) (at end (find_wallet_phone_done)))
  )
)
