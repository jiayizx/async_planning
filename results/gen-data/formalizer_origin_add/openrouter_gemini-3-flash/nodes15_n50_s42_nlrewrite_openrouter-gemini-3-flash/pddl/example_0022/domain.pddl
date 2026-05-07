(define (domain forest_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (download_done)
    (pack_done)
    (charge_done)
    (load_done)
    (weather_done)
    (book_done)
    (snacks_done)
    (alarm_done)
    (fire_ban_done)
    (list_done)
    (gas_done)
    (inspect_done)
    (wash_done)
    (cash_done)
  )

  (:durative-action research_maps
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action download_data
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (download_done)))
  )

  (:durative-action pack_backpack
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (wash_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pack_done)))
  )

  (:durative-action charge_powerbank
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (list_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (charge_done)))
  )

  (:durative-action load_gear
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (pack_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (load_done)))
  )

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (fire_ban_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_done)))
  )

  (:durative-action book_campsite
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (book_done)))
  )

  (:durative-action purchase_snacks
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (list_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snacks_done)))
  )

  (:durative-action set_alarm
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (fire_ban_done)) (at start (cash_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (alarm_done)))
  )

  (:durative-action check_fire_bans
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fire_ban_done)))
  )

  (:durative-action create_list
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (list_done)))
  )

  (:durative-action fill_gas
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (list_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gas_done)))
  )

  (:durative-action inspect_boots
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (list_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inspect_done)))
  )

  (:durative-action wash_clothes
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wash_done)))
  )

  (:durative-action withdraw_cash
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (list_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cash_done)))
  )
)