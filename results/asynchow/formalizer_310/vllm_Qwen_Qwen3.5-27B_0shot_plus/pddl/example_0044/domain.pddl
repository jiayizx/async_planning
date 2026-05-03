(define (domain school_musical)
  (:requirements :durative-actions)
  
  (:predicates
    (sign_up_pending)
    (sign_up_done)
    (audition_pending)
    (audition_done)
    (get_picked_pending)
    (get_picked_done)
    (rehearse_part_pending)
    (rehearse_part_done)
    (show_up_pending)
    (show_up_done)
    (rehearse_play_pending)
    (rehearse_play_done)
  )

  (:durative-action sign_up
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (sign_up_pending)))
    :effect (and (at start (not (sign_up_pending))) (at end (sign_up_done)))
  )

  (:durative-action audition
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (audition_pending)) (at start (sign_up_done)))
    :effect (and (at start (not (audition_pending))) (at end (audition_done)))
  )

  (:durative-action get_picked
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (get_picked_pending)) (at start (audition_done)))
    :effect (and (at start (not (get_picked_pending))) (at end (get_picked_done)))
  )

  (:durative-action rehearse_part
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (rehearse_part_pending)) (at start (get_picked_done)))
    :effect (and (at start (not (rehearse_part_pending))) (at end (rehearse_part_done)))
  )

  (:durative-action rehearse_play
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (rehearse_play_pending)) (at start (get_picked_done)))
    :effect (and (at start (not (rehearse_play_pending))) (at end (rehearse_play_done)))
  )

  (:durative-action show_up
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (show_up_pending)) (at start (rehearse_part_done)) (at start (rehearse_play_done)))
    :effect (and (at start (not (show_up_pending))) (at end (show_up_done)))
  )
)
