(define (domain read-emotion)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates for each step
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
    (s21_complete)
    (s22_complete)
    (s23_complete)
    (s24_complete)
    (s25_complete)
    (s26_complete)
    (s27_complete)
    (s28_complete)
    (s29_complete)
    (s30_complete)
    (s31_complete)
    (s32_complete)
    (s33_complete)
    (s34_complete)
    (s35_complete)
    (s36_complete)
    (s37_complete)
    (s38_complete)
    (s39_complete)
    (s40_complete)

    ; selectors to bind each domain action to its corresponding problem step object
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (is_step21 ?s - step)
    (is_step22 ?s - step)
    (is_step23 ?s - step)
    (is_step24 ?s - step)
    (is_step25 ?s - step)
    (is_step26 ?s - step)
    (is_step27 ?s - step)
    (is_step28 ?s - step)
    (is_step29 ?s - step)
    (is_step30 ?s - step)
    (is_step31 ?s - step)
    (is_step32 ?s - step)
    (is_step33 ?s - step)
    (is_step34 ?s - step)
    (is_step35 ?s - step)
    (is_step36 ?s - step)
    (is_step37 ?s - step)
    (is_step38 ?s - step)
    (is_step39 ?s - step)
    (is_step40 ?s - step)
  )

  ; Each durative-action corresponds to one step object. Actions take a step parameter ?s
  ; and are constrained to apply only to the matching problem object via the is_stepN predicate.

  (:durative-action do-step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (s4_complete)) (at start (s27_complete)) (at start (s11_complete)) (at start (s39_complete)) (at start (s13_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete)))
  )

  (:durative-action do-step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (s23_complete)) (at start (s32_complete)) (at start (s40_complete)) (at start (s28_complete)) (at start (s33_complete)) (at start (s34_complete)) (at start (s35_complete)) (at start (s9_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s39_complete)) (at start (s11_complete)) (at start (s7_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete)))
  )

  (:durative-action do-step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete)))
  )

  (:durative-action do-step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete)))
  )

  (:durative-action do-step5
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (s9_complete)) (at start (s12_complete)) (at start (s25_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete)))
  )

  (:durative-action do-step6
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (s27_complete)) (at start (s11_complete)) (at start (s39_complete)) (at start (s13_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete)))
  )

  (:durative-action do-step7
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete)))
  )

  (:durative-action do-step8
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (s12_complete)) (at start (s31_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete)))
  )

  (:durative-action do-step9
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (s13_complete)) (at start (s30_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete)))
  )

  (:durative-action do-step10
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete)))
  )

  (:durative-action do-step11
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete)))
  )

  (:durative-action do-step12
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete)))
  )

  (:durative-action do-step13
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete)))
  )

  (:durative-action do-step14
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (s18_complete)) (at start (s33_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete)))
  )

  (:durative-action do-step15
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (s25_complete)) (at start (s27_complete)) (at start (s11_complete)) (at start (s39_complete)) (at start (s13_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete)))
  )

  (:durative-action do-step16
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (s8_complete)) (at start (s11_complete)) (at start (s36_complete)) (at start (s7_complete)) (at start (s37_complete)) (at start (s13_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete)))
  )

  (:durative-action do-step17
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (s20_complete)) (at start (s12_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete)))
  )

  (:durative-action do-step18
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete)))
  )

  (:durative-action do-step19
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete)))
  )

  (:durative-action do-step20
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (s12_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete)))
  )

  (:durative-action do-step21
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (s2_complete)) (at start (s25_complete)) (at start (s27_complete)) (at start (s32_complete)) (at start (s23_complete)) (at start (s40_complete)) (at start (s28_complete)) (at start (s33_complete)) (at start (s34_complete)) (at start (s35_complete)) (at start (s9_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s11_complete)) (at start (s39_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete)))
  )

  (:durative-action do-step22
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (s28_complete)) (at start (s32_complete)) (at start (s33_complete)) (at start (s34_complete)) (at start (s35_complete)) (at start (s9_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s39_complete)) (at start (s11_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete)))
  )

  (:durative-action do-step23
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete)))
  )

  (:durative-action do-step24
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete)))
  )

  (:durative-action do-step25
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete)))
  )

  (:durative-action do-step26
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (s7_complete)) (at start (s11_complete)) (at start (s12_complete)) (at start (s20_complete)) (at start (s28_complete)) (at start (s33_complete)) (at start (s34_complete)) (at start (s35_complete)) (at start (s19_complete)) (at start (s31_complete)) (at start (s8_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s39_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete)))
  )

  (:durative-action do-step27
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (s11_complete)) (at start (s39_complete)) (at start (s13_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete)))
  )

  (:durative-action do-step28
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (s33_complete)) (at start (s34_complete)) (at start (s35_complete)) (at start (s9_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s39_complete)) (at start (s11_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete)))
  )

  (:durative-action do-step29
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (s3_complete)) (at start (s30_complete)) (at start (s7_complete)) (at start (s13_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete)))
  )

  (:durative-action do-step30
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete)))
  )

  (:durative-action do-step31
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (s4_complete)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_complete)))
  )

  (:durative-action do-step32
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (s4_complete)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_complete)))
  )

  (:durative-action do-step33
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_complete)))
  )

  (:durative-action do-step34
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (s9_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_complete)))
  )

  (:durative-action do-step35
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (s10_complete)) (at start (s14_complete)) (at start (s16_complete)) (at start (s18_complete)) (at start (s33_complete)) (at start (s8_complete)) (at start (s11_complete)) (at start (s36_complete)) (at start (s37_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_complete)))
  )

  (:durative-action do-step36
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_complete)))
  )

  (:durative-action do-step37
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_complete)))
  )

  (:durative-action do-step38
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (s5_complete)) (at start (s10_complete)) (at start (s28_complete)) (at start (s9_complete)) (at start (s12_complete)) (at start (s25_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s33_complete)) (at start (s34_complete)) (at start (s35_complete)) (at start (s16_complete)) (at start (s11_complete)) (at start (s36_complete)) (at start (s37_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s14_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_complete)))
  )

  (:durative-action do-step39
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (s13_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_complete)))
  )

  (:durative-action do-step40
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (s5_complete)) (at start (s10_complete)) (at start (s25_complete)) (at start (s9_complete)) (at start (s12_complete)) (at start (s13_complete)) (at start (s30_complete)) (at start (s18_complete)) (at start (s8_complete)) (at start (s31_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_complete)))
  )

)
