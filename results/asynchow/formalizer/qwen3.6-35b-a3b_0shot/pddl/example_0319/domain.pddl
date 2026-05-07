(define (domain sky_lanterns)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step-pending ?s - step)
    (step-done ?s - step)
    (step1_sem) (step2_sem) (step3_sem) (step4_sem) (step5_sem)
    (step6_sem) (step7_sem) (step8_sem) (step9_sem) (step10_sem)
    (step11_sem) (step12_sem) (step13_sem) (step14_sem) (step15_sem)
    (step16_sem) (step17_sem))

  (:durative-action do_step1
    :duration (= ?duration 5)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step10_sem)) (at start (step9_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step1_sem))))

  (:durative-action do_step2
    :duration (= ?duration 10)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step1_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step2_sem))))

  (:durative-action do_step3
    :duration (= ?duration 5)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step2_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step3_sem))))

  (:durative-action do_step4
    :duration (= ?duration 5)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step3_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step4_sem))))

  (:durative-action do_step5
    :duration (= ?duration 5)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step10_sem)) (at start (step9_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step5_sem))))

  (:durative-action do_step6
    :duration (= ?duration 10)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step4_sem)) (at start (step5_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step6_sem))))

  (:durative-action do_step7
    :duration (= ?duration 10)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step13_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step7_sem))))

  (:durative-action do_step8
    :duration (= ?duration 10)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step7_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step8_sem))))

  (:durative-action do_step9
    :duration (= ?duration 10)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step8_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step9_sem))))

  (:durative-action do_step10
    :duration (= ?duration 5)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step8_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step10_sem))))

  (:durative-action do_step11
    :duration (= ?duration 15)
    :parameter (?s - step)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step11_sem))))

  (:durative-action do_step12
    :duration (= ?duration 10)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step11_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step12_sem))))

  (:durative-action do_step13
    :duration (= ?duration 5)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step12_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step13_sem))))

  (:durative-action do_step14
    :duration (= ?duration 2)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step6_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step14_sem))))

  (:durative-action do_step15
    :duration (= ?duration 2)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step14_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step15_sem))))

  (:durative-action do_step16
    :duration (= ?duration 10)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step15_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step16_sem))))

  (:durative-action do_step17
    :duration (= ?duration 2)
    :parameter (?s - step)
    :condition (and (at start (step-pending ?s)) (at start (step16_sem)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (step17_sem))))
)