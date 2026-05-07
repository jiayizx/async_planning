(define (domain investing_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (investing_started))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 14400
    :condition (at start (and (step_pending ?s) (s4_done) (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s1_done)))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 7200
    :condition (at start (and (step_pending ?s) (s9_done) (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s2_done)))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 1800
    :condition (at start (and (step_pending ?s) (s1_done) (s9_done) (s10_done) (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s3_done)))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 432000
    :condition (at start (and (step_pending ?s) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s4_done)))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 10800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s5_done)))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 3600
    :condition (at start (and (step_pending ?s) (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s6_done)))))
  (:durative-action do_step7
    :parameters (?s - step)
    :duration 3600
    :condition (at start (and (step_pending ?s) (s9_done) (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s7_done)))))
  (:durative-action do_step8
    :parameters (?s - step)
    :duration 2700
    :condition (at start (and (step_pending ?s) (s1_done) (s6_done) (s11_done) (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s8_done)))))
  (:durative-action do_step9
    :parameters (?s - step)
    :duration 21600
    :condition (at start (and (step_pending ?s) (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s9_done)))))
  (:durative-action do_step10
    :parameters (?s - step)
    :duration 10800
    :condition (at start (and (step_pending ?s) (s22_done) (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s10_done)))))
  (:durative-action do_step11
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s11_done)))))
  (:durative-action do_step12
    :parameters (?s - step)
    :duration 7200
    :condition (at start (and (step_pending ?s) (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s12_done)))))
  (:durative-action do_step13
    :parameters (?s - step)
    :duration 1200
    :condition (at start (and (step_pending ?s) (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s13_done)))))
  (:durative-action do_step14
    :parameters (?s - step)
    :duration 600
    :condition (at start (and (step_pending ?s) (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s14_done)))))
  (:durative-action do_step15
    :parameters (?s - step)
    :duration 300
    :condition (at start (and (step_pending ?s) (s21_done) (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s15_done)))))
  (:durative-action do_step16
    :parameters (?s - step)
    :duration 86400
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s16_done)))))
  (:durative-action do_step17
    :parameters (?s - step)
    :duration 259200
    :condition (at start (and (step_pending ?s) (s1_done) (s5_done) (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s17_done)))))
  (:durative-action do_step18
    :parameters (?s - step)
    :duration 7200
    :condition (at start (and (step_pending ?s) (s2_done) (s20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s18_done)))))
  (:durative-action do_step19
    :parameters (?s - step)
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s19_done)))))
  (:durative-action do_step20
    :parameters (?s - step)
    :duration 86400
    :condition (at start (and (step_pending ?s) (s19_done) (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s20_done)))))
  (:durative-action do_step21
    :parameters (?s - step)
    :duration 172800
    :condition (at start (and (step_pending ?s) (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s21_done)))))
  (:durative-action do_step22
    :parameters (?s - step)
    :duration 14400
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s22_done)))))
  (:durative-action do_step23
    :parameters (?s - step)
    :duration 10800
    :condition (at start (and (step_pending ?s) (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s23_done)))))
  (:durative-action do_step24
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s24_done)))))
  (:durative-action do_step25
    :parameters (?s - step)
    :duration 10368000
    :condition (at start (and (step_pending ?s) (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s25_done)))))
  (:durative-action do_step26
    :parameters (?s - step)
    :duration 14400
    :condition (at start (and (step_pending ?s) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s26_done)))))
  (:durative-action do_step27
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s27_done)))))
  (:durative-action do_step28
    :parameters (?s - step)
    :duration 7200
    :condition (at start (and (step_pending ?s) (s10_done) (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s28_done)))))
  (:durative-action do_step29
    :parameters (?s - step)
    :duration 900
    :condition (at start (and (step_pending ?s) (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s29_done)))))
  (:durative-action do_step30
    :parameters (?s - step)
    :duration 1200
    :condition (at start (and (step_pending ?s) (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s30_done)))))
)