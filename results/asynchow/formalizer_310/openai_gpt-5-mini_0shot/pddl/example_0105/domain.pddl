(define (domain camping-domain)
  (:requirements :durative-actions)
  (:predicates
    (buy_equipment_pending)
    (buy_equipment_done)
    (pick_site_pending)
    (pick_site_done)
    (pack_equipment_pending)
    (pack_equipment_done)
    (drive_to_site_pending)
    (drive_to_site_done)
    (park_car_pending)
    (park_car_done)
    (enter_site_pending)
    (enter_site_done)
  )

  (:durative-action buy_equipment
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (buy_equipment_pending))
    :effect (and (at start (not (buy_equipment_pending))) (at end (buy_equipment_done)))
  )

  (:durative-action pick_site
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pick_site_pending))
    :effect (and (at start (not (pick_site_pending))) (at end (pick_site_done)))
  )

  (:durative-action pack_equipment
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pack_equipment_pending)) (at start (buy_equipment_done)) (at start (pick_site_done)))
    :effect (and (at start (not (pack_equipment_pending))) (at end (pack_equipment_done)))
  )

  (:durative-action drive_to_site
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (drive_to_site_pending)) (at start (pack_equipment_done)))
    :effect (and (at start (not (drive_to_site_pending))) (at end (drive_to_site_done)))
  )

  (:durative-action park_car
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (park_car_pending)) (at start (drive_to_site_done)))
    :effect (and (at start (not (park_car_pending))) (at end (park_car_done)))
  )

  (:durative-action enter_site
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (enter_site_pending)) (at start (park_car_done)))
    :effect (and (at start (not (enter_site_pending))) (at end (enter_site_done)))
  )
)
