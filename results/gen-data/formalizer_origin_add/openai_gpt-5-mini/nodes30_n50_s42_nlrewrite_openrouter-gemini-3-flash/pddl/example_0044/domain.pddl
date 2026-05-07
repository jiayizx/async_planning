(define (domain melt-almond-bark)
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
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (s21_done)
    (s22_done)
    (s23_done)
    (s24_done)
    (s25_done)
    (s26_done)
    (s27_done)
    (s28_done)
    (s29_done)
    (s30_done)
    ;; identity markers to bind each durative-action to exactly one step object
    (is_s1 ?s - step)
    (is_s2 ?s - step)
    (is_s3 ?s - step)
    (is_s4 ?s - step)
    (is_s5 ?s - step)
    (is_s6 ?s - step)
    (is_s7 ?s - step)
    (is_s8 ?s - step)
    (is_s9 ?s - step)
    (is_s10 ?s - step)
    (is_s11 ?s - step)
    (is_s12 ?s - step)
    (is_s13 ?s - step)
    (is_s14 ?s - step)
    (is_s15 ?s - step)
    (is_s16 ?s - step)
    (is_s17 ?s - step)
    (is_s18 ?s - step)
    (is_s19 ?s - step)
    (is_s20 ?s - step)
    (is_s21 ?s - step)
    (is_s22 ?s - step)
    (is_s23 ?s - step)
    (is_s24 ?s - step)
    (is_s25 ?s - step)
    (is_s26 ?s - step)
    (is_s27 ?s - step)
    (is_s28 ?s - step)
    (is_s29 ?s - step)
    (is_s30 ?s - step)
  )

  ;; Each durative-action is parameterized by ?s and constrained with an identity predicate
  ;; so do_stepN can only be applied to the matching step object (is_sN true).

  (:durative-action do_step1
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_s1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_s2 ?s)) (at start (s9_done)) (at start (s30_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_s3 ?s))
      (at start (s4_done)) (at start (s26_done)) (at start (s28_done)) (at start (s5_done)) (at start (s17_done))
      (at start (s20_done)) (at start (s2_done)) (at start (s9_done)) (at start (s11_done)) (at start (s22_done))
      (at start (s27_done)) (at start (s6_done)) (at start (s24_done)) (at start (s18_done)) (at start (s29_done))
      (at start (s21_done)) (at start (s30_done)) (at start (s16_done)) (at start (s8_done)) (at start (s1_done))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_s4 ?s)) (at start (s18_done)) (at start (s29_done)) (at start (s21_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_s5 ?s))
      (at start (s2_done)) (at start (s24_done)) (at start (s27_done)) (at start (s4_done)) (at start (s9_done))
      (at start (s30_done)) (at start (s13_done)) (at start (s16_done)) (at start (s8_done)) (at start (s18_done))
      (at start (s29_done)) (at start (s21_done))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_s6 ?s)) (at start (s4_done)) (at start (s18_done)) (at start (s29_done)) (at start (s21_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_s7 ?s)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_s8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_s9 ?s)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_s10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_s11 ?s)) (at start (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_s12 ?s)) (at start (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 40)
    :condition (and (at start (step_pending ?s)) (at start (is_s13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_s14 ?s)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_s15 ?s)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_s16 ?s)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_s17 ?s))
      (at start (s5_done)) (at start (s6_done)) (at start (s2_done)) (at start (s4_done)) (at start (s9_done))
      (at start (s24_done)) (at start (s27_done)) (at start (s29_done)) (at start (s21_done)) (at start (s30_done))
      (at start (s16_done)) (at start (s8_done)) (at start (s18_done)) (at start (s13_done)) (at start (s1_done))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_s18 ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_s19 ?s)) (at start (s12_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_s20 ?s))
      (at start (s5_done)) (at start (s2_done)) (at start (s4_done)) (at start (s9_done)) (at start (s24_done))
      (at start (s27_done)) (at start (s29_done)) (at start (s21_done)) (at start (s30_done)) (at start (s16_done))
      (at start (s8_done)) (at start (s18_done)) (at start (s13_done)) (at start (s1_done))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_s21 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_s22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_s23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_s24 ?s)) (at start (s16_done)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_s25 ?s))
      (at start (s3_done)) (at start (s10_done)) (at start (s30_done)) (at start (s4_done)) (at start (s26_done))
      (at start (s28_done)) (at start (s5_done)) (at start (s17_done)) (at start (s20_done)) (at start (s2_done))
      (at start (s9_done)) (at start (s11_done)) (at start (s22_done)) (at start (s27_done)) (at start (s6_done))
      (at start (s24_done)) (at start (s18_done)) (at start (s29_done)) (at start (s21_done)) (at start (s16_done))
      (at start (s8_done)) (at start (s13_done)) (at start (s1_done))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_s26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_s27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_s28 ?s)) (at start (s4_done)) (at start (s11_done)) (at start (s18_done)) (at start (s29_done)) (at start (s21_done)) (at start (s22_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_s29 ?s)) (at start (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_s30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done)))
  )
)
