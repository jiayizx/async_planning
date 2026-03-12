(define (domain squash_jersey)
  (:requirements :durative-actions)
  (:predicates
    (take_clothes_off_pending)
    (take_clothes_off_done)
    (turn_on_shower_pending)
    (turn_on_shower_done)
    (take_a_shower_pending)
    (take_a_shower_done)
    (dry_off_with_towel_pending)
    (dry_off_with_towel_done)
    (put_lotion_on_skin_pending)
    (put_lotion_on_skin_done)
  )

  (:durative-action take_clothes_off
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (take_clothes_off_pending))
    :effect (and (at start (not (take_clothes_off_pending)))
                 (at end (take_clothes_off_done)))
  )

  (:durative-action turn_on_shower
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (turn_on_shower_pending))
    :effect (and (at start (not (turn_on_shower_pending)))
                 (at end (turn_on_shower_done)))
  )

  (:durative-action take_a_shower
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (take_a_shower_pending))
                    (at start (take_clothes_off_done))
                    (at start (turn_on_shower_done)))
    :effect (and (at start (not (take_a_shower_pending)))
                 (at end (take_a_shower_done)))
  )

  (:durative-action dry_off_with_towel
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (dry_off_with_towel_pending))
                    (at start (take_a_shower_done)))
    :effect (and (at start (not (dry_off_with_towel_pending)))
                 (at end (dry_off_with_towel_done)))
  )

  (:durative-action put_lotion_on_skin
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (put_lotion_on_skin_pending))
                    (at start (dry_off_with_towel_done)))
    :effect (and (at start (not (put_lotion_on_skin_pending)))
                 (at end (put_lotion_on_skin_done)))
  )
)
