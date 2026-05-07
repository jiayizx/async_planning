(define (domain camping)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (buy_done)
    (pick_done)
    (pack_done)
    (drive_done)
    (park_done)
    (enter_done)
  )

  ;; Step 1: buy camping equipment (7200s)
  (:durative-action do_step1_buy
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buy_done))
    )
  )

  ;; Step 2: pick a camping site (600s)
  (:durative-action do_step2_pick_site
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pick_done))
    )
  )

  ;; Step 3: pack camping equipment (3600s)
  ;; Requires step1 (buy_done) and step2 (pick_done)
  (:durative-action do_step3_pack
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (buy_done)) (at start (pick_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pack_done))
    )
  )

  ;; Step 4: drive to camping site (7200s)
  ;; Requires step3 (pack_done)
  (:durative-action do_step4_drive
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (pack_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drive_done))
    )
  )

  ;; Step 5: park the car (300s)
  ;; Requires step4 (drive_done)
  (:durative-action do_step5_park
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (drive_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (park_done))
    )
  )

  ;; Step 6: enter camping site (1200s)
  ;; Requires step5 (park_done)
  (:durative-action do_step6_enter
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (park_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (enter_done))
    )
  )
)
