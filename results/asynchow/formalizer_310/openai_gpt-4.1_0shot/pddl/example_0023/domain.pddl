(define (domain anger-date)
  (:requirements :durative-actions)
  (:predicates
    (find_someone_single_pending)
    (find_someone_single_done)
    (find_someone_attractive_pending)
    (find_someone_attractive_done)
    (ask_person_out_pending)
    (ask_person_out_done)
    (plan_day_time_pending)
    (plan_day_time_done)
    (drive_to_location_pending)
    (drive_to_location_done)
    (get_angry_pending)
    (get_angry_done)
  )

  (:durative-action find_someone_single
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (find_someone_single_pending))
    :effect (and (at start (not (find_someone_single_pending))) (at end (find_someone_single_done)))
  )

  (:durative-action find_someone_attractive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (find_someone_attractive_pending))
    :effect (and (at start (not (find_someone_attractive_pending))) (at end (find_someone_attractive_done)))
  )

  (:durative-action ask_person_out
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (ask_person_out_pending)) (at start (find_someone_single_done)) (at start (find_someone_attractive_done)))
    :effect (and (at start (not (ask_person_out_pending))) (at end (ask_person_out_done)))
  )

  (:durative-action plan_day_time
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (plan_day_time_pending)) (at start (ask_person_out_done)))
    :effect (and (at start (not (plan_day_time_pending))) (at end (plan_day_time_done)))
  )

  (:durative-action drive_to_location
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_to_location_pending)) (at start (plan_day_time_done)))
    :effect (and (at start (not (drive_to_location_pending))) (at end (drive_to_location_done)))
  )

  (:durative-action get_angry
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_angry_pending)) (at start (drive_to_location_done)))
    :effect (and (at start (not (get_angry_pending))) (at end (get_angry_done)))
  )
)
