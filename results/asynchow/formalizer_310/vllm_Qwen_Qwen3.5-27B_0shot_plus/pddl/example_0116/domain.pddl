(define (domain cheap_vacation)
  (:requirements :durative-actions)
  
  (:predicates
    (drive_to_hiking_front_pending)
    (drive_to_hiking_front_done)
    (pack_hiking_backpacks_pending)
    (pack_hiking_backpacks_done)
    (hike_out_trails_pending)
    (hike_out_trails_done)
    (camp_out_overnight_pending)
    (camp_out_overnight_done)
    (hike_trails_back_pending)
    (hike_trails_back_done)
  )

  (:durative-action drive_to_hiking_front
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (drive_to_hiking_front_pending))
    :effect (and (at start (not (drive_to_hiking_front_pending)))
                 (at end (drive_to_hiking_front_done)))
  )

  (:durative-action pack_hiking_backpacks
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (pack_hiking_backpacks_pending))
    :effect (and (at start (not (pack_hiking_backpacks_pending)))
                 (at end (pack_hiking_backpacks_done)))
  )

  (:durative-action hike_out_trails
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (hike_out_trails_pending))
                    (at start (drive_to_hiking_front_done))
                    (at start (pack_hiking_backpacks_done)))
    :effect (and (at start (not (hike_out_trails_pending)))
                 (at end (hike_out_trails_done)))
  )

  (:durative-action camp_out_overnight
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (camp_out_overnight_pending))
                    (at start (hike_out_trails_done)))
    :effect (and (at start (not (camp_out_overnight_pending)))
                 (at end (camp_out_overnight_done)))
  )

  (:durative-action hike_trails_back
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (hike_trails_back_pending))
                    (at start (camp_out_overnight_done)))
    :effect (and (at start (not (hike_trails_back_pending)))
                 (at end (hike_trails_back_done)))
  )
)
