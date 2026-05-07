(define (domain brownies-microwave)
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
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
  )

  ;; Step 1: Whisk the dry ingredients together in a bowl (120s)
  ;; Immediate predecessor: Step 6 (6 -> 1)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (s6_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ;; Step 2: Grease the microwave-safe glass dish (30s)
  ;; Immediate predecessor: Step 8 (8 -> 2)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step2)) (at start (s8_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ;; Step 3: Melt the butter in a separate container (45s)
  ;; Immediate predecessor: Step 7 (7 -> 3)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step3)) (at start (s7_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ;; Step 4: Pour the finished batter into the prepared dish (60s)
  ;; Immediate predecessor: Step 10 (10 -> 4)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ;; Step 5: Microwave on high power (300s)
  ;; Immediate predecessor: Step 1 (1 -> 5)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  ;; Step 6: Stir the melted butter into the sugar and cocoa powder (60s)
  ;; Immediate predecessor: Step 3 (3 -> 6)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  ;; Step 7: Gather the measuring cups and spoons (60s)
  ;; Immediate predecessor: Step 10 (10 -> 7)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step7)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )

  ;; Step 8: Locate the cooking spray in the pantry (20s)
  ;; No predecessors
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 20)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done))
    )
  )

  ;; Step 9: Take the eggs and butter out of the refrigerator (30s)
  ;; No predecessors
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done))
    )
  )

  ;; Step 10: Crack the eggs into a small prep bowl (60s)
  ;; Immediate predecessor: Step 9 (9 -> 10)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (s9_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done))
    )
  )
)
