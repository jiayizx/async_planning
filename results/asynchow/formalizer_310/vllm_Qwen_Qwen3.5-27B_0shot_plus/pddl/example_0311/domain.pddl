(define (domain lavender_tea)
  (:requirements :durative-actions)
  
  (:predicates
    (boil_water_pending)
    (boil_water_done)
    (prepare_lavender_pending)
    (prepare_lavender_done)
    (steep_tea_pending)
    (steep_tea_done)
  )

  (:durative-action boil_water
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (boil_water_pending))
    :effect (and (at start (not (boil_water_pending)))
                 (at end (boil_water_done)))
  )

  (:durative-action prepare_lavender
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (prepare_lavender_pending))
    :effect (and (at start (not (prepare_lavender_pending)))
                 (at end (prepare_lavender_done)))
  )

  (:durative-action steep_tea
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (steep_tea_pending))
                    (at start (boil_water_done))
                    (at start (prepare_lavender_done)))
    :effect (and (at start (not (steep_tea_pending)))
                 (at end (steep_tea_done)))
  )
)
