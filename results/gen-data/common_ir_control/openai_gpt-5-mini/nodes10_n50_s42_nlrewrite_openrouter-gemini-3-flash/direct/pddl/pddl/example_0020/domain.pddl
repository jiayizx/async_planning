(define (domain play_nds)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
  )

  ;; Step 1: Insert the game cartridge (5s)
  (:durative-action do_step1
    :duration (= ?duration 5)
    :condition (and (at start (pending step1)) (at start (s5_done)))
    :effect (and
      (at start (not (pending step1)))
      (at end (done step1))
      (at end (s1_done))
    )
  )

  ;; Step 2: Calibrate the touch screen (120s)
  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (and (at start (pending step2)) (at start (s8_done)) (at start (s9_done)))
    :effect (and
      (at start (not (pending step2)))
      (at end (done step2))
      (at end (s2_done))
    )
  )

  ;; Step 3: Locate the handheld console in the drawer (60s)
  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (at start (pending step3))
    :effect (and
      (at start (not (pending step3)))
      (at end (done step3))
      (at end (s3_done))
    )
  )

  ;; Step 4: Toggle the power switch on (2s)
  (:durative-action do_step4
    :duration (= ?duration 2)
    :condition (and (at start (pending step4)) (at start (s6_done)))
    :effect (and
      (at start (not (pending step4)))
      (at end (done step4))
      (at end (s4_done))
    )
  )

  ;; Step 5: Charge the battery to at least 10% (900s)
  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (pending step5)) (at start (s4_done)))
    :effect (and
      (at start (not (pending step5)))
      (at end (done step5))
      (at end (s5_done))
    )
  )

  ;; Step 6: Select the user profile (10s)
  (:durative-action do_step6
    :duration (= ?duration 10)
    :condition (and (at start (pending step6)) (at start (s2_done)))
    :effect (and
      (at start (not (pending step6)))
      (at end (done step6))
      (at end (s6_done))
    )
  )

  ;; Step 7: Press 'Start' on title screen (3s)
  (:durative-action do_step7
    :duration (= ?duration 3)
    :condition (and (at start (pending step7)) (at start (s1_done)))
    :effect (and
      (at start (not (pending step7)))
      (at end (done step7))
      (at end (s7_done))
    )
  )

  ;; Step 8: Clean dust off exterior casing (45s)
  (:durative-action do_step8
    :duration (= ?duration 45)
    :condition (at start (pending step8))
    :effect (and
      (at start (not (pending step8)))
      (at end (done step8))
      (at end (s8_done))
    )
  )

  ;; Step 9: Adjust volume and brightness (30s)
  (:durative-action do_step9
    :duration (= ?duration 30)
    :condition (at start (pending step9))
    :effect (and
      (at start (not (pending step9)))
      (at end (done step9))
      (at end (s9_done))
    )
  )

  ;; Step 10: Open the clamshell lid (2s)
  (:durative-action do_step10
    :duration (= ?duration 2)
    :condition (and (at start (pending step10)) (at start (s3_done)))
    :effect (and
      (at start (not (pending step10)))
      (at end (done step10))
      (at end (s10_done))
    )
  )
)
