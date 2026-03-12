(define (domain gloves_to_bed)
  (:requirements :durative-actions)
  (:predicates
    (apply_cream_pending)
    (apply_cream_done)
    (locate_gloves_pending)
    (locate_gloves_done)
    (check_gloves_pending)
    (check_gloves_done)
    (change_pajamas_pending)
    (change_pajamas_done)
    (climb_bed_pending)
    (climb_bed_done)
    (set_alarm_pending)
    (set_alarm_done)
    (wash_hands_pending)
    (wash_hands_done)
    (put_on_gloves_pending)
    (put_on_gloves_done)
    (turn_off_lights_pending)
    (turn_off_lights_done)
    (bring_gloves_pending)
    (bring_gloves_done)
  )

  (:durative-action apply_cream
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (apply_cream_pending)) (at start (bring_gloves_done)))
    :effect (and (at start (not (apply_cream_pending))) (at end (apply_cream_done)))
  )

  (:durative-action locate_gloves
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (locate_gloves_pending))
    :effect (and (at start (not (locate_gloves_pending))) (at end (locate_gloves_done)))
  )

  (:durative-action check_gloves
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (check_gloves_pending)) (at start (locate_gloves_done)) (at start (wash_hands_done)))
    :effect (and (at start (not (check_gloves_pending))) (at end (check_gloves_done)))
  )

  (:durative-action change_pajamas
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (change_pajamas_pending))
    :effect (and (at start (not (change_pajamas_pending))) (at end (change_pajamas_done)))
  )

  (:durative-action climb_bed
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (climb_bed_pending)) (at start (turn_off_lights_done)))
    :effect (and (at start (not (climb_bed_pending))) (at end (climb_bed_done)))
  )

  (:durative-action set_alarm
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (set_alarm_pending)) (at start (change_pajamas_done)))
    :effect (and (at start (not (set_alarm_pending))) (at end (set_alarm_done)))
  )

  (:durative-action wash_hands
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (wash_hands_pending))
    :effect (and (at start (not (wash_hands_pending))) (at end (wash_hands_done)))
  )

  (:durative-action put_on_gloves
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (put_on_gloves_pending)) (at start (apply_cream_done)))
    :effect (and (at start (not (put_on_gloves_pending))) (at end (put_on_gloves_done)))
  )

  (:durative-action turn_off_lights
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (turn_off_lights_pending))
    :effect (and (at start (not (turn_off_lights_pending))) (at end (turn_off_lights_done)))
  )

  (:durative-action bring_gloves
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (bring_gloves_pending)) (at start (locate_gloves_done)))
    :effect (and (at start (not (bring_gloves_pending))) (at end (bring_gloves_done)))
  )
)
