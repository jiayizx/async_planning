(define (domain pass_time_by_doing_art)
  (:requirements :durative-actions)
  (:predicates
    (gather_materials_pending)
    (gather_materials_done)
    (make_desk_caddy_pending)
    (make_desk_caddy_done)
    (make_drum_kit_pending)
    (make_drum_kit_done)
    (make_bowling_game_pending)
    (make_bowling_game_done)
  )

  (:durative-action gather_materials
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (gather_materials_pending))
    :effect (and
      (at start (not (gather_materials_pending)))
      (at end (gather_materials_done))
    )
  )

  (:durative-action make_desk_caddy
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (make_desk_caddy_pending))
      (at start (gather_materials_done))
    )
    :effect (and
      (at start (not (make_desk_caddy_pending)))
      (at end (make_desk_caddy_done))
    )
  )

  (:durative-action make_drum_kit
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (make_drum_kit_pending))
      (at start (gather_materials_done))
    )
    :effect (and
      (at start (not (make_drum_kit_pending)))
      (at end (make_drum_kit_done))
    )
  )

  (:durative-action make_bowling_game
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (make_bowling_game_pending))
      (at start (gather_materials_done))
    )
    :effect (and
      (at start (not (make_bowling_game_pending)))
      (at end (make_bowling_game_done))
    )
  )
)
