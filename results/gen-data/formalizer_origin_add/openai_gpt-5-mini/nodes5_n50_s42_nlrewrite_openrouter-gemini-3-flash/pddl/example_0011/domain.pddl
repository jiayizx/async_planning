(define (domain buy-bus-pass)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchased_pass)
    (app_downloaded)
    (profile_created)
    (cash_withdrawn)
    (bank_found)
  )

  ;; Step 1: Purchase the pass at the transit kiosk (300s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cash_withdrawn)) (at start (bank_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (purchased_pass))
    )
  )

  ;; Step 2: Download the transit mobile app (120s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (app_downloaded))
    )
  )

  ;; Step 3: Create a digital rider profile (600s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (app_downloaded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (profile_created))
    )
  )

  ;; Step 4: Withdraw cash from an ATM (180s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (bank_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cash_withdrawn))
    )
  )

  ;; Step 5: Find a nearby bank branch (900s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bank_found))
    )
  )
)
