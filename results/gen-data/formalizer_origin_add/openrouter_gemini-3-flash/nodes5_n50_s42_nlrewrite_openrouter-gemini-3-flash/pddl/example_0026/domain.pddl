(define (domain drum_customization)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (heads_researched)
    (heads_arrived)
    (shells_cleaned)
    (wraps_applied)
    (kit_tuned)
  )

  (:durative-action research_heads
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heads_researched)))
  )

  (:durative-action wait_for_heads
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (heads_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heads_arrived)))
  )

  (:durative-action clean_shells
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shells_cleaned)))
  )

  (:durative-action apply_wraps
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (heads_arrived)) (at start (shells_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wraps_applied)))
  )

  (:durative-action tune_kit
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (wraps_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kit_tuned)))
  )
)