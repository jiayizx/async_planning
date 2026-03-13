(define (domain analog-watch-compass)
  (:requirements :durative-actions)
  (:predicates
    (hold_watch_horizontal1_pending)
    (hold_watch_horizontal1_done)
    (point_hour_hand_sun_pending)
    (point_hour_hand_sun_done)
    (bisect_hour_12_south_pending)
    (bisect_hour_12_south_done)
    (hold_watch_horizontal2_pending)
    (hold_watch_horizontal2_done)
    (point_12_sun_pending)
    (point_12_sun_done)
    (bisect_hour_12_north_pending)
    (bisect_hour_12_north_done)
    (use_map_find_hemisphere_pending)
    (use_map_find_hemisphere_done)
    (use_north_star_find_hemisphere_pending)
    (use_north_star_find_hemisphere_done)
  )

  (:durative-action hold_watch_horizontal1
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (hold_watch_horizontal1_pending))
    :effect (and (at start (not (hold_watch_horizontal1_pending))) (at end (hold_watch_horizontal1_done)))
  )

  (:durative-action point_hour_hand_sun
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (point_hour_hand_sun_pending)) (at start (hold_watch_horizontal1_done)))
    :effect (and (at start (not (point_hour_hand_sun_pending))) (at end (point_hour_hand_sun_done)))
  )

  (:durative-action bisect_hour_12_south
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (bisect_hour_12_south_pending)) (at start (point_hour_hand_sun_done)))
    :effect (and (at start (not (bisect_hour_12_south_pending))) (at end (bisect_hour_12_south_done)))
  )

  (:durative-action hold_watch_horizontal2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (hold_watch_horizontal2_pending)) (at start (use_map_find_hemisphere_done)) (at start (use_north_star_find_hemisphere_done)))
    :effect (and (at start (not (hold_watch_horizontal2_pending))) (at end (hold_watch_horizontal2_done)))
  )

  (:durative-action point_12_sun
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (point_12_sun_pending)) (at start (hold_watch_horizontal2_done)))
    :effect (and (at start (not (point_12_sun_pending))) (at end (point_12_sun_done)))
  )

  (:durative-action bisect_hour_12_north
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (bisect_hour_12_north_pending)) (at start (point_12_sun_done)))
    :effect (and (at start (not (bisect_hour_12_north_pending))) (at end (bisect_hour_12_north_done)))
  )

  (:durative-action use_map_find_hemisphere
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (use_map_find_hemisphere_pending))
    :effect (and (at start (not (use_map_find_hemisphere_pending))) (at end (use_map_find_hemisphere_done)))
  )

  (:durative-action use_north_star_find_hemisphere
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (use_north_star_find_hemisphere_pending))
    :effect (and (at start (not (use_north_star_find_hemisphere_pending))) (at end (use_north_star_find_hemisphere_done)))
  )
)
