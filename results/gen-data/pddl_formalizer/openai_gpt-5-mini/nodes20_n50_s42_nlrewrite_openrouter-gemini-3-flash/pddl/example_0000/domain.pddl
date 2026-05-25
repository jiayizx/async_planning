(define (domain turn_on_computer)
  (:requirements :typing :durative-actions)
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
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
    (s16_complete)
    (s17_complete)
    (s18_complete)
    (s19_complete)
    (s20_complete)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_complete))
    )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (and (step_pending ?s) (s1_complete) (s3_complete) (s4_complete) (s5_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_complete))
    )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s1_complete) (s4_complete) (s5_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_complete))
    )
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_complete))
    )
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (s1_complete) (s13_complete) (s17_complete) (s19_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s5_complete))
    )
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (and (step_pending ?s) (s1_complete) (s3_complete) (s4_complete) (s5_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s6_complete))
    )
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (and (step_pending ?s) (s1_complete) (s4_complete) (s5_complete) (s8_complete) (s9_complete) (s13_complete) (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s7_complete))
    )
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s1_complete) (s4_complete) (s5_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s8_complete))
    )
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (and (step_pending ?s) (s1_complete) (s4_complete) (s5_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s9_complete))
    )
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s) (s1_complete) (s3_complete) (s4_complete) (s5_complete) (s6_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s10_complete))
    )
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s4_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s11_complete))
    )
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (at start (and (step_pending ?s) (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s12_complete))
    )
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (and (step_pending ?s) (s1_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s13_complete))
    )
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s1_complete) (s3_complete) (s4_complete) (s5_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s14_complete))
    )
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s) (s1_complete) (s3_complete) (s4_complete) (s5_complete) (s6_complete) (s8_complete) (s10_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s15_complete))
    )
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (and (step_pending ?s) (s1_complete) (s5_complete) (s13_complete) (s17_complete) (s19_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s16_complete))
    )
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s1_complete) (s13_complete) (s19_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s17_complete))
    )
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (and (step_pending ?s) (s1_complete) (s4_complete) (s5_complete) (s8_complete) (s13_complete) (s16_complete) (s17_complete) (s19_complete) (s20_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s18_complete))
    )
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s1_complete) (s13_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s19_complete))
    )
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s4_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s20_complete))
    )
  )
)
