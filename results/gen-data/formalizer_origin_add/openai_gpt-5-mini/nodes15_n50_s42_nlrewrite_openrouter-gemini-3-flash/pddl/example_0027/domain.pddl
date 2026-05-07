(define (domain identify_british_shorthair)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    ;; pending / done for each step (propositional to avoid referencing problem objects in domain)
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
    (step6_pending)
    (step7_pending)
    (step8_pending)
    (step9_pending)
    (step10_pending)
    (step11_pending)
    (step12_pending)
    (step13_pending)
    (step14_pending)
    (step15_pending)

    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
    (step8_done)
    (step9_done)
    (step10_done)
    (step11_done)
    (step12_done)
    (step13_done)
    (step14_done)
    (step15_done)

    ;; unique semantic predicates for each step (must be produced by the action)
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

  ; Step 1
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step1_pending)) (at start (s5_done)) (at start (s6_done)) (at start (s9_done)) (at start (s12_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (s1_done)))
  )

  ; Step 2
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step2_pending)) (at start (s5_done)) (at start (s6_done)) (at start (s9_done)) (at start (s12_done)) (at start (s8_done)) (at start (s11_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (s2_done)))
  )

  ; Step 3
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step3_pending)) (at start (s5_done)) (at start (s6_done)) (at start (s9_done)) (at start (s12_done)) (at start (s8_done)) (at start (s11_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (s3_done)))
  )

  ; Step 4
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step4_pending)) (at start (s3_done)) (at start (s7_done)) (at start (s11_done)) (at start (s8_done)) (at start (s12_done)) (at start (s9_done)) (at start (s6_done)) (at start (s5_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)) (at end (s4_done)))
  )

  ; Step 5
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step5_pending)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)) (at end (s5_done)))
  )

  ; Step 6
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step6_pending)) (at start (s5_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)) (at end (s6_done)))
  )

  ; Step 7
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step7_pending)) (at start (s3_done)) (at start (s11_done)) (at start (s8_done)) (at start (s12_done)) (at start (s9_done)) (at start (s6_done)) (at start (s5_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)) (at end (s7_done)))
  )

  ; Step 8
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step8_pending)) (at start (s12_done)) (at start (s9_done)) (at start (s6_done)) (at start (s5_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)) (at end (s8_done)))
  )

  ; Step 9
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step9_pending)) (at start (s6_done)) (at start (s5_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)) (at end (s9_done)))
  )

  ; Step 10
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step10_pending)) (at start (s4_done)) (at start (s7_done)) (at start (s3_done)) (at start (s11_done)) (at start (s8_done)) (at start (s12_done)) (at start (s9_done)) (at start (s6_done)) (at start (s5_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)) (at end (s10_done)))
  )

  ; Step 11
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step11_pending)) (at start (s8_done)) (at start (s12_done)) (at start (s9_done)) (at start (s6_done)) (at start (s5_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)) (at end (s11_done)))
  )

  ; Step 12
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step12_pending)) (at start (s9_done)) (at start (s6_done)) (at start (s5_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)) (at end (s12_done)))
  )

  ; Step 13
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step13_pending)) (at start (s1_done)) (at start (s3_done)) (at start (s4_done)) (at start (s5_done)) (at start (s6_done)) (at start (s7_done)) (at start (s8_done)) (at start (s9_done)) (at start (s10_done)) (at start (s11_done)) (at start (s12_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)) (at end (s13_done)))
  )

  ; Step 14
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step14_pending)) (at start (s1_done)) (at start (s2_done)) (at start (s3_done)) (at start (s4_done)) (at start (s7_done)) (at start (s8_done)) (at start (s9_done)) (at start (s10_done)) (at start (s11_done)) (at start (s12_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)) (at end (s14_done)))
  )

  ; Step 15
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step15_pending)) (at start (s1_done)) (at start (s2_done)) (at start (s3_done)) (at start (s4_done)) (at start (s5_done)) (at start (s6_done)) (at start (s7_done)) (at start (s8_done)) (at start (s9_done)) (at start (s10_done)) (at start (s11_done)) (at start (s12_done)) (at start (s13_done)) (at start (s14_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)) (at end (s15_done)))
  )
)
