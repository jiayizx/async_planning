(define (domain wii-dialup)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchase_done)
    (configure_done)
    (test_done)
    (install_done)
    (plug_done)
  )

  ;; Step 1: Purchase a compatible USB Ethernet adapter
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (purchase_done))
    )
  )

  ;; Step 2: Configure Internet Connection Sharing on PC (requires Step 4)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (install_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (configure_done))
    )
  )

  ;; Step 3: Perform connection test on the Wii (requires Step 4 and Step 5)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (install_done)) (at start (plug_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (test_done))
    )
  )

  ;; Step 4: Install the dial-up modem drivers on laptop
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (install_done))
    )
  )

  ;; Step 5: Plug the adapter into the Wii and connect the crossover cable (requires Step 1)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (purchase_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plug_done))
    )
  )
)
