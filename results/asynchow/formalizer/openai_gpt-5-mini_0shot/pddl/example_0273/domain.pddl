(define (domain roommate_problems)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
  )

  ;; Step 1: Discuss the cleaning schedule. 30 minutes = 1800 seconds
  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done))
            )
  )

  ;; Step 2: Develop a plan to handle visitors. 3600 seconds
  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done))
            )
  )

  ;; Step 3: Discuss your phone policy. 15 minutes = 900 seconds
  (:durative-action do_step3
    :duration (= ?duration 900)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))
            )
  )

  ;; Step 4: Determine a lights out time. 30 minutes = 1800 seconds
  (:durative-action do_step4
    :duration (= ?duration 1800)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_done))
            )
  )

  ;; Step 5: Sign a roommate agreement. 3600 seconds
  ;; Requires completion of steps 1,2,3,4
  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and
                 (at start (step_pending step5))
                 (at start (s1_done))
                 (at start (s2_done))
                 (at start (s3_done))
                 (at start (s4_done))
               )
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_done))
            )
  )
)
