(define (domain growing_old)
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
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (and (step_pending ?s) (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (and (step_pending ?s) (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (s12_done) (s36_done) (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending ?s) (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending ?s) (s9_done) (s12_done) (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending ?s) (s32_done) (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (s15_done) (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s) (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (and (step_pending ?s) (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending ?s) (s12_done) (s27_done) (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (and (step_pending ?s) (s7_done) (s29_done) (s33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending ?s) (s13_done) (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (s11_done) (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (s14_done) (s34_done) (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (at start (and (step_pending ?s) (s15_done) (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending ?s) (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (s36_done) (s38_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s) (s16_done) (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (s7_done) (s9_done) (s29_done) (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending ?s) (s2_done) (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s) (s2_done) (s10_done) (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done)))))