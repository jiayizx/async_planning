(define (domain have-fun-pool)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (camera_bought)
    (toys_bought)
    (diving_done)
  )

  ;; Step 1: Enjoy diving for objects (30 minutes = 1800 seconds)
  ;; Requires Step 3 (toys_bought) to have finished before starting.
  (:durative-action do_step1_diving
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (toys_bought)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (diving_done))
            )
  )

  ;; Step 2: Buy a cheap waterproof camera and film a little movie (3600 seconds)
  (:durative-action do_step2_camera
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (camera_bought))
            )
  )

  ;; Step 3: Buy some pool toys (20 minutes = 1200 seconds)
  (:durative-action do_step3_toys
    :duration (= ?duration 1200)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (toys_bought))
            )
  )
)
