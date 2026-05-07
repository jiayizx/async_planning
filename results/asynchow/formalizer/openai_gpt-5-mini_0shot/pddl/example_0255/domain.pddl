(define (domain clean-wubbanub)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (placed_in_bag_done)
    (placed_in_machine_done)
    (detergent_added_done)
    (cycle_started_done)
    (air_dried_done)
  )

  ; Step 1: place in mesh bag
  (:durative-action do_step1_place_in_bag
    :parameters (?s - step)
    :duration (= ?duration 300)  ; 5 minutes = 300 seconds
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (placed_in_bag_done))
    )
  )

  ; Step 2: place into washing machine (requires step1)
  (:durative-action do_step2_place_in_machine
    :parameters (?s - step)
    :duration (= ?duration 120)  ; 2 minutes = 120 seconds
    :condition (and (at start (step_pending ?s)) (at start (placed_in_bag_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (placed_in_machine_done))
    )
  )

  ; Step 3: add baby-safe detergent (no predecessors)
  (:durative-action do_step3_add_detergent
    :parameters (?s - step)
    :duration (= ?duration 60)  ; 1 minute = 60 seconds
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (detergent_added_done))
    )
  )

  ; Step 4: set and start laundry cycle (requires step2 and step3)
  (:durative-action do_step4_start_cycle
    :parameters (?s - step)
    :duration (= ?duration 1800)  ; 30 minutes = 1800 seconds
    :condition (and (at start (step_pending ?s)) (at start (placed_in_machine_done)) (at start (detergent_added_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cycle_started_done))
    )
  )

  ; Step 5: air dry (requires step4)
  (:durative-action do_step5_air_dry
    :parameters (?s - step)
    :duration (= ?duration 21600)  ; already in seconds
    :condition (and (at start (step_pending ?s)) (at start (cycle_started_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (air_dried_done))
    )
  )
)
