(define (domain deal_with_anxiety)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (phone_ordered)
               (drive_thru_done)
               (friend_ordered)
               (app_ordered)
               (food_received))
  (:durative-action order_phone
    :duration 5
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (phone_ordered))))
  (:durative-action go_drive_thru
    :duration 10
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (drive_thru_done))))
  (:durative-action ask_friend
    :duration 3
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (friend_ordered))))
  (:durative-action use_app
    :duration 5
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (app_ordered))))
  (:durative-action receive_food
    :duration 2
    :condition (and (at start (step_pending ?s))
                    (at start (phone_ordered))
                    (at start (drive_thru_done))
                    (at start (friend_ordered))
                    (at start (app_ordered)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (food_received))))
)