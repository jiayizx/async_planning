(define (domain event_promoter)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
    (s8_complete)
    (s9_complete)
    (s10_complete)
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
  )

  ;; Step 1: requires Step 7, Step 12, Step 4
  (:durative-action do-step1
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete)))
  )

  ;; Step 2: requires Step 14
  (:durative-action do-step2
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete)))
  )

  ;; Step 3: requires Step 14, Step 1, Step 7, Step 12, Step 4
  (:durative-action do-step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s14_complete)) (at start (s1_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete)))
  )

  ;; Step 4: no prerequisites (1 month -> assume 30 days = 2592000 seconds)
  (:durative-action do-step4
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete)))
  )

  ;; Step 5: requires Step 11, Step 1, Step 6, Step 7, Step 12, Step 4
  (:durative-action do-step5
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s11_complete)) (at start (s1_complete)) (at start (s6_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete)))
  )

  ;; Step 6: requires Step 7, Step 12, Step 4
  (:durative-action do-step6
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete)))
  )

  ;; Step 7: requires Step 12, Step 4 (1 week = 604800 seconds)
  (:durative-action do-step7
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete)))
  )

  ;; Step 8: requires Step 2, Step 6, Step 14, Step 7, Step 12, Step 4
  (:durative-action do-step8
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (s2_complete)) (at start (s6_complete)) (at start (s14_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete)))
  )

  ;; Step 9: requires Step 13, Step 11, Step 1, Step 6, Step 7, Step 12, Step 4 (2 weeks = 1209600 seconds)
  (:durative-action do-step9
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (s13_complete)) (at start (s11_complete)) (at start (s1_complete)) (at start (s6_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete)))
  )

  ;; Step 10: requires Step 5, Step 11, Step 1, Step 6, Step 7, Step 12, Step 4
  (:durative-action do-step10
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s5_complete)) (at start (s11_complete)) (at start (s1_complete)) (at start (s6_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete)))
  )

  ;; Step 11: requires Step 1, Step 6, Step 7, Step 12, Step 4
  (:durative-action do-step11
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)) (at start (s6_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete)))
  )

  ;; Step 12: requires Step 4 (2 weeks = 1209600 seconds)
  (:durative-action do-step12
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete)))
  )

  ;; Step 13: requires Step 11, Step 1, Step 6, Step 7, Step 12, Step 4
  (:durative-action do-step13
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (s11_complete)) (at start (s1_complete)) (at start (s6_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete)))
  )

  ;; Step 14: no prerequisites
  (:durative-action do-step14
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete)))
  )

  ;; Step 15: requires Step 9, Step 13, Step 11, Step 1, Step 6, Step 7, Step 12, Step 4
  (:durative-action do-step15
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s9_complete)) (at start (s13_complete)) (at start (s11_complete)) (at start (s1_complete)) (at start (s6_complete)) (at start (s7_complete)) (at start (s12_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete)))
  )
)
