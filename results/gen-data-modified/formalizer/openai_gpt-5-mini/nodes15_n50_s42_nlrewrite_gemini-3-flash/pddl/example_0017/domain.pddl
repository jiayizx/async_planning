(define (domain kettle_domain)
  (:requirements :durative-actions)
  (:predicates
    (pour_pending) (pour_done)
    (chop_pending) (chop_done)
    (place_pending) (place_done)
    (wipe_pending) (wipe_done)
    (sit_pending) (sit_done)
    (throw_pending) (throw_done)
    (wait_pending) (wait_done)
    (steep_pending) (steep_done)
    (set_pending) (set_done)
    (wash_pending) (wash_done)
    (fill_pending) (fill_done)
    (plug_pending) (plug_done)
    (locate_pending) (locate_done)
    (unpack_pending) (unpack_done)
    (switch_pending) (switch_done)
  )

  (:durative-action pour_water
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pour_pending)) (at start (wait_done)))
    :effect (and (at start (not (pour_pending))) (at end (pour_done)))
  )

  (:durative-action chop_scallions
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (chop_pending)) (at start (wash_done)))
    :effect (and (at start (not (chop_pending))) (at end (chop_done)))
  )

  (:durative-action place_garnish
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (place_pending)) (at start (chop_done)))
    :effect (and (at start (not (place_pending))) (at end (place_done)))
  )

  (:durative-action wipe_counter
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (wipe_pending)) (at start (locate_done)))
    :effect (and (at start (not (wipe_pending))) (at end (wipe_done)))
  )

  (:durative-action sit_down
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (sit_pending)) (at start (steep_done)) (at start (switch_done)))
    :effect (and (at start (not (sit_pending))) (at end (sit_done)))
  )

  (:durative-action throw_cloth
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (throw_pending)) (at start (wipe_done)))
    :effect (and (at start (not (throw_pending))) (at end (throw_done)))
  )

  (:durative-action wait_boiling
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (wait_pending)) (at start (plug_done)))
    :effect (and (at start (not (wait_pending))) (at end (wait_done)))
  )

  (:durative-action steep_noodles
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (steep_pending)) (at start (pour_done)))
    :effect (and (at start (not (steep_pending))) (at end (steep_done)))
  )

  (:durative-action set_table
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (set_pending)) (at start (place_done)))
    :effect (and (at start (not (set_pending))) (at end (set_done)))
  )

  (:durative-action wash_knife
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (wash_pending)) (at start (switch_done)))
    :effect (and (at start (not (wash_pending))) (at end (wash_done)))
  )

  (:durative-action fill_kettle
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (fill_pending)) (at start (unpack_done)))
    :effect (and (at start (not (fill_pending))) (at end (fill_done)))
  )

  (:durative-action plug_kettle
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (plug_pending)) (at start (set_done)))
    :effect (and (at start (not (plug_pending))) (at end (plug_done)))
  )

  (:durative-action locate_sponge
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (locate_pending)))
    :effect (and (at start (not (locate_pending))) (at end (locate_done)))
  )

  (:durative-action unpack_kettle
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (unpack_pending)))
    :effect (and (at start (not (unpack_pending))) (at end (unpack_done)))
  )

  (:durative-action switch_on
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (switch_pending)) (at start (fill_done)))
    :effect (and (at start (not (switch_pending))) (at end (switch_done)))
  )
)
