(define (domain rug_photography)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (vacuumed)
    (camera_ready)
    (lighting_selected)
    (rugs_transported)
    (light_tested)
    (rugs_positioned)
    (rugs_steamed)
    (rugs_tagged)
    (photos_taken)
    (studio_cleared)
  )

  (:durative-action step1_vacuum
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rugs_tagged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vacuumed)))
  )

  (:durative-action step2_setup_camera
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (rugs_positioned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camera_ready)))
  )

  (:durative-action step3_select_lighting
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lighting_selected)))
  )

  (:durative-action step4_transport_rugs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (studio_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rugs_transported)))
  )

  (:durative-action step5_test_light
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (lighting_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (light_tested)))
  )

  (:durative-action step6_position_rugs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rugs_steamed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rugs_positioned)))
  )

  (:durative-action step7_steam_rugs
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (vacuumed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rugs_steamed)))
  )

  (:durative-action step8_tag_rugs
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (rugs_transported)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rugs_tagged)))
  )

  (:durative-action step9_take_photos
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (camera_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (photos_taken)))
  )

  (:durative-action step10_clear_studio
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (studio_cleared)))
  )
)