(define (domain get_married)
  (:requirements :durative-actions)
  (:predicates
    (pay_band_pending)
    (pay_band_done)
    (go_church_pending)
    (go_church_done)
    (exchange_vows_pending)
    (exchange_vows_done)
    (kiss_and_dance_pending)
    (kiss_and_dance_done)
    (get_dressed_pending)
    (get_dressed_done)
    (invite_guests_pending)
    (invite_guests_done)
    (pay_catering_pending)
    (pay_catering_done)
  )

  (:durative-action pay_band
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (pay_band_pending))
    :effect (and (at start (not (pay_band_pending))) (at end (pay_band_done)))
  )

  (:durative-action go_church
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (go_church_pending)) (at start (get_dressed_done)))
    :effect (and (at start (not (go_church_pending))) (at end (go_church_done)))
  )

  (:durative-action exchange_vows
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (exchange_vows_pending)) (at start (go_church_done)))
    :effect (and (at start (not (exchange_vows_pending))) (at end (exchange_vows_done)))
  )

  (:durative-action kiss_and_dance
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (kiss_and_dance_pending)) (at start (exchange_vows_done)))
    :effect (and (at start (not (kiss_and_dance_pending))) (at end (kiss_and_dance_done)))
  )

  (:durative-action get_dressed
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_dressed_pending)) (at start (pay_band_done)) (at start (invite_guests_done)) (at start (pay_catering_done)))
    :effect (and (at start (not (get_dressed_pending))) (at end (get_dressed_done)))
  )

  (:durative-action invite_guests
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (invite_guests_pending))
    :effect (and (at start (not (invite_guests_pending))) (at end (invite_guests_done)))
  )

  (:durative-action pay_catering
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pay_catering_pending))
    :effect (and (at start (not (pay_catering_pending))) (at end (pay_catering_done)))
  )
)
