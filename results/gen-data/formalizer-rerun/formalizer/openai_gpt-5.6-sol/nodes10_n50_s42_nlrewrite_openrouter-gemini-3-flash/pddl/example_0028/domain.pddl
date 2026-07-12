(define (domain fingerboarding)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (grip_tape_applied)
    (components_unboxed)
    (deck_edges_sanded)
    (hardware_organized)
    (trucks_attached)
    (wheels_installed)
    (bushings_tuned)
    (ramp_set_up)
    (workspace_cleaned)
    (kickflip_video_recorded)
  )

  (:durative-action apply_grip_tape
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step1))
      (at start (workspace_cleaned))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (grip_tape_applied))
    )
  )

  (:durative-action unbox_components
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (components_unboxed))
    )
  )

  (:durative-action sand_deck_edges
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step3))
      (at start (components_unboxed))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (deck_edges_sanded))
    )
  )

  (:durative-action organize_hardware
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (hardware_organized))
    )
  )

  (:durative-action attach_trucks
    :parameters ()
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending step5))
      (at start (components_unboxed))
      (at start (deck_edges_sanded))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (trucks_attached))
    )
  )

  (:durative-action install_wheels
    :parameters ()
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending step6))
      (at start (trucks_attached))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (wheels_installed))
    )
  )

  (:durative-action tune_bushings
    :parameters ()
    :duration (= ?duration 360)
    :condition (and
      (at start (step_pending step7))
      (at start (trucks_attached))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (bushings_tuned))
    )
  )

  (:durative-action set_up_ramp
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step8))
      (at start (hardware_organized))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (ramp_set_up))
    )
  )

  (:durative-action clean_workspace
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step9))
      (at start (hardware_organized))
    )
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (workspace_cleaned))
    )
  )

  (:durative-action record_kickflip_video
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step10))
      (at start (components_unboxed))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (kickflip_video_recorded))
    )
  )
)