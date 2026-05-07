(define (domain bumped_reaction)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
  )

  ;; Step 1: Speak with the gate agent (10 min = 600 seconds)
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_completed))
    )
  )

  ;; Step 2: Confirm your flight (20 min = 1200 seconds) — requires completion of step1
  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (s1_completed)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_completed))
    )
  )

  ;; Step 3: Ask for a check or cash reimbursement (10 min = 600 seconds) — requires completion of step1
  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s1_completed)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_completed))
    )
  )

  ;; Step 4: Ask for food, hotel, and transportation vouchers (10 min = 600 seconds)
  ;; This step produces the final semantic predicate s4_completed which is required in the goal
  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (s1_completed)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_completed))
    )
  )
)
