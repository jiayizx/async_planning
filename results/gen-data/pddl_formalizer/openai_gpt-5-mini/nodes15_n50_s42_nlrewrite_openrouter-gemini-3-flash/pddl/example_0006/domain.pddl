(define (domain carpet_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s2_done)) (at start (s12_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s8_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s12_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s9_done)) (at start (s3_done)) (at start (s5_done)) (at start (s2_done)) (at start (s12_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s5_done)) (at start (s2_done)) (at start (s12_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s3_done)) (at start (s5_done)) (at start (s2_done)) (at start (s12_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s13_done)) (at start (s9_done)) (at start (s3_done)) (at start (s5_done)) (at start (s2_done)) (at start (s12_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )
)
