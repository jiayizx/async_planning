(define (domain cheap_vacation)
  (:requirements :durative-actions)
  (:predicates
    (drive_to_front_pending)
    (drive_to_front_done)
    (pack_backpacks_pending)
    (pack_backpacks_done)
    (hike_out_pending)
    (hike_out_done)
    (camp_overnight_pending)
    (camp_overnight_done)
    (hike_back_pending)
    (hike_back_done)
  )

  (:durative-action drive_to_front
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (drive_to_front_pending))
    :effect (and (at start (not (drive_to_front_pending))) (at end (drive_to_front_done)))
  )

  (:durative-action pack_backpacks
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (pack_backpacks_pending))
    :effect (and (at start (not (pack_backpacks_pending))) (at end (pack_backpacks_done)))
  )

  (:durative-action hike_out
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (hike_out_pending)) (at start (drive_to_front_done)) (at start (pack_backpacks_done)))
    :effect (and (at start (not (hike_out_pending))) (at end (hike_out_done)))
  )

  (:durative-action camp_overnight
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (camp_overnight_pending)) (at start (hike_out_done)))
    :effect (and (at start (not (camp_overnight_pending))) (at end (camp_overnight_done)))
  )

  (:durative-action hike_back
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (hike_back_pending)) (at start (camp_overnight_done)))
    :effect (and (at start (not (hike_back_pending))) (at end (hike_back_done)))
  )
)
