(define (domain superhero-movie-outing)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (tickets_purchased)
    (power_bank_charged)
    (showtimes_checked)
    (movie_decided)
    (trailer_watched)
    (friends_invited)
    (internet_renewed)
    (reviews_read)
    (theater_reached)
    (best_screen_researched)
    (fan_theories_browsed)
    (day_off_requested)
    (balance_checked)
    (outing_date_coordinated)
    (bag_packed)
  )

  (:durative-action purchase_tickets
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (reviews_read))
      (at start (best_screen_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tickets_purchased))))

  (:durative-action charge_power_bank
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (power_bank_charged))))

  (:durative-action check_showtimes
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (fan_theories_browsed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (showtimes_checked))))

  (:durative-action decide_movie
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (movie_decided))))

  (:durative-action watch_trailer
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (movie_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trailer_watched))))

  (:durative-action invite_friends
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (power_bank_charged))
      (at start (movie_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (friends_invited))))

  (:durative-action renew_internet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (internet_renewed))))

  (:durative-action read_reviews
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (movie_decided))
      (at start (outing_date_coordinated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (reviews_read))))

  (:durative-action drive_to_theater
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (tickets_purchased))
      (at start (showtimes_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (theater_reached))))

  (:durative-action research_best_screen
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (internet_renewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (best_screen_researched))))

  (:durative-action browse_fan_theories
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (outing_date_coordinated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fan_theories_browsed))))

  (:durative-action request_day_off
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (day_off_requested))))

  (:durative-action check_balance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (balance_checked))))

  (:durative-action coordinate_date
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (day_off_requested))
      (at start (balance_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (outing_date_coordinated))))

  (:durative-action pack_bag
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (power_bank_charged)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bag_packed))))
)