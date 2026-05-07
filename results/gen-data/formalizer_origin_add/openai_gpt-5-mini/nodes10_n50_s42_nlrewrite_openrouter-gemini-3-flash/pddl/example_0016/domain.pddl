(define (domain guppy_health)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
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

  ;; Step 1: Treat the tap water with a dechlorinating solution (900s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (s3_complete)) (at start (s9_complete)) (at start (s5_complete)) (at start (s6_complete)) (at start (s2_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  ;; Step 2: Acclimate the guppies to the new water temperature (1800s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step2)) (at start (s3_complete)) (at start (s9_complete)) (at start (s5_complete)) (at start (s6_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  ;; Step 3: Purchase aquarium & filtration (7200s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  ;; Step 4: Observe the fish for signs of stress or illness (259200s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step4)) (at start (s10_complete)) (at start (s3_complete)) (at start (s9_complete)) (at start (s5_complete)) (at start (s6_complete)) (at start (s2_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  ;; Step 5: Cycle the tank to establish beneficial bacteria (2 weeks = 1209600s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step5)) (at start (s3_complete)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  ;; Step 6: Test the water parameters for ammonia and nitrites (600s)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (s3_complete)) (at start (s9_complete)) (at start (s5_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  ;; Step 7: Introduce the guppies into the cycled aquarium (300s)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (s3_complete)) (at start (s9_complete)) (at start (s5_complete)) (at start (s6_complete)) (at start (s2_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  ;; Step 8: Perform the first partial water change (2700s)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step8)) (at start (s3_complete)) (at start (s9_complete)) (at start (s5_complete)) (at start (s6_complete)) (at start (s2_complete)) (at start (s7_complete)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  ;; Step 9: Set up the tank and install the heater (3600s)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  ;; Step 10: Research specific guppy breed requirements (14400s)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)))
  )
)
