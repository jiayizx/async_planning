(define (domain little-league)
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
  )

  ;; Step 1: sign up for little league (3600s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done))
            )
  )

  ;; Step 2: buy baseball gear (86400s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done))
            )
  )

  ;; Step 3: get driven to practice (600s)
  ;; Predecessors: step2 and step5
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s2_done)) (at start (s5_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))
            )
  )

  ;; Step 4: wake up in time for the first game (300s)
  ;; Predecessor: step3
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (s3_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_done))
            )
  )

  ;; Step 5: pay the fees for little league (600s)
  ;; Predecessor: step1
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s1_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_done))
            )
  )
)
