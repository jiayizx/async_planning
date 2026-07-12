(define (domain rug-photography)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (rugs_vacuumed)
    (camera_setup)
    (lighting_selected)
    (rugs_transported)
    (light_intensity_tested)
    (rugs_positioned)
    (rugs_steamed)
    (rugs_tagged)
    (rugs_photographed)
    (studio_floor_cleared)
  )

  (:durative-action vacuum_rugs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (rugs_tagged))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rugs_vacuumed))
    )
  )

  (:durative-action setup_camera_and_tripod
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (rugs_positioned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (camera_setup))
    )
  )

  (:durative-action select_lighting_equipment
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lighting_selected))
    )
  )

  (:durative-action transport_rugs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (studio_floor_cleared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rugs_transported))
    )
  )

  (:durative-action test_light_intensity
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (lighting_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (light_intensity_tested))
    )
  )

  (:durative-action position_rugs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (rugs_steamed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rugs_positioned))
    )
  )

  (:durative-action steam_rugs
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (rugs_vacuumed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rugs_steamed))
    )
  )

  (:durative-action tag_rugs
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (rugs_transported))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rugs_tagged))
    )
  )

  (:durative-action take_photographs
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (camera_setup))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rugs_photographed))
    )
  )

  (:durative-action clear_studio_floor
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (studio_floor_cleared))
    )
  )
)