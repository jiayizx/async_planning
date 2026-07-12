(define (domain introduce-friends)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (calendar_invite_sent)
    (restaurant_researched)
    (group_chat_created)
    (reservation_made)
    (dinner_hosted)
  )

  (:durative-action send_group_calendar_invite
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step1))
      (at start (group_chat_created))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (calendar_invite_sent))
    )
  )

  (:durative-action research_local_restaurant
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (restaurant_researched))
    )
  )

  (:durative-action create_group_chat
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (group_chat_created))
    )
  )

  (:durative-action make_restaurant_reservation
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step4))
      (at start (restaurant_researched))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (reservation_made))
    )
  )

  (:durative-action host_dinner_and_introductions
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step5))
      (at start (reservation_made))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (dinner_hosted))
    )
  )
)