(define (domain move_out_of_town)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pack_done)
    (rent_done)
    (load_done)
    (uhaul_started)
    (departure_ready)
  )

  ;; Step 1: pack all belongings
  (:durative-action do_step1_pack
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pack_done))
    )
  )

  ;; Step 2: rent a U-Haul
  (:durative-action do_step2_rent
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rent_done))
    )
  )

  ;; Step 3: load the U-Haul (requires pack_done and rent_done)
  (:durative-action do_step3_load
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (at start (and (step_pending ?s) (pack_done) (rent_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (load_done))
    )
  )

  ;; Step 4: start the U-Haul (requires load_done)
  (:durative-action do_step4_start_uhaul
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (load_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (uhaul_started))
    )
  )

  ;; Step 5: start to leave town (requires uhaul_started)
  (:durative-action do_step5_depart
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (uhaul_started)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (departure_ready))
    )
  )
)
