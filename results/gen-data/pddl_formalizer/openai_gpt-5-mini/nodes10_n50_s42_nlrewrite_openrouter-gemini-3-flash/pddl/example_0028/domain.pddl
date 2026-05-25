(define (domain fingerboard)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
    (done_s7)
    (done_s8)
    (done_s9)
    (done_s10)
  )

  ;; Step 1: Apply custom grip tape to the deck (600s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (done_s9)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_s1))
    )
  )

  ;; Step 2: Unbox the professional fingerboard components (120s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_s2))
    )
  )

  ;; Step 3: Sand down the edges of the wooden deck (300s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (done_s2)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_s3))
    )
  )

  ;; Step 4: Organize the tiny mounting screws and nuts (180s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_s4))
    )
  )

  ;; Step 5: Attach the metal trucks to the deck (480s)
  ;; ordering constraints: Step 2 -> Step 5, Step 3 -> Step 5
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step5)) (at start (done_s2)) (at start (done_s3)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_s5))
    )
  )

  ;; Step 6: Install the high-speed bearing wheels (240s)
  ;; ordering constraints: Step 5 -> Step 6
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step6)) (at start (done_s5)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_s6))
    )
  )

  ;; Step 7: Tune the bushings for better steering (360s)
  ;; ordering constraints: Step 5 -> Step 7
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step7)) (at start (done_s5)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_s7))
    )
  )

  ;; Step 8: Set up a miniature skate park ramp (900s)
  ;; ordering constraints: Step 4 -> Step 8
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)) (at start (done_s4)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_s8))
    )
  )

  ;; Step 9: Clean the workspace of any debris (120s)
  ;; ordering constraints: Step 4 -> Step 9
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (done_s4)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_s9))
    )
  )

  ;; Step 10: Record a slow-motion kickflip video (1200s)
  ;; ordering constraints: Step 2 -> Step 10
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step10)) (at start (done_s2)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_s10))
    )
  )
)
