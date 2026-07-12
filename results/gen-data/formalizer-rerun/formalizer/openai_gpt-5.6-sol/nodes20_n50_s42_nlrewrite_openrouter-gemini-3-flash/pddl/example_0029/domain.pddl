(define (domain movie-theater)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1type step2type step3type step4type step5type
    step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type
    step16type step17type step18type step19type step20type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tickets_purchased)
    (at_theater_entrance)
    (showtimes_checked)
    (shirt_ironed)
    (movie_selected)
    (at_cinema_complex)
    (shower_taken)
    (dressed)
    (booking_confirmed)
    (outing_decided)
    (car_keys_found)
    (friends_asked)
    (shoes_and_coat_on)
    (dried_off)
    (group_texted)
    (cologne_applied)
    (weather_checked)
    (wallet_and_id_found)
    (phone_charged)
    (reviews_read)
  )

  (:durative-action purchase_tickets
    :parameters (?s - step1type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (movie_selected))
      (at start (booking_confirmed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tickets_purchased))))

  (:durative-action walk_to_entrance
    :parameters (?s - step2type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (at_cinema_complex))
      (at start (shoes_and_coat_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (at_theater_entrance))))

  (:durative-action check_showtimes
    :parameters (?s - step3type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (reviews_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (showtimes_checked))))

  (:durative-action iron_shirt
    :parameters (?s - step4type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (wallet_and_id_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shirt_ironed))))

  (:durative-action select_movie
    :parameters (?s - step5type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (friends_asked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (movie_selected))))

  (:durative-action drive_to_cinema
    :parameters (?s - step6type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (phone_charged))
      (at start (reviews_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (at_cinema_complex))))

  (:durative-action take_shower
    :parameters (?s - step7type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (outing_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shower_taken))))

  (:durative-action get_dressed
    :parameters (?s - step8type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (shirt_ironed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dressed))))

  (:durative-action confirm_booking
    :parameters (?s - step9type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (movie_selected))
      (at start (dressed))
      (at start (wallet_and_id_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (booking_confirmed))))

  (:durative-action decide_outing
    :parameters (?s - step10type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (outing_decided))))

  (:durative-action find_car_keys
    :parameters (?s - step11type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (friends_asked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (car_keys_found))))

  (:durative-action ask_friends
    :parameters (?s - step12type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (weather_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (friends_asked))))

  (:durative-action put_on_shoes_and_coat
    :parameters (?s - step13type)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shoes_and_coat_on))))

  (:durative-action dry_off
    :parameters (?s - step14type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (shower_taken)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dried_off))))

  (:durative-action text_group
    :parameters (?s - step15type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (showtimes_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (group_texted))))

  (:durative-action apply_cologne
    :parameters (?s - step16type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (dried_off)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cologne_applied))))

  (:durative-action check_weather
    :parameters (?s - step17type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (dried_off)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (weather_checked))))

  (:durative-action find_wallet_and_id
    :parameters (?s - step18type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (outing_decided))
      (at start (car_keys_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wallet_and_id_found))))

  (:durative-action charge_phone
    :parameters (?s - step19type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (tickets_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (phone_charged))))

  (:durative-action read_reviews
    :parameters (?s - step20type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (reviews_read))))
)