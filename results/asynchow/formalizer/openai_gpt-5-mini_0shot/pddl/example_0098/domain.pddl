(define (domain insert-sim)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (got_sim)
    (got_screwdriver)
    (unscrewed)
    (back_removed)
    (old_sim_removed)
    (sim_installed)
    (screwed_back)
  )

  ; Step 1: get a SIM card (60s)
  (:durative-action do_step1_get_sim
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (got_sim))
    )
  )

  ; Step 2: get a screw driver (20s)
  (:durative-action do_step2_get_screwdriver
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (got_screwdriver))
    )
  )

  ; Step 3: unscrew back of mobile phone (60s)
  (:durative-action do_step3_unscrew_back
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (got_screwdriver)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (unscrewed))
    )
  )

  ; Step 4: remove back of mobile phone (25s)
  (:durative-action do_step4_remove_back
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and (at start (step_pending ?s)) (at start (unscrewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (back_removed))
    )
  )

  ; Step 5: install new SIM card (60s)
  (:durative-action do_step5_install_sim
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (got_sim)) (at start (old_sim_removed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sim_installed))
    )
  )

  ; Step 6: screw back of phone in (120s)
  (:durative-action do_step6_screw_back
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (sim_installed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (screwed_back))
    )
  )

  ; Step 7: remove old SIM card (60s)
  (:durative-action do_step7_remove_old_sim
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (back_removed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (old_sim_removed))
    )
  )
)
