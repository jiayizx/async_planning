(define (domain avoid_ironing)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (bought_steamer)
    (steamer_filled)
    (item_on_hanger)
    (steamed)
    (clothes_hung_shower)
  )

  ;; Step 1: Buy a garment steamer (600 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bought_steamer))
    )
  )

  ;; Step 2: Fill the steamer and turn it on (120 seconds)
  ;; Requires step1 to have completed (bought_steamer produced by step1)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (bought_steamer)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (steamer_filled))
    )
  )

  ;; Step 3: Put the item on a hanger (60 seconds)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (item_on_hanger))
    )
  )

  ;; Step 4: Hold the steamer head up to the wrinkles (600 seconds)
  ;; Requires step2 and step3 completed (steamer_filled and item_on_hanger)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (steamer_filled)) (at start (item_on_hanger)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (steamed))
    )
  )

  ;; Step 5: Hang your clothes in the shower (600 seconds)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clothes_hung_shower))
    )
  )
)
