(define (domain bus_pass_acquisition)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (kiosk_purchase_done)
    (app_downloaded)
    (profile_created)
    (cash_withdrawn)
    (bank_found)
  )

  (:durative-action find_bank
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bank_found)))
  )

  (:durative-action withdraw_cash
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (bank_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cash_withdrawn)))
  )

  (:durative-action purchase_pass
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cash_withdrawn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kiosk_purchase_done)))
  )

  (:durative-action download_app
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (app_downloaded)))
  )

  (:durative-action create_profile
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (app_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (profile_created)))
  )
)