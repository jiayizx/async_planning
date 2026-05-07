(define (domain weekend_exciting)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    ; pending predicates (one per step)
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)

    ; done predicates (one per step)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)

    ; unique semantic predicates produced by each action (one per step)
    (step1_completed)
    (step2_completed)
    (step3_completed)
    (step4_completed)
    (step5_completed)
  )

  ; Step 1: make a plan (1800s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step1_done))
      (at end (step1_completed))
    )
  )

  ; Step 2: call and invite friends (1800s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step2_pending)) (at start (step1_completed)))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step2_done))
      (at end (step2_completed))
    )
  )

  ; Step 3: prepare and go groceries shopping (3600s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step3_pending)) (at start (step1_completed)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step3_done))
      (at end (step3_completed))
    )
  )

  ; Step 4: fill up the gas (600s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step4_pending)) (at start (step2_completed)) (at start (step3_completed)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step4_done))
      (at end (step4_completed))
    )
  )

  ; Step 5: pickup and meet with friends (1800s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step5_pending)) (at start (step4_completed)))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step5_done))
      (at end (step5_completed))
    )
  )
)
