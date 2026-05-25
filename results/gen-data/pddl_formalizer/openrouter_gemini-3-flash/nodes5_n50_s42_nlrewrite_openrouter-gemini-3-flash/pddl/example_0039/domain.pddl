(define (domain body_measurements)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tape_located)
    (tutorial_watched)
    (clothing_removed)
    (waist_hip_measured)
    (dimensions_recorded)
  )

  (:durative-action locate_tape
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tape_located)))
  )

  (:durative-action watch_tutorial
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tutorial_watched)))
  )

  (:durative-action remove_clothing
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothing_removed)))
  )

  (:durative-action measure_waist_hip
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (tape_located)) (at start (clothing_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_hip_measured)))
  )

  (:durative-action record_dimensions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (tape_located)) (at start (tutorial_watched)) (at start (waist_hip_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimensions_recorded)))
  )
)