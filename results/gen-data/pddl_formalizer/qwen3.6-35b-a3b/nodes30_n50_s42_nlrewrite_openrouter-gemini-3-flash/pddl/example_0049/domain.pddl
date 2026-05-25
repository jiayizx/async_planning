(define (domain liver_disease_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done)
    (step26_done) (step27_done) (step28_done) (step29_done) (step30_done))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (step5_done) (step12_done) (step16_done) (step30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step1_done)))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step2_done)))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step3_done)))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending ?s) (step8_done) (step13_done) (step21_done) (step30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step4_done)))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending ?s) (step11_done) (step14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step5_done)))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (step14_done) (step20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step6_done)))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (step20_done) (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step7_done)))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s) (step6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step8_done)))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (step26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step9_done)))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (step19_done) (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step10_done)))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (step18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step11_done)))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step12_done)))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (step20_done) (step30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step13_done)))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step14_done)))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s) (step1_done) (step7_done) (step27_done) (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step15_done)))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step16_done)))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (step3_done) (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step17_done)))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step18_done)))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending ?s) (step17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step19_done)))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step20_done)))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (step24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step21_done)))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (and (step_pending ?s) (step9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step22_done)))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (and (step_pending ?s) (step19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step23_done)))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step24_done)))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending ?s) (step16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step25_done)))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step26_done)))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s) (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step27_done)))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step28_done)))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (step20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step29_done)))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending ?s) (step16_done) (step22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (step30_done)))))
)