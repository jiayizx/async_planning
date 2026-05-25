(define (domain posture_improvement)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (scapular_researched)
    (bands_purchased)
    (stretches_completed)
    (assessment_done)
    (video_watched)
    (workout_recorded)
    (muscle_memory_built)
    (warmup_done)
    (equipment_adjusted)
    (rows_performed)
  )

  (:durative-action step5_consult_pt
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assessment_done)))
  )

  (:durative-action step3_purchase_bands
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (assessment_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bands_purchased)))
  )

  (:durative-action step2_research_scapular
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (bands_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scapular_researched)))
  )

  (:durative-action step6_watch_video
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (video_watched)))
  )

  (:durative-action step8_practice_motion
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (scapular_researched)) (at start (video_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (muscle_memory_built)))
  )

  (:durative-action step9_warmup_facepulls
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (muscle_memory_built)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (warmup_done)))
  )

  (:durative-action step10_adjust_equipment
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (warmup_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_adjusted)))
  )

  (:durative-action step1_cable_rows
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (assessment_done)) (at start (equipment_adjusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rows_performed)))
  )

  (:durative-action step4_chest_stretches
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (rows_performed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stretches_completed)))
  )

  (:durative-action step7_record_workout
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (stretches_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workout_recorded)))
  )
)