(define (domain quartz_repair)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cleaned)
    (taped)
    (superglued)
    (epoxied)
    (filed)
  )

  (:durative-action clean_counter
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleaned)))
  )

  (:durative-action apply_tape
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (taped)))
  )

  (:durative-action apply_superglue
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (taped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (superglued)))
  )

  (:durative-action apply_epoxy
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (taped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (epoxied)))
  )

  (:durative-action file_patch
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (superglued)) (at start (epoxied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (filed)))
  )
)