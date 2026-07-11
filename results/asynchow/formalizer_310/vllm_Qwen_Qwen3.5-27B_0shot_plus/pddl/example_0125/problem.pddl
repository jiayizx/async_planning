(define (problem wedding_instance)
  (:domain wedding_planning)
  
  (:init
    (pay_band_pending)
    (go_church_pending)
    (exchange_vows_pending)
    (kiss_dance_pending)
    (get_dressed_pending)
    (invite_guests_pending)
    (pay_catering_pending)
  )

  (:goal (and
    (pay_band_done)
    (go_church_done)
    (exchange_vows_done)
    (kiss_dance_done)
    (get_dressed_done)
    (invite_guests_done)
    (pay_catering_done)
  ))
)