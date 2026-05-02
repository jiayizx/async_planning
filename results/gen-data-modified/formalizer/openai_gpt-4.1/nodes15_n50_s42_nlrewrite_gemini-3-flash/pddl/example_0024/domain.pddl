(define (domain superhero_movie_outing)
  (:requirements :durative-actions)
  (:predicates
    (purchase_tickets_pending)
    (purchase_tickets_done)
    (charge_power_bank_pending)
    (charge_power_bank_done)
    (check_parking_pending)
    (check_parking_done)
    (decide_theater_pending)
    (decide_theater_done)
    (invite_friends_pending)
    (invite_friends_done)
    (pack_bag_pending)
    (pack_bag_done)
    (browse_trailers_pending)
    (browse_trailers_done)
    (select_showtime_pending)
    (select_showtime_done)
    (drive_to_cinema_pending)
    (drive_to_cinema_done)
    (read_reviews_pending)
    (read_reviews_done)
    (lookup_address_pending)
    (lookup_address_done)
    (ask_afternoon_off_pending)
    (ask_afternoon_off_done)
    (check_calendar_pending)
    (check_calendar_done)
    (finalize_date_pending)
    (finalize_date_done)
    (put_on_tshirt_pending)
    (put_on_tshirt_done)
  )

  (:durative-action purchase_tickets
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (purchase_tickets_pending)) (at start (select_showtime_done)) (at start (read_reviews_done)))
    :effect (and (at start (not (purchase_tickets_pending))) (at end (purchase_tickets_done)))
  )

  (:durative-action charge_power_bank
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (charge_power_bank_pending))
    :effect (and (at start (not (charge_power_bank_pending))) (at end (charge_power_bank_done)))
  )

  (:durative-action check_parking
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (check_parking_pending)) (at start (lookup_address_done)))
    :effect (and (at start (not (check_parking_pending))) (at end (check_parking_done)))
  )

  (:durative-action decide_theater
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (decide_theater_pending))
    :effect (and (at start (not (decide_theater_pending))) (at end (decide_theater_done)))
  )

  (:durative-action invite_friends
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (invite_friends_pending)) (at start (decide_theater_done)))
    :effect (and (at start (not (invite_friends_pending))) (at end (invite_friends_done)))
  )

  (:durative-action pack_bag
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pack_bag_pending)) (at start (charge_power_bank_done)) (at start (decide_theater_done)))
    :effect (and (at start (not (pack_bag_pending))) (at end (pack_bag_done)))
  )

  (:durative-action browse_trailers
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (browse_trailers_pending))
    :effect (and (at start (not (browse_trailers_pending))) (at end (browse_trailers_done)))
  )

  (:durative-action select_showtime
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (select_showtime_pending)) (at start (decide_theater_done)) (at start (finalize_date_done)))
    :effect (and (at start (not (select_showtime_pending))) (at end (select_showtime_done)))
  )

  (:durative-action drive_to_cinema
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (drive_to_cinema_pending)) (at start (purchase_tickets_done)) (at start (check_parking_done)))
    :effect (and (at start (not (drive_to_cinema_pending))) (at end (drive_to_cinema_done)))
  )

  (:durative-action read_reviews
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (read_reviews_pending)) (at start (browse_trailers_done)))
    :effect (and (at start (not (read_reviews_pending))) (at end (read_reviews_done)))
  )

  (:durative-action lookup_address
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (lookup_address_pending)) (at start (finalize_date_done)))
    :effect (and (at start (not (lookup_address_pending))) (at end (lookup_address_done)))
  )

  (:durative-action ask_afternoon_off
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (ask_afternoon_off_pending))
    :effect (and (at start (not (ask_afternoon_off_pending))) (at end (ask_afternoon_off_done)))
  )

  (:durative-action check_calendar
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (check_calendar_pending))
    :effect (and (at start (not (check_calendar_pending))) (at end (check_calendar_done)))
  )

  (:durative-action finalize_date
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (finalize_date_pending)) (at start (ask_afternoon_off_done)) (at start (check_calendar_done)))
    :effect (and (at start (not (finalize_date_pending))) (at end (finalize_date_done)))
  )

  (:durative-action put_on_tshirt
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (put_on_tshirt_pending)) (at start (charge_power_bank_done)))
    :effect (and (at start (not (put_on_tshirt_pending))) (at end (put_on_tshirt_done)))
  )
)
