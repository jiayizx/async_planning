(define (domain move_out_of_town)
  (:requirements :durative-actions)
  (:predicates
    (pack_belongings_pending)
    (pack_belongings_done)
    (rent_uhaul_pending)
    (rent_uhaul_done)
    (load_uhaul_pending)
    (load_uhaul_done)
    (start_uhaul_pending)
    (start_uhaul_done)
    (leave_town_pending)
    (leave_town_done)
  )

  (:durative-action pack_belongings
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (pack_belongings_pending))
    :effect (and (at start (not (pack_belongings_pending)))
                 (at end (pack_belongings_done)))
  )

  (:durative-action rent_uhaul
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (rent_uhaul_pending))
    :effect (and (at start (not (rent_uhaul_pending)))
                 (at end (rent_uhaul_done)))
  )

  (:durative-action load_uhaul
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (load_uhaul_pending))
                    (at start (pack_belongings_done))
                    (at start (rent_uhaul_done)))
    :effect (and (at start (not (load_uhaul_pending)))
                 (at end (load_uhaul_done)))
  )

  (:durative-action start_uhaul
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (start_uhaul_pending))
                    (at start (load_uhaul_done)))
    :effect (and (at start (not (start_uhaul_pending)))
                 (at end (start_uhaul_done)))
  )

  (:durative-action leave_town
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (leave_town_pending))
                    (at start (start_uhaul_done)))
    :effect (and (at start (not (leave_town_pending)))
                 (at end (leave_town_done)))
  )
)
