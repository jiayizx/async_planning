(define (domain minimalist)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
  )

  ;; Step 1: Clear out extra furniture (172800 seconds = 2 days)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step1)) (at start (s2_completed)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_completed))
            )
  )

  ;; Step 2: Consider moving to a smaller living space (2 months = 5184000 seconds; 60 days)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step2)) (at start (s4_completed)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_completed))
            )
  )

  ;; Step 3: Think about going car-less (2 months = 5184000 seconds; 60 days)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step3)) (at start (s4_completed)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_completed))
            )
  )

  ;; Step 4: Discuss the changes with your loved ones (1209600 seconds = 14 days)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_completed))
            )
  )
)
