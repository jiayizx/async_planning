(define (domain safe-health-planning)
  (:requirements :durative-actions :typing)
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
    (p1_done) (p2_done) (p3_done) (p4_done) (p5_done)
    (p6_done) (p7_done) (p8_done) (p9_done) (p10_done)
    (p11_done) (p12_done) (p13_done) (p14_done) (p15_done)
    (p16_done) (p17_done) (p18_done) (p19_done) (p20_done)
    (p21_done) (p22_done) (p23_done) (p24_done) (p25_done)
    (p26_done) (p27_done) (p28_done) (p29_done) (p30_done)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (p11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (p27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2_done))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3_done))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (p30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4_done))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (p16_done)) (at start (p20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5_done))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (p7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6_done))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7_done))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (p1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8_done))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (p5_done)) (at start (p13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9_done))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (p15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10_done))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (p22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11_done))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (p17_done)) (at start (p27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12_done))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13_done))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (p1_done)) (at start (p12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14_done))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (p28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15_done))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (p25_done)) (at start (p27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16_done))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17_done))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (p6_done)) (at start (p17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18_done))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (p18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19_done))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (p26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20_done))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (p22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21_done))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (p3_done)) (at start (p17_done)) (at start (p19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22_done))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23_done))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (p3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24_done))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25_done))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (p23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26_done))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27_done))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (p12_done)) (at start (p13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28_done))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (p2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29_done))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (p5_done)) (at start (p10_done)) (at start (p29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30_done))))
)