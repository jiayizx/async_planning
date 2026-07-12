(define (domain rowing-posture)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cable_rows_completed)
    (retraction_researched)
    (bands_purchased)
    (chest_stretches_completed)
    (baseline_assessed)
    (rowing_video_watched)
    (workout_recorded)
    (rowing_motion_practiced)
    (face_pulls_completed)
    (equipment_adjusted)
  )

  (:durative-action perform_cable_rows
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (baseline_assessed))
      (at start (equipment_adjusted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cable_rows_completed))
    )
  )

  (:durative-action research_retraction
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (bands_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (retraction_researched))
    )
  )

  (:durative-action purchase_bands
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (baseline_assessed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bands_purchased))
    )
  )

  (:durative-action complete_chest_stretches
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (cable_rows_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chest_stretches_completed))
    )
  )

  (:durative-action consult_physical_therapist
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baseline_assessed))
    )
  )

  (:durative-action watch_rowing_video
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rowing_video_watched))
    )
  )

  (:durative-action record_workout
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (chest_stretches_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (workout_recorded))
    )
  )

  (:durative-action practice_rowing_motion
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (retraction_researched))
      (at start (rowing_video_watched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rowing_motion_practiced))
    )
  )

  (:durative-action perform_face_pulls
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (rowing_motion_practiced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (face_pulls_completed))
    )
  )

  (:durative-action adjust_equipment
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (face_pulls_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equipment_adjusted))
    )
  )
)