(define (domain lose_upper_body_fat)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_semantic_done)
    (s2_semantic_done)
    (s3_semantic_done)
    (s4_semantic_done)
  )

  ; Step 1: Do chin-ups (10 minutes = 600 seconds)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (s4_semantic_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_semantic_done))
            )
  )

  ; Step 2: Dumbbell row (15 minutes = 900 seconds)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (s4_semantic_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_semantic_done))
            )
  )

  ; Step 3: Bent-over rear delt raise (10 minutes = 600 seconds)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s4_semantic_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_semantic_done))
            )
  )

  ; Step 4: Choose 2 or 3 exercises (20 minutes = 1200 seconds)
  ; This must precede steps 1,2,3, so they require s4_semantic_done to start
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_semantic_done))
            )
  )
)
