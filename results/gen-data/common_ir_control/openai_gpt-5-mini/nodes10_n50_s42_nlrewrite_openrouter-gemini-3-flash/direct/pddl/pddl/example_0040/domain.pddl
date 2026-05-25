(define (domain kwanzaa_explain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1_done)
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

  ;; Step 1: Research the history of the Nguzo Saba principles (7200s)
  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (p9_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (p1_done))
    )
  )

  ;; Step 2: Draft a script for the presentation (10800s)
  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (p3_done)) (at start (p10_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (p2_done))
    )
  )

  ;; Step 3: Collect traditional symbols like the Kinara and Mazao (14400s)
  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step3)) (at start (p6_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (p3_done))
    )
  )

  ;; Step 4: Create visual slides to accompany the talk (18000s)
  (:durative-action do_step4
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step4)) (at start (p2_done)) (at start (p6_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (p4_done))
    )
  )

  ;; Step 5: Rent a community hall for the event (86400s)
  (:durative-action do_step5
    :duration (= ?duration 86400)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (p5_done))
    )
  )

  ;; Step 6: Read a comprehensive book on African American heritage (172800s)
  (:durative-action do_step6
    :duration (= ?duration 172800)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (p6_done))
    )
  )

  ;; Step 7: Design a handout summarizing the holiday's origins (5400s)
  (:durative-action do_step7
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step7)) (at start (p1_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (p7_done))
    )
  )

  ;; Step 8: Deliver the final presentation to the audience (3600s)
  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (p5_done)) (at start (p7_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (p8_done))
    )
  )

  ;; Step 9: Outline the key themes of the presentation (1800s)
  (:durative-action do_step9
    :duration (= ?duration 1800)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (p9_done))
    )
  )

  ;; Step 10: Consult with a cultural historian for accuracy (86400s)
  (:durative-action do_step10
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step10)) (at start (p9_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (p10_done))
    )
  )
)
