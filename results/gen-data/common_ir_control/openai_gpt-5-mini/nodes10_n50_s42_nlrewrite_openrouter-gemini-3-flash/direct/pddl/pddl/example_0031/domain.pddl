(define (domain photograph-rugs)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (vacuum_done)
    (camera_setup_done)
    (lighting_selected)
    (transport_done)
    (light_tested)
    (positioned_flat)
    (steamed)
    (tagged)
    (photos_taken)
    (floor_cleared)
  )

  (:durative-action do_step1_vacuum
    :duration (= ?duration 900)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (vacuum_done))
    )
  )

  (:durative-action do_step2_camera_setup
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (positioned_flat)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (camera_setup_done))
    )
  )

  (:durative-action do_step3_select_lighting
    :duration (= ?duration 1200)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (lighting_selected))
    )
  )

  (:durative-action do_step4_transport_rugs
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (floor_cleared)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (transport_done))
    )
  )

  (:durative-action do_step5_test_light
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (lighting_selected)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (light_tested))
    )
  )

  (:durative-action do_step6_position_flat
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (steamed)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (positioned_flat))
    )
  )

  (:durative-action do_step7_steam
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)) (at start (vacuum_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (steamed))
    )
  )

  (:durative-action do_step8_tag
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (transport_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (tagged))
    )
  )

  (:durative-action do_step9_photograph
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step9)) (at start (camera_setup_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (photos_taken))
    )
  )

  (:durative-action do_step10_clear_floor
    :duration (= ?duration 2700)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (floor_cleared))
    )
  )
)
