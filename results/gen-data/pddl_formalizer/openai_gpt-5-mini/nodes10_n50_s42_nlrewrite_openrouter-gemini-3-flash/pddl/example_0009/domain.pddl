(define (domain party_hosting)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending ?s - step)
    (step_done ?s - step)
    (s1_finished)
    (s2_finished)
    (s3_finished)
    (s4_finished)
    (s5_finished)
    (s6_finished)
    (s7_finished)
    (s8_finished)
    (s9_finished)
    (s10_finished)
  )

  ;; Step 1
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (pending step1)))
    :effect (and
      (at start (not (pending step1)))
      (at end (step_done step1))
      (at end (s1_finished))
    )
  )

  ;; Step 2
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (pending step2)))
    :effect (and
      (at start (not (pending step2)))
      (at end (step_done step2))
      (at end (s2_finished))
    )
  )

  ;; Step 3
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (pending step3)))
    :effect (and
      (at start (not (pending step3)))
      (at end (step_done step3))
      (at end (s3_finished))
    )
  )

  ;; Step 4 requires Step1 and Step5
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (pending step4) (s1_finished) (s5_finished)))
    :effect (and
      (at start (not (pending step4)))
      (at end (step_done step4))
      (at end (s4_finished))
    )
  )

  ;; Step 5
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (pending step5)))
    :effect (and
      (at start (not (pending step5)))
      (at end (step_done step5))
      (at end (s5_finished))
    )
  )

  ;; Step 6 requires Step3
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (at start (and (pending step6) (s3_finished)))
    :effect (and
      (at start (not (pending step6)))
      (at end (step_done step6))
      (at end (s6_finished))
    )
  )

  ;; Step 7 requires Step2 and Step8
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (pending step7) (s2_finished) (s8_finished)))
    :effect (and
      (at start (not (pending step7)))
      (at end (step_done step7))
      (at end (s7_finished))
    )
  )

  ;; Step 8
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (pending step8)))
    :effect (and
      (at start (not (pending step8)))
      (at end (step_done step8))
      (at end (s8_finished))
    )
  )

  ;; Step 9 requires Step3 and Step6
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (pending step9) (s3_finished) (s6_finished)))
    :effect (and
      (at start (not (pending step9)))
      (at end (step_done step9))
      (at end (s9_finished))
    )
  )

  ;; Step 10 requires Step1
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (pending step10) (s1_finished)))
    :effect (and
      (at start (not (pending step10)))
      (at end (step_done step10))
      (at end (s10_finished))
    )
  )
)
