(define (domain drink_sippy)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (retrieved_done)
    (screwed_done)
    (filled_done)
    (drank_done)
    (cap_removed_done)
  )

  ;; Step 1: Retrieve the clean sippy cup (20s)
  (:durative-action do_step1_retrieve_cup
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (retrieved_done)) ) )

  ;; Step 2: Screw the lid onto the cup tightly (10s)
  ;; Requires Step 1 and Step 3 (retrieved_done and filled_done)
  (:durative-action do_step2_screw_lid
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (retrieved_done)) (at start (filled_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (screwed_done)) ) )

  ;; Step 3: Fill the cup with fresh apple juice (15s)
  ;; Requires Step 1 (retrieved_done)
  (:durative-action do_step3_fill_cup
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (retrieved_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (filled_done)) ) )

  ;; Step 4: Tilt the cup and take a long drink (30s)
  ;; Requires Steps 1,2,3,5 (retrieved_done, screwed_done, filled_done, cap_removed_done)
  (:durative-action do_step4_drink
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (retrieved_done)) (at start (screwed_done)) (at start (filled_done)) (at start (cap_removed_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (drank_done)) ) )

  ;; Step 5: Remove the protective travel cap from the spout (5s)
  ;; Requires Steps 1,2,3 (retrieved_done, screwed_done, filled_done)
  (:durative-action do_step5_remove_cap
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (retrieved_done)) (at start (screwed_done)) (at start (filled_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cap_removed_done)) ) )
)
