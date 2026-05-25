(define (domain liver_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (semantic_step2_done)
    (semantic_step4_done)
    (semantic_step1_done)
    (semantic_step5_done)
    (semantic_step3_done)
  )
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (semantic_step2_done))
    )
  )
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (semantic_step4_done))
    )
  )
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending step1))
      (at start (semantic_step2_done))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (semantic_step1_done))
    )
  )
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step5))
      (at start (semantic_step1_done))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (semantic_step5_done))
    )
  )
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending step3))
      (at start (semantic_step4_done))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (semantic_step3_done))
    )
  )
)