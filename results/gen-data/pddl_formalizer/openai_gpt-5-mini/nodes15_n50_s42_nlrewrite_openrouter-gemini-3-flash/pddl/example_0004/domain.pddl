(define (domain fighter_pilot_process)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    ;; pending predicates (one per step)
    (s1_pending)
    (s2_pending)
    (s3_pending)
    (s4_pending)
    (s5_pending)
    (s6_pending)
    (s7_pending)
    (s8_pending)
    (s9_pending)
    (s10_pending)
    (s11_pending)
    (s12_pending)
    (s13_pending)
    (s14_pending)
    (s15_pending)

    ;; generic per-step done predicates (one per step)
    (step_done_s1)
    (step_done_s2)
    (step_done_s3)
    (step_done_s4)
    (step_done_s5)
    (step_done_s6)
    (step_done_s7)
    (step_done_s8)
    (step_done_s9)
    (step_done_s10)
    (step_done_s11)
    (step_done_s12)
    (step_done_s13)
    (step_done_s14)
    (step_done_s15)

    ;; unique semantic completion predicates required
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
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
  )

  (:durative-action do_step1
    :duration (= ?duration 1209600)
    :condition (and (at start (s1_pending)) (at start (s15_complete)))
    :effect (and
      (at start (not (s1_pending)))
      (at end (step_done_s1))
      (at end (s1_complete))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 10368000)
    :condition (and (at start (s2_pending)) (at start (s4_complete)) (at start (s7_complete)) (at start (s6_complete)) (at start (s14_complete)) (at start (s15_complete)) (at start (s13_complete)))
    :effect (and
      (at start (not (s2_pending)))
      (at end (step_done_s2))
      (at end (s2_complete))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 1814400)
    :condition (and (at start (s3_pending)) (at start (s13_complete)) (at start (s6_complete)))
    :effect (and
      (at start (not (s3_pending)))
      (at end (step_done_s3))
      (at end (s3_complete))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 31536000)
    :condition (and (at start (s4_pending)) (at start (s7_complete)) (at start (s6_complete)) (at start (s14_complete)) (at start (s15_complete)) (at start (s13_complete)))
    :effect (and
      (at start (not (s4_pending)))
      (at end (step_done_s4))
      (at end (s4_complete))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 172800)
    :condition (and (at start (s5_pending)))
    :effect (and
      (at start (not (s5_pending)))
      (at end (step_done_s5))
      (at end (s5_complete))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 126144000)
    :condition (and (at start (s6_pending)))
    :effect (and
      (at start (not (s6_pending)))
      (at end (step_done_s6))
      (at end (s6_complete))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 5443200)
    :condition (and (at start (s7_pending)) (at start (s6_complete)) (at start (s14_complete)) (at start (s15_complete)) (at start (s13_complete)))
    :effect (and
      (at start (not (s7_pending)))
      (at end (step_done_s7))
      (at end (s7_complete))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 180000)
    :condition (and (at start (s8_pending)) (at start (s1_complete)) (at start (s15_complete)))
    :effect (and
      (at start (not (s8_pending)))
      (at end (step_done_s8))
      (at end (s8_complete))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (and (at start (s9_pending)) (at start (s2_complete)) (at start (s3_complete)) (at start (s4_complete)) (at start (s14_complete)) (at start (s7_complete)) (at start (s6_complete)) (at start (s15_complete)) (at start (s13_complete)))
    :effect (and
      (at start (not (s9_pending)))
      (at end (step_done_s9))
      (at end (s9_complete))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 15552000)
    :condition (and (at start (s10_pending)) (at start (s5_complete)) (at start (s14_complete)) (at start (s6_complete)) (at start (s13_complete)) (at start (s15_complete)))
    :effect (and
      (at start (not (s10_pending)))
      (at end (step_done_s10))
      (at end (s10_complete))
    )
  )

  (:durative-action do_step11
    :duration (= ?duration 7200)
    :condition (and (at start (s11_pending)) (at start (s7_complete)) (at start (s14_complete)) (at start (s6_complete)) (at start (s15_complete)) (at start (s13_complete)))
    :effect (and
      (at start (not (s11_pending)))
      (at end (step_done_s11))
      (at end (s11_complete))
    )
  )

  (:durative-action do_step12
    :duration (= ?duration 7776000)
    :condition (and (at start (s12_pending)) (at start (s1_complete)) (at start (s8_complete)) (at start (s15_complete)))
    :effect (and
      (at start (not (s12_pending)))
      (at end (step_done_s12))
      (at end (s12_complete))
    )
  )

  (:durative-action do_step13
    :duration (= ?duration 14400)
    :condition (and (at start (s13_pending)) (at start (s6_complete)))
    :effect (and
      (at start (not (s13_pending)))
      (at end (step_done_s13))
      (at end (s13_complete))
    )
  )

  (:durative-action do_step14
    :duration (= ?duration 2592000)
    :condition (and (at start (s14_pending)) (at start (s6_complete)) (at start (s13_complete)) (at start (s15_complete)))
    :effect (and
      (at start (not (s14_pending)))
      (at end (step_done_s14))
      (at end (s14_complete))
    )
  )

  (:durative-action do_step15
    :duration (= ?duration 3600)
    :condition (and (at start (s15_pending)) (at start (s6_complete)))
    :effect (and
      (at start (not (s15_pending)))
      (at end (step_done_s15))
      (at end (s15_complete))
    )
  )
)
