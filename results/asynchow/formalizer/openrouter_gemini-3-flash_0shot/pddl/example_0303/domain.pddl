(define (domain analog_watch_compass)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (watch_held_horizontally)
    (hour_hand_pointed_sun)
    (south_found)
    (watch_held_horizontal_alt)
    (twelve_pointed_sun)
    (north_found)
    (hemisphere_found_home)
    (hemisphere_found_wilderness)
  )

  (:durative-action step1_hold_horizontally
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (north_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watch_held_horizontally)))
  )

  (:durative-action step2_point_hour_hand
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (watch_held_horizontally)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hour_hand_pointed_sun)))
  )

  (:durative-action step3_bisect_south
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (hour_hand_pointed_sun)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (south_found)))
  )

  (:durative-action step4_hold_horizontal_alt
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (hemisphere_found_home)) (at start (hemisphere_found_wilderness)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watch_held_horizontal_alt)))
  )

  (:durative-action step5_point_twelve
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (watch_held_horizontal_alt)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (twelve_pointed_sun)))
  )

  (:durative-action step6_bisect_north
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (twelve_pointed_sun)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (north_found)))
  )

  (:durative-action step7_map_hemisphere
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hemisphere_found_home)))
  )

  (:durative-action step8_star_hemisphere
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hemisphere_found_wilderness)))
  )
)