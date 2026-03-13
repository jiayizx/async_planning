(define (domain maine_beauty)
  (:requirements :durative-actions)
  (:predicates
    (book_cabin_pending)
    (book_cabin_done)
    (research_sunrise_pending)
    (research_sunrise_done)
    (hike_precipice_pending)
    (hike_precipice_done)
    (drive_route1_pending)
    (drive_route1_done)
    (pack_backpack_pending)
    (pack_backpack_done)
  )

  (:durative-action book_cabin
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (book_cabin_pending))
    :effect (and (at start (not (book_cabin_pending))) (at end (book_cabin_done)))
  )

  (:durative-action research_sunrise
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (research_sunrise_pending))
    :effect (and (at start (not (research_sunrise_pending))) (at end (research_sunrise_done)))
  )

  (:durative-action pack_backpack
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pack_backpack_pending)) (at start (research_sunrise_done)))
    :effect (and (at start (not (pack_backpack_pending))) (at end (pack_backpack_done)))
  )

  (:durative-action hike_precipice
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (hike_precipice_pending)) (at start (pack_backpack_done)))
    :effect (and (at start (not (hike_precipice_pending))) (at end (hike_precipice_done)))
  )

  (:durative-action drive_route1
    :parameters ()
    :duration (= ?duration 25200)
    :condition (and (at start (drive_route1_pending)) (at start (book_cabin_done)))
    :effect (and (at start (not (drive_route1_pending))) (at end (drive_route1_done)))
  )
)