(define (domain create_prison_tattoo_ink)
  (:requirements :durative-actions)
  (:predicates
    (put_powder_pending)
    (put_powder_done)
    (add_water_pending)
    (add_water_done)
    (mix_ink_pending)
    (mix_ink_done)
  )

  (:durative-action action_put_powder
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (put_powder_pending))
    :effect (and
      (at start (not (put_powder_pending)))
      (at end (put_powder_done))
    )
  )

  (:durative-action action_add_water
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (add_water_pending))
    :effect (and
      (at start (not (add_water_pending)))
      (at end (add_water_done))
    )
  )

  (:durative-action action_mix_ink
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (mix_ink_pending)) (at start (put_powder_done)) (at start (add_water_done)))
    :effect (and
      (at start (not (mix_ink_pending)))
      (at end (mix_ink_done))
    )
  )
)
