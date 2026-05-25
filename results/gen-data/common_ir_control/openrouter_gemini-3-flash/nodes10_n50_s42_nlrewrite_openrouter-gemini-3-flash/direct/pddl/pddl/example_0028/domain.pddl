(define (domain fingerboarding)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (components_unboxed)
    (deck_sanded)
    (screws_organized)
    (trucks_attached)
    (wheels_installed)
    (bushings_tuned)
    (workspace_cleaned)
    (grip_tape_applied)
    (ramp_setup)
    (kickflip_recorded)
  )

  (:durative-action unbox_components
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (components_unboxed)))
  )

  (:durative-action sand_deck
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (components_unboxed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (deck_sanded)))
  )

  (:durative-action organize_screws
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (screws_organized)))
  )

  (:durative-action attach_trucks
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (components_unboxed)) (at start (deck_sanded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trucks_attached)))
  )

  (:durative-action install_wheels
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (trucks_attached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wheels_installed)))
  )

  (:durative-action tune_bushings
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (trucks_attached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bushings_tuned)))
  )

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (screws_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned)))
  )

  (:durative-action apply_grip_tape
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grip_tape_applied)))
  )

  (:durative-action setup_ramp
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (screws_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ramp_setup)))
  )

  (:durative-action record_kickflip
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (components_unboxed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kickflip_recorded)))
  )
)