(define (domain sew-button)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (removed_old_button)
    (found_thread)
    (threaded_needle)
    (tied_knot)
    (marked_fabric)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (removed_old_button))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (found_thread))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (found_thread)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (threaded_needle))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (threaded_needle)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (tied_knot))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (removed_old_button)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (marked_fabric))
    )
  )
)
