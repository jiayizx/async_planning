(define (domain peel-papaya)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
  )

  ;; Step 1: Slice the washed papaya in half. (60 seconds)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_completed))
            )
  )

  ;; Step 2: Remove the seeds. (120 seconds) -- requires Step 1 to have finished
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (s1_completed)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_completed))
            )
  )

  ;; Step 3: Slice each half into wedges. (120 seconds) -- requires Step 1 to have finished
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s1_completed)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_completed))
            )
  )

  ;; Step 4: Peel the skin off the wedges. (180 seconds) -- requires Step 3 to have finished
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (s3_completed)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_completed))
            )
  )
)
