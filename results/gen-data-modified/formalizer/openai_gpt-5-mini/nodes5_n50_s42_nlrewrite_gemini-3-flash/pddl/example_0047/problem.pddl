(define (problem see_maine) (:domain maine_trip)
  (:init
    (book_cabin_pending)
    (research_sunrise_pending)
    (hike_precipice_pending)
    (drive_route1_pending)
    (pack_backpack_pending)
  )

  (:goal (and
    (book_cabin_done)
    (research_sunrise_done)
    (hike_precipice_done)
    (drive_route1_done)
    (pack_backpack_done)
  ))
)
