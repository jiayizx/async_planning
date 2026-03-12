(define (domain pass_time_doing_art)
  (:requirements :durative-actions)
  (:predicates
    (gather_pending)
    (gather_done)
    (desk_caddy_pending)
    (desk_caddy_done)
    (drum_kit_pending)
    (drum_kit_done)
    (bowling_pending)
    (bowling_done)
  )

  (:durative-action gather_materials
    :parameters ()
    :duration (= ?duration 600) ; 10 minutes = 600 seconds
    :condition (at start (gather_pending))
    :effect (and (at start (not (gather_pending))) (at end (gather_done)))
  )

  (:durative-action make_tin_can_desk_caddy
    :parameters ()
    :duration (= ?duration 1800) ; 30 minutes = 1800 seconds
    :condition (and (at start (desk_caddy_pending)) (at start (gather_done)))
    :effect (and (at start (not (desk_caddy_pending))) (at end (desk_caddy_done)))
  )

  (:durative-action make_tin_can_drum_kit
    :parameters ()
    :duration (= ?duration 2700) ; 45 minutes = 2700 seconds
    :condition (and (at start (drum_kit_pending)) (at start (gather_done)))
    :effect (and (at start (not (drum_kit_pending))) (at end (drum_kit_done)))
  )

  (:durative-action make_soup_can_bowling_game
    :parameters ()
    :duration (= ?duration 1200) ; 20 minutes = 1200 seconds
    :condition (and (at start (bowling_pending)) (at start (gather_done)))
    :effect (and (at start (not (bowling_pending))) (at end (bowling_done)))
  )
)
