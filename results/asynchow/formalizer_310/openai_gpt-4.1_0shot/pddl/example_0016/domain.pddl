(define (domain sandcastle)
  (:requirements :durative-actions)
  (:predicates
    (pack_shovel_pale_pending)
    (pack_shovel_pale_done)
    (get_dressed_pending)
    (get_dressed_done)
    (drive_to_beach_pending)
    (drive_to_beach_done)
    (park_by_beach_pending)
    (park_by_beach_done)
    (walk_get_sand_pending)
    (walk_get_sand_done)
  )

  (:durative-action pack_shovel_pale
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pack_shovel_pale_pending))
    :effect (and (at start (not (pack_shovel_pale_pending))) (at end (pack_shovel_pale_done)))
  )

  (:durative-action get_dressed
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (get_dressed_pending))
    :effect (and (at start (not (get_dressed_pending))) (at end (get_dressed_done)))
  )

  (:durative-action drive_to_beach
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (drive_to_beach_pending)) (at start (pack_shovel_pale_done)) (at start (get_dressed_done)))
    :effect (and (at start (not (drive_to_beach_pending))) (at end (drive_to_beach_done)))
  )

  (:durative-action park_by_beach
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (park_by_beach_pending)) (at start (drive_to_beach_done)))
    :effect (and (at start (not (park_by_beach_pending))) (at end (park_by_beach_done)))
  )

  (:durative-action walk_get_sand
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (walk_get_sand_pending)) (at start (park_by_beach_done)))
    :effect (and (at start (not (walk_get_sand_pending))) (at end (walk_get_sand_done)))
  )
)
