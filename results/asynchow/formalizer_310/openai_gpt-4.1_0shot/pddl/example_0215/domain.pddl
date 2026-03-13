(define (domain freeze-watermelon)
  (:requirements :durative-actions)
  (:predicates
    (boil_sugar_water_pending)
    (boil_sugar_water_done)
    (chill_syrup_pending)
    (chill_syrup_done)
    (combine_watermelon_syrup_pending)
    (combine_watermelon_syrup_done)
    (cover_with_wax_paper_pending)
    (cover_with_wax_paper_done)
    (freeze_fruit_pending)
    (freeze_fruit_done)
  )

  (:durative-action boil_sugar_water
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (boil_sugar_water_pending))
    :effect (and (at start (not (boil_sugar_water_pending)))
                 (at end (boil_sugar_water_done)))
  )

  (:durative-action chill_syrup
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (chill_syrup_pending))
                    (at start (boil_sugar_water_done)))
    :effect (and (at start (not (chill_syrup_pending)))
                 (at end (chill_syrup_done)))
  )

  (:durative-action combine_watermelon_syrup
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (combine_watermelon_syrup_pending))
                    (at start (chill_syrup_done))
                    (at start (cover_with_wax_paper_done)))
    :effect (and (at start (not (combine_watermelon_syrup_pending)))
                 (at end (combine_watermelon_syrup_done)))
  )

  (:durative-action cover_with_wax_paper
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (cover_with_wax_paper_pending))
    :effect (and (at start (not (cover_with_wax_paper_pending)))
                 (at end (cover_with_wax_paper_done)))
  )

  (:durative-action freeze_fruit
    :parameters ()
    :duration (= ?duration 31104000)
    :condition (and (at start (freeze_fruit_pending))
                    (at start (combine_watermelon_syrup_done)))
    :effect (and (at start (not (freeze_fruit_pending)))
                 (at end (freeze_fruit_done)))
  )
)
