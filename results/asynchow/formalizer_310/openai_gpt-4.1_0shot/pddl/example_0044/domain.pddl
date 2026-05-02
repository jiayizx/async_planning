(define (domain school-musical)
  (:requirements :durative-actions)
  (:predicates
    (sign_up_pending)
    (sign_up_done)
    (audition_pending)
    (audition_done)
    (picked_pending)
    (picked_done)
    (rehearse_part_pending)
    (rehearse_part_done)
    (show_up_pending)
    (show_up_done)
    (rehearse_with_others_pending)
    (rehearse_with_others_done)
  )

  (:durative-action do_sign_up
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (sign_up_pending))
    :effect (and (at start (not (sign_up_pending))) (at end (sign_up_done)))
  )

  (:durative-action do_audition
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (audition_pending)) (at start (sign_up_done)))
    :effect (and (at start (not (audition_pending))) (at end (audition_done)))
  )

  (:durative-action do_picked
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (picked_pending)) (at start (audition_done)))
    :effect (and (at start (not (picked_pending))) (at end (picked_done)))
  )

  (:durative-action do_rehearse_part
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (rehearse_part_pending)) (at start (picked_done)))
    :effect (and (at start (not (rehearse_part_pending))) (at end (rehearse_part_done)))
  )

  (:durative-action do_show_up
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (show_up_pending)) (at start (rehearse_part_done)) (at start (rehearse_with_others_done)))
    :effect (and (at start (not (show_up_pending))) (at end (show_up_done)))
  )

  (:durative-action do_rehearse_with_others
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (rehearse_with_others_pending)) (at start (picked_done)))
    :effect (and (at start (not (rehearse_with_others_pending))) (at end (rehearse_with_others_done)))
  )
)
