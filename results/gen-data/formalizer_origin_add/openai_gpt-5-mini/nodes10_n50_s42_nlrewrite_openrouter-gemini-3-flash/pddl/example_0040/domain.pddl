(define (domain kwanzaa_prep)
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
  )

  ; Step1: 7200s, requires Step9
  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step1) (s9_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ; Step2: 10800s, requires Step1, Step3, Step6, Step9, Step10
  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step2) (s1_done) (s3_done) (s6_done) (s9_done) (s10_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ; Step3: 14400s, requires Step6
  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step3) (s6_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ; Step4: 18000s, requires Step1, Step2, Step3, Step6, Step9, Step10
  (:durative-action do_step4
    :duration (= ?duration 18000)
    :condition (at start (and (step_pending step4) (s1_done) (s2_done) (s3_done) (s6_done) (s9_done) (s10_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ; Step5: 86400s, no prerequisites
  (:durative-action do_step5
    :duration (= ?duration 86400)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  ; Step6: 172800s, no prerequisites
  (:durative-action do_step6
    :duration (= ?duration 172800)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  ; Step7: 5400s, requires Step1 and Step9
  (:durative-action do_step7
    :duration (= ?duration 5400)
    :condition (at start (and (step_pending step7) (s1_done) (s9_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )

  ; Step8: 3600s, requires 1,2,3,4,5,6,7,9,10
  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step8) (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s9_done) (s10_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done))
    )
  )

  ; Step9: 1800s, no prerequisites
  (:durative-action do_step9
    :duration (= ?duration 1800)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done))
    )
  )

  ; Step10: 86400s, requires Step9
  (:durative-action do_step10
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending step10) (s9_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done))
    )
  )
)
