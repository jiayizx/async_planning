(define (domain deal_period_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (looked_sink_done)
    (looked_linen_done)
    (asked_neighbor_done)
    (went_store_done)
    (used_pad_done)
  )

  ;; Step 1: Look under the sink in the lavatory (2 min = 120 sec)
  (:durative-action do_step1_look_sink
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (looked_sink_done)) ) )

  ;; Step 2: Look in a linen closet (3 min = 180 sec)
  (:durative-action do_step2_look_linen
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (looked_linen_done)) ) )

  ;; Step 3: Ask a neighbor (10 min = 600 sec)
  (:durative-action do_step3_ask_neighbor
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (asked_neighbor_done)) ) )

  ;; Step 4: Go to the store (30 min = 1800 sec)
  (:durative-action do_step4_go_store
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (went_store_done)) ) )

  ;; Step 5: Use the sanitary pad (5 min = 300 sec)
  ;; Requires completion of steps 1,2,3,4
  (:durative-action do_step5_use_pad
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
                 (at start (step_pending step5))
                 (at start (looked_sink_done))
                 (at start (looked_linen_done))
                 (at start (asked_neighbor_done))
                 (at start (went_store_done)) )
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (used_pad_done)) ) )
)
