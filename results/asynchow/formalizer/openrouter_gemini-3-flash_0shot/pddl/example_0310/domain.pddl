(define (domain take_measurements)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (waist_identified)
    (waist_measured)
    (hip_measured)
    (inseam_measured)
    (trousers_measured)
    (thigh_measured)
    (half_girth_measured)
  )

  (:durative-action identify_waist
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_identified)))
  )

  (:durative-action find_waist_measurement
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (waist_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_measured)))
  )

  (:durative-action measure_hip
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hip_measured)))
  )

  (:durative-action measure_inseam_with_trousers
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trousers_measured)))
  )

  (:durative-action find_inseam_measurement
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (trousers_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inseam_measured)))
  )

  (:durative-action measure_thigh
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thigh_measured)))
  )

  (:durative-action measure_half_girth
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (half_girth_measured)))
  )
)