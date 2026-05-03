(define (problem grill_friends)
  (:domain grill_planning)
  
  (:init
    (light_grill_pending)
    (warm_charcoal_pending)
    (make_patties_pending)
    (cook_hamburgers_pending)
    (put_on_bun_pending)
  )

  (:goal (and
    (light_grill_done)
    (warm_charcoal_done)
    (make_patties_done)
    (cook_hamburgers_done)
    (put_on_bun_done)
  ))
)
