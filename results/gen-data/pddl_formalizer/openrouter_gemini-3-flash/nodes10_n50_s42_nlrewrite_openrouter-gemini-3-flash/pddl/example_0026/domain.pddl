(define (domain rowing_posture)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assessment_done)
    (bands_purchased)
    (techniques_researched)
    (video_watched)
    (motion_practiced)
    (warmup_done)
    (equipment_adjusted)
    (cable_rows_done)
    (stretches_done)
    (workout_recorded)
  )

  (:durative-action consult_therapist
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assessment_done)))
  )

  (:durative-action purchase_bands
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (assessment_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bands_purchased)))
  )

  (:durative-action research_techniques
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (bands_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (techniques_researched)))
  )

  (:durative-action watch_video
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (video_watched)))
  )

  (:durative-action practice_motion
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (techniques_researched)) (at start (video_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (motion_practiced)))
  )

  (:durative-action perform_warmup
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (motion_practiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (warmup_done)))
  )

  (:durative-action adjust_equipment
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (warmup_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_adjusted)))
  )

  (:durative-action perform_cable_rows
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (equipment_adjusted)) (at start (assessment_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cable_rows_done)))
  )

  (:durative-action complete_stretches
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cable_rows_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stretches_done)))
  )

  (:durative-action record_workout
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (stretches_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workout_recorded)))
  )
)