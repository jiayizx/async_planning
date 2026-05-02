(define (domain own_bar)
  (:requirements :durative-actions)
  (:predicates
    (obtain_business_license_pending)
    (obtain_business_license_done)
    (buy_building_property_pending)
    (buy_building_property_done)
    (renovate_building_pending)
    (renovate_building_done)
    (inspect_building_pending)
    (inspect_building_done)
    (obtain_liquor_license_pending)
    (obtain_liquor_license_done)
  )

  (:durative-action obtain_business_license
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (obtain_business_license_pending))
    :effect (and
      (at start (not (obtain_business_license_pending)))
      (at end (obtain_business_license_done))
    )
  )

  (:durative-action buy_building_property
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (buy_building_property_pending))
    :effect (and
      (at start (not (buy_building_property_pending)))
      (at end (buy_building_property_done))
    )
  )

  (:durative-action renovate_building
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and
      (at start (renovate_building_pending))
      (at start (buy_building_property_done))
    )
    :effect (and
      (at start (not (renovate_building_pending)))
      (at end (renovate_building_done))
    )
  )

  (:durative-action inspect_building
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and
      (at start (inspect_building_pending))
      (at start (renovate_building_done))
    )
    :effect (and
      (at start (not (inspect_building_pending)))
      (at end (inspect_building_done))
    )
  )

  (:durative-action obtain_liquor_license
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and
      (at start (obtain_liquor_license_pending))
      (at start (obtain_business_license_done))
      (at start (inspect_building_done))
    )
    :effect (and
      (at start (not (obtain_liquor_license_pending)))
      (at end (obtain_liquor_license_done))
    )
  )
)
