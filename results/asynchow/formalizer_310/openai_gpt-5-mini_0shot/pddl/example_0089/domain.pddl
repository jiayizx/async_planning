(define (domain friends_domain)
  (:requirements :durative-actions)
  (:predicates
    (find_gatherings_pending)
    (find_gatherings_done)
    (go_gatherings_pending)
    (go_gatherings_done)
    (introduce_pending)
    (introduce_done)
    (converse_pending)
    (converse_done)
    (find_common_pending)
    (find_common_done)
    (invite_coffee_pending)
    (invite_coffee_done)
    (meet_coffee_pending)
    (meet_coffee_done)
  )

  (:durative-action step1_find_gatherings
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (find_gatherings_pending))
    :effect (and (at start (not (find_gatherings_pending))) (at end (find_gatherings_done)))
  )

  (:durative-action step2_go_gatherings
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (go_gatherings_pending)) (at start (find_gatherings_done)))
    :effect (and (at start (not (go_gatherings_pending))) (at end (go_gatherings_done)))
  )

  (:durative-action step3_introduce
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (introduce_pending)) (at start (go_gatherings_done)))
    :effect (and (at start (not (introduce_pending))) (at end (introduce_done)))
  )

  (:durative-action step4_converse
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (converse_pending)) (at start (go_gatherings_done)))
    :effect (and (at start (not (converse_pending))) (at end (converse_done)))
  )

  (:durative-action step5_find_common
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (find_common_pending)) (at start (introduce_done)) (at start (converse_done)))
    :effect (and (at start (not (find_common_pending))) (at end (find_common_done)))
  )

  (:durative-action step6_invite_coffee
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (invite_coffee_pending)) (at start (find_common_done)))
    :effect (and (at start (not (invite_coffee_pending))) (at end (invite_coffee_done)))
  )

  (:durative-action step7_meet_coffee
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (meet_coffee_pending)) (at start (invite_coffee_done)))
    :effect (and (at start (not (meet_coffee_pending))) (at end (meet_coffee_done)))
  )
)
