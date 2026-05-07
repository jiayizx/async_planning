(define (domain anxiety_food_ordering)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (phone_ordered)
    (drive_thru_done)
    (friend_ordered)
    (online_ordered)
    (food_received)
  )

  (:durative-action order_phone
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_ordered)))
  )

  (:durative-action drive_thru
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drive_thru_done)))
  )

  (:durative-action ask_friend
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friend_ordered)))
  )

  (:durative-action order_online
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (online_ordered)))
  )

  (:durative-action receive_food
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and 
      (at start (step_pending ?s))
      (at start (phone_ordered))
      (at start (drive_thru_done))
      (at start (friend_ordered))
      (at start (online_ordered))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_received)))
  )
)