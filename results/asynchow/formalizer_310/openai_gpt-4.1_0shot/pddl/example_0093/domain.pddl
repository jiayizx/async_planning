(define (domain party_night)
  (:requirements :durative-actions)
  (:predicates
    (invited_pending)
    (invited_done)
    (costume_pending)
    (costume_done)
    (makeup_pending)
    (makeup_done)
    (dressup_pending)
    (dressup_done)
    (drive_pending)
    (drive_done)
    (park_pending)
    (park_done)
    (enter_pending)
    (enter_done)
  )

  (:durative-action do_invited
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (invited_pending))
    :effect (and (at start (not (invited_pending))) (at end (invited_done)))
  )

  (:durative-action do_costume
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (costume_pending)) (at start (invited_done)))
    :effect (and (at start (not (costume_pending))) (at end (costume_done)))
  )

  (:durative-action do_makeup
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (makeup_pending)) (at start (invited_done)))
    :effect (and (at start (not (makeup_pending))) (at end (makeup_done)))
  )

  (:durative-action do_dressup
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (dressup_pending)) (at start (costume_done)) (at start (makeup_done)))
    :effect (and (at start (not (dressup_pending))) (at end (dressup_done)))
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (drive_pending)) (at start (dressup_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action do_park
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (park_pending)) (at start (drive_done)))
    :effect (and (at start (not (park_pending))) (at end (park_done)))
  )

  (:durative-action do_enter
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (enter_pending)) (at start (park_done)))
    :effect (and (at start (not (enter_pending))) (at end (enter_done)))
  )
)
