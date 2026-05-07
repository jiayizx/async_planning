(define (domain writing_revision)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (rested)
    (printed)
    (read_aloud)
    (peer_reviewed)
  )

  (:durative-action allow_rest
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rested)))
  )

  (:durative-action print_paper
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (printed)))
  )

  (:durative-action read_out_loud
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (read_aloud)))
  )

  (:durative-action peer_proofread
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peer_reviewed)))
  )
)