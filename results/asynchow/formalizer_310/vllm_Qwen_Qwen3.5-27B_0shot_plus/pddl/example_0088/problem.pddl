(define (problem bar_ownership_problem)
  (:domain bar_ownership)
  
  (:init
    (obtain_business_license_pending)
    (buy_building_property_pending)
    (renovate_building_pending)
    (certify_building_pending)
    (obtain_liquor_license_pending)
  )

  (:goal (and
    (obtain_business_license_done)
    (buy_building_property_done)
    (renovate_building_done)
    (certify_building_done)
    (obtain_liquor_license_done)
  ))
)
