(define (domain attend_gym)
  (:requirements :durative-actions)
  (:predicates
    (search_internet_pending)
    (search_internet_done)
    (compare_prices_pending)
    (compare_prices_done)
    (find_hours_pending)
    (find_hours_done)
    (drive_gym_pending)
    (drive_gym_done)
    (get_membership_pending)
    (get_membership_done)
  )

  (:durative-action search_internet
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (search_internet_pending))
    :effect (and (at start (not (search_internet_pending))) (at end (search_internet_done)))
  )

  (:durative-action compare_prices
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (compare_prices_pending)) (at start (search_internet_done)))
    :effect (and (at start (not (compare_prices_pending))) (at end (compare_prices_done)))
  )

  (:durative-action find_hours
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (find_hours_pending)) (at start (search_internet_done)))
    :effect (and (at start (not (find_hours_pending))) (at end (find_hours_done)))
  )

  (:durative-action drive_gym
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_gym_pending)) (at start (compare_prices_done)) (at start (find_hours_done)))
    :effect (and (at start (not (drive_gym_pending))) (at end (drive_gym_done)))
  )

  (:durative-action get_membership
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (get_membership_pending)) (at start (drive_gym_done)))
    :effect (and (at start (not (get_membership_pending))) (at end (get_membership_done)))
  )
)
