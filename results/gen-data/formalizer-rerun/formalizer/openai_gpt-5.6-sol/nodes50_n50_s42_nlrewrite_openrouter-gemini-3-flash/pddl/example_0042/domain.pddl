(define (domain young-rat-care)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step)
    (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step)
    (is_step40 ?s - step) (is_step41 ?s - step) (is_step42 ?s - step)
    (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
    (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step)
    (is_step49 ?s - step) (is_step50 ?s - step)
    (s1_complete) (s2_complete) (care_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
    (s31_complete) (s32_complete) (s33_complete) (s34_complete) (s35_complete)
    (s36_complete) (s37_complete) (s38_complete) (s39_complete) (s40_complete)
    (s41_complete) (s42_complete) (s43_complete) (s44_complete) (s45_complete)
    (s46_complete) (s47_complete) (s48_complete) (s49_complete) (s50_complete)
  )

  (:durative-action do_step1
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete))))
  (:durative-action do_step2
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (s22_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete))))
  (:durative-action do_step3
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (s10_complete)) (at start (s12_complete)) (at start (s19_complete)) (at start (s28_complete)) (at start (s47_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (care_complete))))
  (:durative-action do_step4
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete))))
  (:durative-action do_step5
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (s4_complete)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete))))
  (:durative-action do_step6
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (s28_complete)) (at start (s40_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete))))
  (:durative-action do_step7
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete))))
  (:durative-action do_step8
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (s28_complete)) (at start (s40_complete)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete))))
  (:durative-action do_step9
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (s7_complete)) (at start (s33_complete)) (at start (s36_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete))))
  (:durative-action do_step10
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete))))
  (:durative-action do_step11
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete))))
  (:durative-action do_step12
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete))))
  (:durative-action do_step13
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (s18_complete)) (at start (s25_complete)) (at start (s44_complete)) (at start (s46_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete))))
  (:durative-action do_step14
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (s23_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete))))
  (:durative-action do_step15
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (s1_complete)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete))))
  (:durative-action do_step16
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (s28_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete))))
  (:durative-action do_step17
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete))))
  (:durative-action do_step18
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (s14_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete))))
  (:durative-action do_step19
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete))))
  (:durative-action do_step20
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (s30_complete)) (at start (s40_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete))))
  (:durative-action do_step21
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete))))
  (:durative-action do_step22
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete))))
  (:durative-action do_step23
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (s5_complete)) (at start (s12_complete)) (at start (s16_complete)) (at start (s36_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete))))
  (:durative-action do_step24
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete))))
  (:durative-action do_step25
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete))))
  (:durative-action do_step26
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete))))
  (:durative-action do_step27
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete))))
  (:durative-action do_step28
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (s4_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete))))
  (:durative-action do_step29
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete))))
  (:durative-action do_step30
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete))))
  (:durative-action do_step31
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (s39_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_complete))))
  (:durative-action do_step32
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (s29_complete)) (at start (s49_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_complete))))
  (:durative-action do_step33
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_complete))))
  (:durative-action do_step34
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_complete))))
  (:durative-action do_step35
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (s32_complete)) (at start (s34_complete)) (at start (s48_complete)) (at start (s49_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_complete))))
  (:durative-action do_step36
    :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (s34_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_complete))))
  (:durative-action do_step37
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (s1_complete)) (at start (s29_complete)) (at start (s45_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_complete))))
  (:durative-action do_step38
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_complete))))
  (:durative-action do_step39
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_complete))))
  (:durative-action do_step40
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (s22_complete)) (at start (s30_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_complete))))
  (:durative-action do_step41
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step41 ?s)) (at start (s13_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_complete))))
  (:durative-action do_step42
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step42 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_complete))))
  (:durative-action do_step43
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step43 ?s)) (at start (s5_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_complete))))
  (:durative-action do_step44
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step44 ?s)) (at start (s5_complete)) (at start (s47_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_complete))))
  (:durative-action do_step45
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step45 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_complete))))
  (:durative-action do_step46
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step46 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_complete))))
  (:durative-action do_step47
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step47 ?s)) (at start (s2_complete)) (at start (s37_complete)) (at start (s43_complete)) (at start (s50_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_complete))))
  (:durative-action do_step48
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step48 ?s)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_complete))))
  (:durative-action do_step49
    :parameters (?s - step) :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step49 ?s)) (at start (s12_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_complete))))
  (:durative-action do_step50
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step50 ?s)) (at start (s2_complete)) (at start (s7_complete)) (at start (s38_complete)) (at start (s42_complete)) (at start (s45_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_complete))))
)