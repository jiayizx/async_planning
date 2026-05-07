(define (domain build_generator)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (plate_fabricated)
    (pulleys_mounted)
    (belts_run)
    (tank_mounted)
    (fuel_reconnected)
  )

  ; Step 1: Fabricate a mounting plate
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plate_fabricated))
    )
  )

  ; Step 2: Mount the pulleys
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pulleys_mounted))
    )
  )

  ; Step 3: Run the belt or belts (requires pulleys mounted)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (pulleys_mounted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (belts_run))
    )
  )

  ; Step 4: Mount the gasoline tank to the mounting plate (requires plate fabricated)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (plate_fabricated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tank_mounted))
    )
  )

  ; Step 5: Reconnect the gasoline supply (requires tank mounted)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (tank_mounted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fuel_reconnected))
    )
  )
)
