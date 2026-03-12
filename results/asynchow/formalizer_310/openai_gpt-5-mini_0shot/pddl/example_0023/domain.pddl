(define (domain take-anger-out-on-date)
  (:requirements :durative-actions)
  (:predicates
    (find_single_pending)
    (find_single_done)
    (find_attractive_pending)
    (find_attractive_done)
    (ask_out_pending)
    (ask_out_done)
    (plan_day_pending)
    (plan_day_done)
    (drive_pending)
    (drive_done)
    (get_angry_pending)
    (get_angry_done)
  )

  (:durative-action find_single
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (find_single_pending))
    :effect (and (at start (not (find_single_pending))) (at end (find_single_done)))
  )

  (:durative-action find_attractive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (find_attractive_pending))
    :effect (and (at start (not (find_attractive_pending))) (at end (find_attractive_done)))
  )

  (:durative-action ask_out
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (ask_out_pending)) (at start (find_single_done)) (at start (find_attractive_done)))
    :effect (and (at start (not (ask_out_pending))) (at end (ask_out_done)))
  )

  (:durative-action plan_day
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (plan_day_pending)) (at start (ask_out_done)))
    :effect (and (at start (not (plan_day_pending))) (at end (plan_day_done)))
  )

  (:durative-action drive
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_pending)) (at start (plan_day_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action get_angry
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_angry_pending)) (at start (drive_done)))
    :effect (and (at start (not (get_angry_pending))) (at end (get_angry_done)))
  )
)
