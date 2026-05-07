(define (domain superhero_movie)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tickets_purchased)
    (power_bank_charged)
    (showtimes_checked)
    (movie_decided)
    (trailer_watched)
    (friends_invited)
    (internet_renewed)
    (reviews_read)
    (arrived_at_theater)
    (theater_researched)
    (theories_browsed)
    (day_off_approved)
    (balance_checked)
    (date_coordinated)
    (bag_packed)
  )

  (:durative-action purchase_tickets
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (reviews_read)) (at start (theater_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_purchased)))
  )

  (:durative-action charge_power_bank
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_bank_charged)))
  )

  (:durative-action check_showtimes
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (theories_browsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (showtimes_checked)))
  )

  (:durative-action decide_movie
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (movie_decided)))
  )

  (:durative-action watch_trailer
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (movie_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trailer_watched)))
  )

  (:durative-action invite_friends
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (power_bank_charged)) (at start (movie_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_invited)))
  )

  (:durative-action renew_internet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (internet_renewed)))
  )

  (:durative-action read_reviews
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (movie_decided)) (at start (date_coordinated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reviews_read)))
  )

  (:durative-action drive_to_theater
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (tickets_purchased)) (at start (showtimes_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_theater)))
  )

  (:durative-action research_theater
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (internet_renewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (theater_researched)))
  )

  (:durative-action browse_theories
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (date_coordinated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (theories_browsed)))
  )

  (:durative-action ask_day_off
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (day_off_approved)))
  )

  (:durative-action check_balance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balance_checked)))
  )

  (:durative-action coordinate_date
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (day_off_approved)) (at start (balance_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (date_coordinated)))
  )

  (:durative-action pack_bag
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (power_bank_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bag_packed)))
  )
)