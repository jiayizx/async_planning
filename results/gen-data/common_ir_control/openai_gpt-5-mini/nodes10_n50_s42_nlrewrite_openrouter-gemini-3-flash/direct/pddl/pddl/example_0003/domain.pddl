(define (domain roast_beef)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each step (one per action)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
    (s8_complete)
    (s9_complete)
    (s10_complete)
  )

  ; Step 1: Set the dining table (300s)
  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (s5_complete)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_complete))
    )
  )

  ; Step 2: Let the cooked roast rest on a cutting board (900s)
  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (s9_complete)) (at start (s10_complete)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_complete))
    )
  )

  ; Step 3: Preheat the oven to 325 degrees (600s)
  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_complete))
    )
  )

  ; Step 4: Drive to the local butcher shop (1200s)
  (:durative-action do_step4
    :duration (= ?duration 1200)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_complete))
    )
  )

  ; Step 5: Polish the silver cutlery (1800s)
  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_complete))
    )
  )

  ; Step 6: Roast the beef in the oven (7200s)
  (:durative-action do_step6
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step6)) (at start (s3_complete)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_complete))
    )
  )

  ; Step 7: Carve the beef into thin slices (300s)
  (:durative-action do_step7
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (s8_complete)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_complete))
    )
  )

  ; Step 8: Transfer the rested meat to a serving platter (120s)
  (:durative-action do_step8
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (s2_complete)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_complete))
    )
  )

  ; Step 9: Season the beef with salt and herbs (600s)
  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (s4_complete)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_complete))
    )
  )

  ; Step 10: Remove the roast from the oven (60s)
  (:durative-action do_step10
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (s6_complete)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_complete))
    )
  )
)
