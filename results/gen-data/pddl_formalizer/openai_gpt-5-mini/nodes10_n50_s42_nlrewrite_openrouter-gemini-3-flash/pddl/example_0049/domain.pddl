(define (domain herbarium)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
    (done_s7)
    (done_s8)
    (done_s9)
    (done_s10)
  )

  ;; Step 1: requires Step 3
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (done_s3)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s1))
    )
  )

  ;; Step 2: no predecessors
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s2))
    )
  )

  ;; Step 3: no predecessors
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s3))
    )
  )

  ;; Step 4: requires Step 2
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (done_s2)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s4))
    )
  )

  ;; Step 5: requires Step 6 (only direct predecessor per original constraints)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done_s6)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s5))
    )
  )

  ;; Step 6: requires Step 3 and Step 9 (direct predecessors per original constraints)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (done_s3)) (at start (done_s9)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s6))
    )
  )

  ;; Step 7: requires Step 1 and Step 8
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (done_s1)) (at start (done_s8)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s7))
    )
  )

  ;; Step 8: requires Step 2
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (done_s2)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s8))
    )
  )

  ;; Step 9: requires Step 1
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s9))
    )
  )

  ;; Step 10: requires Step 4
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (done_s4)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s10))
    )
  )
)
