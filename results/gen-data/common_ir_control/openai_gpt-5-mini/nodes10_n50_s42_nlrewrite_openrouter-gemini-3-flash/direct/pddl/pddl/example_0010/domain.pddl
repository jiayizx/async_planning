(define (domain wimbledon_tickets)
  (:requirements :typing :durative-actions)
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

  ; Step 1: Book a hotel room in Wimbledon Village (2700s)
  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (p8_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (p1_done))
    )
  )

  ; Step 2: Download the official Wimbledon mobile app (300s)
  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (p10_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (p2_done))
    )
  )

  ; Step 3: Create a "MyWimbledon" online account (600s)
  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (p3_done))
    )
  )

  ; Step 4: Enter the public ballot for tickets (1200s)
  (:durative-action do_step4
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (p9_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (p4_done))
    )
  )

  ; Step 5: Join the LTA Advantage membership for additional access (900s)
  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (p9_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (p5_done))
    )
  )

  ; Step 6: Print the physical tickets and confirmation (600s)
  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (p8_done)) (at start (p10_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (p6_done))
    )
  )

  ; Step 7: Wait for the ballot results announcement (10368000s = 4 months assumed)
  (:durative-action do_step7
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending step7)) (at start (p10_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (p7_done))
    )
  )

  ; Step 8: Pay for the allocated tickets online (900s)
  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)) (at start (p4_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (p8_done))
    )
  )

  ; Step 9: Verify your identity and address details (172800s)
  (:durative-action do_step9
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step9)) (at start (p7_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (p9_done))
    )
  )

  ; Step 10: Opt-in to the marketing and ticketing communications (120s)
  (:durative-action do_step10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (p3_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (p10_done))
    )
  )
)
