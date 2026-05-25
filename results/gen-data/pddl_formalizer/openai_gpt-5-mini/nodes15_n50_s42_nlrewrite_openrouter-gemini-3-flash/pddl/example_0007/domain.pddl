(define (domain quick_breakfast)
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
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
  )

  ;; Step 1: Locate the box of frozen waffles in the freezer (30s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done)) ) )

  ;; Step 2: Pour a glass of cold orange juice (15s)
  ;; direct predecessor: Step 11 -> Step 2
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step2)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done)) ) )

  ;; Step 3: Set the juice on the breakfast table (5s)
  ;; direct predecessor: Step 2 -> Step 3
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step3)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done)) ) )

  ;; Step 4: Retrieve a clean plate from the cupboard (10s)
  ;; direct predecessor: Step 3 -> Step 4
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step4)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done)) ) )

  ;; Step 5: Place two waffles into the toaster slots (10s)
  ;; direct predecessor: Step 1 -> Step 5
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step5)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done)) ) )

  ;; Step 6: Sit down at the table to eat (480s)
  ;; direct predecessors: Step 9 -> 6, Step 14 -> 6
  ;; Note: other orderings to 6 are transitive in original dependency analysis but not direct
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step6)) (at start (s9_done)) (at start (s14_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done)) ) )

  ;; Step 7: Take the butter out of the refrigerator (20s)
  ;; direct predecessor: Step 13 -> 7
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step7)) (at start (s13_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done)) ) )

  ;; Step 8: Place the toasted waffles onto the plate (5s)
  ;; direct predecessor: Step 4 -> 8
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step8)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done)) ) )

  ;; Step 9: Clear the prep area of any crumbs (60s)
  ;; direct predecessor: Step 10 -> 9
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done)) ) )

  ;; Step 10: Spread syrup over the warm waffles (30s)
  ;; direct predecessor: Step 4 -> 10
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step10)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done)) ) )

  ;; Step 11: Grab a napkin from the dispenser (2s)
  ;; direct predecessor: Step 7 -> 11
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step11)) (at start (s7_done)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (s11_done)) ) )

  ;; Step 12: Bring the finished plate to the dining area (10s)
  ;; direct predecessor: Step 8 -> 12
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step12)) (at start (s8_done)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (s12_done)) ) )

  ;; Step 13: Wait for the toaster to pop up (120s)
  ;; direct predecessor: Step 5 -> 13
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (s13_done)) ) )

  ;; Step 14: Put the syrup bottle back in the pantry (20s)
  ;; direct predecessor: Step 10 -> 14
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step14)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (s14_done)) ) )

  ;; Step 15: Place the dirty dishes in the kitchen sink (45s)
  ;; direct predecessor: Step 6 -> 15
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step15)) (at start (s6_done)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (s15_done)) ) )
)
