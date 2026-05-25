(define (domain crazy_task)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (laws_researched)
    (helium_purchased)
    (balloon_filled)
    (camera_attached)
    (parachute_designed)
    (cord_rigged)
    (gps_programmed)
    (housing_ordered)
    (waiver_secured)
    (balloon_launched)
  )

  (:durative-action research_laws
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laws_researched)))
  )

  (:durative-action purchase_helium
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (laws_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (helium_purchased)))
  )

  (:durative-action fill_balloon
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (laws_researched)) (at start (helium_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balloon_filled)))
  )

  (:durative-action secure_waiver
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (laws_researched)) (at start (helium_purchased)) (at start (balloon_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waiver_secured)))
  )

  (:durative-action launch_balloon
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (laws_researched)) (at start (helium_purchased)) (at start (balloon_filled)) (at start (waiver_secured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balloon_launched)))
  )

  (:durative-action design_parachute
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parachute_designed)))
  )

  (:durative-action order_housing
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (housing_ordered)))
  )

  (:durative-action rig_cord
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (parachute_designed)) (at start (housing_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cord_rigged)))
  )

  (:durative-action program_gps
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (laws_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gps_programmed)))
  )

  (:durative-action attach_camera
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (laws_researched)) (at start (gps_programmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camera_attached)))
  )
)