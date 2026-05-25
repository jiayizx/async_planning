(define (domain apple_pie_turnovers)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s_1_done)
    (s_2_done)
    (s_3_done)
    (s_4_done)
    (s_5_done)
    (s_6_done)
    (s_7_done)
    (s_8_done)
    (s_9_done)
    (s_10_done)
    (s_11_done)
    (s_12_done)
    (s_13_done)
    (s_14_done)
    (s_15_done)
    (s_16_done)
    (s_17_done)
    (s_18_done)
    (s_19_done)
    (s_20_done)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s_5_done)) (at start (s_9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_1_done)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s_18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_2_done)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s_16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_3_done)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_4_done)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (s_8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_5_done)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_6_done)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_7_done)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s_20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_8_done)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s_5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_9_done)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_10_done)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (s_3_done)) (at start (s_4_done)) (at start (s_6_done)) (at start (s_15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_11_done)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (s_11_done)) (at start (s_17_done)) (at start (s_19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_12_done)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s_12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_13_done)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s_13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_14_done)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s_10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_15_done)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s_4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_16_done)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_17_done)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_18_done)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s_1_done)) (at start (s_7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_19_done)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s_17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s_20_done)))
  )
)