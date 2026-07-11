(define (domain grill_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (light_grill_pending)
    (light_grill_done)
    (warm_charcoal_pending)
    (warm_charcoal_done)
    (make_patties_pending)
    (make_patties_done)
    (cook_hamburgers_pending)
    (cook_hamburgers_done)
    (put_on_bun_pending)
    (put_on_bun_done)
  )

  (:durative-action light_grill
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (light_grill_pending)))
    :effect (and (at start (not (light_grill_pending)))
                 (at end (light_grill_done)))
  )

  (:durative-action warm_charcoal
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (warm_charcoal_pending))
                    (at start (light_grill_done)))
    :effect (and (at start (not (warm_charcoal_pending)))
                 (at end (warm_charcoal_done)))
  )

  (:durative-action make_patties
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (make_patties_pending))
                    (at start (light_grill_done)))
    :effect (and (at start (not (make_patties_pending)))
                 (at end (make_patties_done)))
  )

  (:durative-action cook_hamburgers
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (cook_hamburgers_pending))
                    (at start (warm_charcoal_done))
                    (at start (make_patties_done)))
    :effect (and (at start (not (cook_hamburgers_pending)))
                 (at end (cook_hamburgers_done)))
  )

  (:durative-action put_on_bun
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (put_on_bun_pending))
                    (at start (cook_hamburgers_done)))
    :effect (and (at start (not (put_on_bun_pending)))
                 (at end (put_on_bun_done)))
  )
)
