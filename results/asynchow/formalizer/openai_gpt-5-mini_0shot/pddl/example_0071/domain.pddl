(define (domain purchase-soil)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wallet_grabbed)
    (keys_grabbed)
    (exited_house)
    (in_car)
    (arrived_store)
  )

  ;; Step 1: grab wallet from the counter (30s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wallet_grabbed))
    )
  )

  ;; Step 2: grab keys off the counter (20s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (keys_grabbed))
    )
  )

  ;; Step 3: exit the house (30s) -- requires step1 and step2
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (wallet_grabbed)) (at start (keys_grabbed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (exited_house))
    )
  )

  ;; Step 4: get in the car (30s) -- requires step3
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (exited_house)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (in_car))
    )
  )

  ;; Step 5: drive to the outdoor supplies store (600s) -- requires step4
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (in_car)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (arrived_store))
    )
  )
)
