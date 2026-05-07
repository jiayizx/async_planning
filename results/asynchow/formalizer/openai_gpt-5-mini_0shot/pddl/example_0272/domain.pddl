(define (domain calculate-owners-equity)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
  )

  ;; Step 1: Add up the value of your business assets. (10 minutes)
  (:durative-action do_step1
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step1)) (at start (s6_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done))))

  ;; Step 2: Calculate contra accounts on the businesses' assets. (5 minutes)
  (:durative-action do_step2
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step2)) (at start (s6_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done))))

  ;; Step 3: Calculate net asset value. (2 minutes)
  (:durative-action do_step3
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step3)) (at start (s1_done)) (at start (s2_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))))

  ;; Step 4: Calculate the total of your business liabilities. (10 minutes)
  (:durative-action do_step4
    :duration (= ?duration 10)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_done))))

  ;; Step 5: Subtract liabilities from net asset value to get the amount of equity. (2 minutes)
  (:durative-action do_step5
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step5)) (at start (s4_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_done))))

  ;; Step 6: Calculate the equity of individual owners. (5 minutes)
  (:durative-action do_step6
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step6)) (at start (s5_done)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (s6_done)))))
