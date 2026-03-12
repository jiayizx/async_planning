(define (domain church_choir)
  (:requirements :durative-actions)
  (:predicates
    (gather_clothing_pending)
    (gather_clothing_done)
    (warm_up_voice_pending)
    (warm_up_voice_done)
    (sing_verses_pending)
    (sing_verses_done)
    (get_ready_pending)
    (get_ready_done)
    (drive_to_church_pending)
    (drive_to_church_done)
    (wait_for_singing_pending)
    (wait_for_singing_done)
  )

  (:durative-action gather_clothing
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (gather_clothing_pending))
    :effect (and (at start (not (gather_clothing_pending))) (at end (gather_clothing_done)))
  )

  (:durative-action warm_up_voice
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (warm_up_voice_pending)) (at start (drive_to_church_done)))
    :effect (and (at start (not (warm_up_voice_pending))) (at end (warm_up_voice_done)))
  )

  (:durative-action sing_verses
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (sing_verses_pending)) (at start (warm_up_voice_done)) (at start (wait_for_singing_done)))
    :effect (and (at start (not (sing_verses_pending))) (at end (sing_verses_done)))
  )

  (:durative-action get_ready
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (get_ready_pending)) (at start (gather_clothing_done)))
    :effect (and (at start (not (get_ready_pending))) (at end (get_ready_done)))
  )

  (:durative-action drive_to_church
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_to_church_pending)) (at start (get_ready_done)))
    :effect (and (at start (not (drive_to_church_pending))) (at end (drive_to_church_done)))
  )

  (:durative-action wait_for_singing
    :parameters ()
    :duration (= ?duration 3000)
    :condition (and (at start (wait_for_singing_pending)) (at start (drive_to_church_done)))
    :effect (and (at start (not (wait_for_singing_pending))) (at end (wait_for_singing_done)))
  )
)
