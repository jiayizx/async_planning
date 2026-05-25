(define (domain knit_blanket)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1_done)  ; unique semantic predicates for each step
    (p2_done)
    (p3_done)
    (p4_done)
    (p5_done)
    (p6_done)
    (p7_done)
    (p8_done)
    (p9_done)
    (p10_done)
  )

  ;; Step 1: Choose a pattern and calculate yarn requirements (2700s)
  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (p1_done)) ) )

  ;; Step 2: Purchase circular knitting needles (1800s)
  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (p2_done)) ) )

  ;; Step 3: Knit the main body of the blanket (144000s)
  ;; predecessor: step4
  (:durative-action do_step3
    :duration (= ?duration 144000)
    :condition (and (at start (step_pending step3)) (at start (p4_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (p3_done)) ) )

  ;; Step 4: Cast on the initial row of stitches (1200s)
  ;; predecessor: step6
  (:durative-action do_step4
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (p6_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (p4_done)) ) )

  ;; Step 5: Weave in the loose ends with a tapestry needle (3600s)
  ;; predecessor: step7
  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (p7_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (p5_done)) ) )

  ;; Step 6: Buy the required wool yarn from the craft store (3600s)
  ;; predecessor: step1
  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (p1_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (p6_done)) ) )

  ;; Step 7: Wind the hanks of yarn into center-pull balls (7200s)
  ;; predecessors: step2 and step9
  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step7)) (at start (p2_done)) (at start (p9_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (p7_done)) ) )

  ;; Step 8: Research blocking techniques for different fibers (900s)
  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (p8_done)) ) )

  ;; Step 9: Wash the finished sample swatch to check for shrinkage (86400s)
  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (p9_done)) ) )

  ;; Step 10: Steam block the finished blanket to set the shape (21600s)
  ;; predecessor: step8
  (:durative-action do_step10
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step10)) (at start (p8_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (p10_done)) ) )
)
