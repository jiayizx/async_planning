(define (domain make-puff-pastry)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shells_made)
    (baked_brie)
    (filled_puffs)
    (ham_cheese_done)
    (twists_done)
  )

  ;; Step 1: Make puff pastry shells (7200s)
  ;; This action is tied specifically to step1 (no parameter) to prevent the planner
  ;; from remapping actions to different step objects.
  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (shells_made))
    )
  )

  ;; Step 2: Use puff pastry to make baked brie (3600s) -- must start after shells are made
  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (shells_made)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (baked_brie))
    )
  )

  ;; Step 3: Make some filled pastry puffs (45 min = 2700s) -- must start after shells are made
  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (shells_made)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (filled_puffs))
    )
  )

  ;; Step 4: Make a ham and cheese pastry (3600s) -- must start after shells are made
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (shells_made)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (ham_cheese_done))
    )
  )

  ;; Step 5: Make some herb and cheese twists (40 min = 2400s) -- must start after shells are made
  (:durative-action do_step5
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step5)) (at start (shells_made)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (twists_done))
    )
  )
)
