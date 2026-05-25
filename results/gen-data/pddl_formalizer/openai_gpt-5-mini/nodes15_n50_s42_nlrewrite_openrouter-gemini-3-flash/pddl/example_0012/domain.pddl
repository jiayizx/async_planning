(define (domain learn-tennis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete)
    (step2_complete)
    (step3_complete)
    (step4_complete)
    (step5_complete)
    (step6_complete)
    (step7_complete)
    (step8_complete)
    (step9_complete)
    (step10_complete)
    (step11_complete)
    (step12_complete)
    (step13_complete)
    (step14_complete)
    (step15_complete)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_complete)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (step11_complete)) (at start (step13_complete)) (at start (step14_complete)) (at start (step15_complete)) (at start (step6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_complete)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (step8_complete)) (at start (step9_complete)) (at start (step13_complete)) (at start (step7_complete)) (at start (step10_complete)) (at start (step1_complete)) (at start (step4_complete)) (at start (step14_complete)) (at start (step15_complete)) (at start (step6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_complete)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_complete)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (step2_complete)) (at start (step11_complete)) (at start (step13_complete)) (at start (step14_complete)) (at start (step15_complete)) (at start (step6_complete)) (at start (step1_complete)) (at start (step7_complete)) (at start (step10_complete)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_complete)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_complete)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step10_complete)) (at start (step1_complete)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_complete)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (step9_complete)) (at start (step7_complete)) (at start (step10_complete)) (at start (step1_complete)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_complete)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (step7_complete)) (at start (step10_complete)) (at start (step1_complete)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_complete)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (step1_complete)) (at start (step4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_complete)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step13_complete)) (at start (step14_complete)) (at start (step15_complete)) (at start (step6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_complete)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (step3_complete)) (at start (step1_complete)) (at start (step4_complete)) (at start (step6_complete)) (at start (step7_complete)) (at start (step8_complete)) (at start (step9_complete)) (at start (step10_complete)) (at start (step13_complete)) (at start (step14_complete)) (at start (step15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_complete)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (step14_complete)) (at start (step15_complete)) (at start (step6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_complete)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step15_complete)) (at start (step6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_complete)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (step6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_complete)))
  )
)
