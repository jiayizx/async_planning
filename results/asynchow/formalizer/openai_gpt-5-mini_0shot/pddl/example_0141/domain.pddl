(define (domain prune_cherry_tree)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sterilize_done)
    (measure_done)
    (cut_top_done)
  )

  ; Step 1: Sterilize and sharpen your pruning shears (15 minutes = 900 seconds)
  (:durative-action do_step1_sterilize
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sterilize_done))
    )
  )

  ; Step 2: Measure your cherry tree (5 minutes = 300 seconds)
  (:durative-action do_step2_measure
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (measure_done))
    )
  )

  ; Step 3: Cut the top of the central trunk (30 minutes = 1800 seconds)
  ; Requires both sterilize_done and measure_done as predecessors (both must be true at start)
  (:durative-action do_step3_cut_top
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (sterilize_done)) (at start (measure_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cut_top_done))
    )
  )
)
