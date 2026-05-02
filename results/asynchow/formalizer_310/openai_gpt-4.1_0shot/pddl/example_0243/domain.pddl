(define (domain sew_button)
  (:requirements :durative-actions)
  (:predicates
    (remove_old_button_pending)
    (remove_old_button_done)
    (find_thread_pending)
    (find_thread_done)
    (thread_needle_pending)
    (thread_needle_done)
    (tie_knot_pending)
    (tie_knot_done)
    (mark_fabric_pending)
    (mark_fabric_done)
  )

  (:durative-action remove_old_button
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (remove_old_button_pending))
    :effect (and
      (at start (not (remove_old_button_pending)))
      (at end (remove_old_button_done))
    )
  )

  (:durative-action find_thread
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (find_thread_pending))
    :effect (and
      (at start (not (find_thread_pending)))
      (at end (find_thread_done))
    )
  )

  (:durative-action thread_needle
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (thread_needle_pending))
      (at start (find_thread_done))
    )
    :effect (and
      (at start (not (thread_needle_pending)))
      (at end (thread_needle_done))
    )
  )

  (:durative-action tie_knot
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (tie_knot_pending))
      (at start (thread_needle_done))
    )
    :effect (and
      (at start (not (tie_knot_pending)))
      (at end (tie_knot_done))
    )
  )

  (:durative-action mark_fabric
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (mark_fabric_pending))
      (at start (remove_old_button_done))
    )
    :effect (and
      (at start (not (mark_fabric_pending)))
      (at end (mark_fabric_done))
    )
  )
)
