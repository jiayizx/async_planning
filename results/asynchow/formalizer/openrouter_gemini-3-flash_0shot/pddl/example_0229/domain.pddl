(define (domain nfs_drift_tuning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (menu_accessed)
    (suspension_tuned)
    (drivetrain_tuned)
    (aerodynamics_tuned)
    (tires_brakes_tuned)
  )

  (:durative-action access_menu
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (menu_accessed))
    )
  )

  (:durative-action tune_suspension
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (menu_accessed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (suspension_tuned))
    )
  )

  (:durative-action tune_drivetrain
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (menu_accessed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drivetrain_tuned))
    )
  )

  (:durative-action tune_aerodynamics
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (menu_accessed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (aerodynamics_tuned))
    )
  )

  (:durative-action tune_tires_brakes
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (menu_accessed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tires_brakes_tuned))
    )
  )
)