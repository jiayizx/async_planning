(define (domain sim_replacement)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sim_available)
    (screwdriver_available)
    (phone_unscrewed)
    (back_off)
    (old_sim_gone)
    (new_sim_in)
    (phone_secured)
  )

  (:durative-action get_sim
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sim_available)))
  )

  (:durative-action get_screwdriver
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (screwdriver_available)))
  )

  (:durative-action unscrew_back
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (screwdriver_available)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_unscrewed)))
  )

  (:durative-action remove_back
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and (at start (step_pending ?s)) (at start (phone_unscrewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (back_off)))
  )

  (:durative-action remove_old_sim
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (back_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (old_sim_gone)))
  )

  (:durative-action install_new_sim
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (sim_available)) (at start (old_sim_gone)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (new_sim_in)))
  )

  (:durative-action screw_back_in
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (new_sim_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_secured)))
  )
)