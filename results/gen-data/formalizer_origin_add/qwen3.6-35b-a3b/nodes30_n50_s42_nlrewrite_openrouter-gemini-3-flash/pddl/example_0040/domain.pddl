(define (domain wake_up_school)
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
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step7_sem)) (at start (step30_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_sem))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (step21_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_sem))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step9_sem)) (at start (step19_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_sem))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_sem))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_sem))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_sem))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_sem))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_sem))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_sem))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (step19_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_sem))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (step15_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_sem))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (step24_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_sem))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (step5_sem)) (at start (step9_sem)) (at start (step21_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_sem))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (step4_sem)) (at start (step10_sem)) (at start (step25_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_sem))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step9_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_sem))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_sem))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)) (at start (step29_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_sem))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (step17_sem)) (at start (step29_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_sem))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_sem))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_sem))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_sem))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step2_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_sem))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step18_sem)) (at start (step22_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_sem))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (step28_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_sem))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_sem))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (step22_sem)) (at start (step25_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_sem))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (step8_sem)) (at start (step11_sem)) (at start (step22_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_sem))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (step19_sem)) (at start (step20_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_sem))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step1_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_sem))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_sem))))
)