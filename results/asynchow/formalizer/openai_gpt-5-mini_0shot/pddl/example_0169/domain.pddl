(define (domain overcome_reading_fear)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
  )

  ; Step 1: Practice your reading passage as much as possible (2 weeks = 1209600 seconds)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_completed))
    )
  )

  ; Step 2: Work on feeling and looking more calm (1 week = 604800 seconds)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_completed))
    )
  )

  ; Step 3: Move past mistakes (172800 seconds)
  ; Ordering constraint: Step1 must precede Step3, so require s1_completed at start
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step3)) (at start (s1_completed)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_completed))
    )
  )
)
