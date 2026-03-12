(define (domain introduce-friends)
  (:requirements :durative-actions)
  (:predicates
    (send_invite_pending)
    (send_invite_done)
    (research_restaurant_pending)
    (research_restaurant_done)
    (create_groupchat_pending)
    (create_groupchat_done)
    (book_table_pending)
    (book_table_done)
    (host_dinner_pending)
    (host_dinner_done)
  )

  (:durative-action send_invite
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (send_invite_pending)) (at start (create_groupchat_done)))
    :effect (and (at start (not (send_invite_pending))) (at end (send_invite_done)))
  )

  (:durative-action research_restaurant
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (research_restaurant_pending))
    :effect (and (at start (not (research_restaurant_pending))) (at end (research_restaurant_done)))
  )

  (:durative-action create_groupchat
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (create_groupchat_pending))
    :effect (and (at start (not (create_groupchat_pending))) (at end (create_groupchat_done)))
  )

  (:durative-action book_table
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (book_table_pending)) (at start (research_restaurant_done)))
    :effect (and (at start (not (book_table_pending))) (at end (book_table_done)))
  )

  (:durative-action host_dinner
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (host_dinner_pending)) (at start (send_invite_done)) (at start (book_table_done)))
    :effect (and (at start (not (host_dinner_pending))) (at end (host_dinner_done)))
  )
)
