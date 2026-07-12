(define (domain circus-visit)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (schedule_found)
    (tickets_printed)
    (tickets_purchased)
    (garages_researched)
    (funds_transferred)
    (bag_packed)
    (weather_checked)
    (friends_invited)
    (showtime_decided)
    (circus_visited)
    (meeting_point_coordinated)
    (departure_reminder_set)
    (parking_compared)
    (act_reviews_read)
    (afternoon_cleared)
  )

  (:durative-action look_up_schedule
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (afternoon_cleared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (schedule_found))
    )
  )

  (:durative-action print_tickets
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (tickets_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tickets_printed))
    )
  )

  (:durative-action purchase_tickets
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (schedule_found))
      (at start (funds_transferred))
      (at start (showtime_decided))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tickets_purchased))
    )
  )

  (:durative-action research_parking_garages
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garages_researched))
    )
  )

  (:durative-action transfer_funds
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (showtime_decided))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (funds_transferred))
    )
  )

  (:durative-action pack_bag
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (departure_reminder_set))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bag_packed))
    )
  )

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (weather_checked))
    )
  )

  (:durative-action invite_friends
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (schedule_found))
      (at start (weather_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (friends_invited))
    )
  )

  (:durative-action decide_showtime
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (act_reviews_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (showtime_decided))
    )
  )

  (:durative-action drive_to_circus
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (bag_packed))
      (at start (departure_reminder_set))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (circus_visited))
    )
  )

  (:durative-action coordinate_meeting_point
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (departure_reminder_set))
      (at start (act_reviews_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (meeting_point_coordinated))
    )
  )

  (:durative-action set_departure_reminder
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (garages_researched))
      (at start (weather_checked))
      (at start (parking_compared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (departure_reminder_set))
    )
  )

  (:durative-action compare_parking
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (garages_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (parking_compared))
    )
  )

  (:durative-action read_act_reviews
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (act_reviews_read))
    )
  )

  (:durative-action clear_afternoon_schedule
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (afternoon_cleared))
    )
  )
)