(define (domain roast-veg)
  (:requirements :typing :durative-actions)
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
    ;; type-mapping predicates to bind actions to concrete step objects
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (is_step1 ?s))
      (at start (step_pending ?s))
      (at start (s7_done))
      (at start (s2_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (is_step2 ?s))
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_done))
    )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (is_step3 ?s))
      (at start (step_pending ?s))
      (at start (s6_done))
      (at start (s10_done))
      (at start (s5_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_done))
    )
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (is_step4 ?s))
      (at start (step_pending ?s))
      (at start (s3_done))
      (at start (s6_done))
      (at start (s5_done))
      (at start (s10_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_done))
    )
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step5 ?s))
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s5_done))
    )
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (is_step6 ?s))
      (at start (step_pending ?s))
      (at start (s5_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s6_done))
    )
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (is_step7 ?s))
      (at start (step_pending ?s))
      (at start (s2_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s7_done))
    )
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (is_step8 ?s))
      (at start (step_pending ?s))
      (at start (s1_done))
      (at start (s7_done))
      (at start (s2_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s8_done))
    )
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (is_step9 ?s))
      (at start (step_pending ?s))
      (at start (s8_done))
      (at start (s1_done))
      (at start (s7_done))
      (at start (s2_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s9_done))
    )
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step10 ?s))
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s10_done))
    )
  )
)
