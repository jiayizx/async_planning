(define (domain raft-domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (acquired_boards_done)
    (laid_out_done)
    (attaching_done)
    (tools_acquired_done)
    (buoyancy_tested)
    (raft_built)
  )

  ;; Step 1: acquire wooden boards
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (acquired_boards_done))
    )
  )

  ;; Step 2: lay out pieces in work order
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (acquired_boards_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (laid_out_done))
    )
  )

  ;; Step 3: begin attaching pieces of wood
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (laid_out_done)) (at start (tools_acquired_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (attaching_done))
    )
  )

  ;; Step 4: acquire construction tools
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tools_acquired_done))
    )
  )

  ;; Step 5: test construction for buoyancy
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (attaching_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buoyancy_tested))
      (at end (raft_built))
    )
  )
)
