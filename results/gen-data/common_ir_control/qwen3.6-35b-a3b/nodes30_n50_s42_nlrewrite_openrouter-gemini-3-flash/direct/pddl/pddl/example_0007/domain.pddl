(define (domain dress_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_sem) (step2_sem) (step3_sem) (step4_sem) (step5_sem)
    (step6_sem) (step7_sem) (step8_sem) (step9_sem) (step10_sem)
    (step11_sem) (step12_sem) (step13_sem) (step14_sem) (step15_sem)
    (step16_sem) (step17_sem) (step18_sem) (step19_sem) (step20_sem)
    (step21_sem) (step22_sem) (step23_sem) (step24_sem) (step25_sem)
    (step26_sem) (step27_sem) (step28_sem) (step29_sem) (step30_sem))

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_sem))))

  (:durative-action do_step2
    :duration (= ?duration 10800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step27_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_sem))))

  (:durative-action do_step3
    :duration (= ?duration 14400)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_sem))))

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_sem))))

  (:durative-action do_step5
    :duration (= ?duration 2700)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_sem))))

  (:durative-action do_step6
    :duration (= ?duration 1800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step16_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_sem))))

  (:durative-action do_step7
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step14_sem)) (at start (step15_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_sem))))

  (:durative-action do_step8
    :duration (= ?duration 1200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step26_sem)) (at start (step27_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_sem))))

  (:durative-action do_step9
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step17_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_sem))))

  (:durative-action do_step10
    :duration (= ?duration 2400)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_sem))))

  (:durative-action do_step11
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)) (at start (step28_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_sem))))

  (:durative-action do_step12
    :duration (= ?duration 7200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_sem)) (at start (step24_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_sem))))

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_sem))))

  (:durative-action do_step14
    :duration (= ?duration 3000)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step17_sem)) (at start (step23_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_sem))))

  (:durative-action do_step15
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_sem))))

  (:durative-action do_step16
    :duration (= ?duration 10800)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_sem))))

  (:durative-action do_step17
    :duration (= ?duration 14400)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_sem)) (at start (step27_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_sem))))

  (:durative-action do_step18
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step15_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_sem))))

  (:durative-action do_step19
    :duration (= ?duration 1800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step29_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_sem))))

  (:durative-action do_step20
    :duration (= ?duration 5400)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_sem)) (at start (step10_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_sem))))

  (:durative-action do_step21
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)) (at start (step28_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_sem))))

  (:durative-action do_step22
    :duration (= ?duration 7200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_sem))))

  (:durative-action do_step23
    :duration (= ?duration 1800)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_sem))))

  (:durative-action do_step24
    :duration (= ?duration 5400)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step30_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_sem))))

  (:durative-action do_step25
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)) (at start (step5_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_sem))))

  (:durative-action do_step26
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step18_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_sem))))

  (:durative-action do_step27
    :duration (= ?duration 1200)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_sem))))

  (:durative-action do_step28
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_sem))))

  (:durative-action do_step29
    :duration (= ?duration 7200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step4_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_sem))))

  (:durative-action do_step30
    :duration (= ?duration 7200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_sem)) (at start (step13_sem)) (at start (step20_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_sem))))
)