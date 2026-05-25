(define (domain treat_bruises)
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

  ;; Step 1: Apply a cold compress (1200 seconds) -- requires Step 2
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ;; Step 2: Clean the skin gently (300 seconds) -- no prerequisites
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ;; Step 3: Apply a warm compress after 48 hours (900 seconds) -- requires Step 5
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ;; Step 4: Gently massage arnica gel (120 seconds) -- requires Step 2 and Step 1
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (s2_done)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ;; Step 5: Wait for the initial inflammation to subside (172800 seconds) -- no prerequisites
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )
)
