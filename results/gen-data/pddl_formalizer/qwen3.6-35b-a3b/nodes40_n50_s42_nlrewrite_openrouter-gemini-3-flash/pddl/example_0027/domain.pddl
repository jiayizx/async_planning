(define (domain roof_shingles)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done))
  (:durative-action do_step1
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  (:durative-action do_step2
    :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  (:durative-action do_step3
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  (:durative-action do_step4
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s7_done)) (at start (s20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  (:durative-action do_step5
    :duration 2700
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  (:durative-action do_step6
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  (:durative-action do_step7
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  (:durative-action do_step8
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s31_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  (:durative-action do_step9
    :duration 1500
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  (:durative-action do_step10
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  (:durative-action do_step11
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s7_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  (:durative-action do_step12
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  (:durative-action do_step13
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  (:durative-action do_step14
    :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  (:durative-action do_step15
    :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  (:durative-action do_step16
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  (:durative-action do_step17
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  (:durative-action do_step18
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  (:durative-action do_step19
    :duration 2400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  (:durative-action do_step20
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s9_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
  (:durative-action do_step21
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
  (:durative-action do_step22
    :duration 2100
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
  (:durative-action do_step23
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
  (:durative-action do_step24
    :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
  (:durative-action do_step25
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
  (:durative-action do_step26
    :duration 1500
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
  (:durative-action do_step27
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
  (:durative-action do_step28
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
  (:durative-action do_step29
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)) (at start (s16_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
  (:durative-action do_step30
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
  (:durative-action do_step31
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
  (:durative-action do_step32
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
  (:durative-action do_step33
    :duration 2400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
  (:durative-action do_step34
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
  (:durative-action do_step35
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
  (:durative-action do_step36
    :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
  (:durative-action do_step37
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
  (:durative-action do_step38
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
  (:durative-action do_step39
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s18_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
  (:durative-action do_step40
    :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s5_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done)))))