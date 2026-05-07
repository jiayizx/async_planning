(define (domain fishing_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (search_regulations_pending)
    (search_regulations_done)
    (get_license_pending)
    (get_license_done)
    (buy_equipment_pending)
    (buy_equipment_done)
    (search_streams_pending)
    (search_streams_done)
    (drive_to_streams_pending)
    (drive_to_streams_done)
    (unpack_equipment_pending)
    (unpack_equipment_done)
    (cast_line_pending)
    (cast_line_done)
  )

  (:durative-action search_regulations
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_regulations_pending)))
    :effect (and (at start (not (search_regulations_pending)))
                 (at end (search_regulations_done)))
  )

  (:durative-action get_license
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (get_license_pending))
                    (at start (search_regulations_done)))
    :effect (and (at start (not (get_license_pending)))
                 (at end (get_license_done)))
  )

  (:durative-action buy_equipment
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (buy_equipment_pending))
                    (at start (get_license_done)))
    :effect (and (at start (not (buy_equipment_pending)))
                 (at end (buy_equipment_done)))
  )

  (:durative-action search_streams
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_streams_pending))
                    (at start (get_license_done)))
    :effect (and (at start (not (search_streams_pending)))
                 (at end (search_streams_done)))
  )

  (:durative-action drive_to_streams
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (drive_to_streams_pending))
                    (at start (buy_equipment_done))
                    (at start (search_streams_done)))
    :effect (and (at start (not (drive_to_streams_pending)))
                 (at end (drive_to_streams_done)))
  )

  (:durative-action unpack_equipment
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (unpack_equipment_pending))
                    (at start (drive_to_streams_done)))
    :effect (and (at start (not (unpack_equipment_pending)))
                 (at end (unpack_equipment_done)))
  )

  (:durative-action cast_line
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (cast_line_pending))
                    (at start (unpack_equipment_done)))
    :effect (and (at start (not (cast_line_pending)))
                 (at end (cast_line_done)))
  )
)
