(define (domain prison_escape)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (plans_obtained)
    (guards_watched)
    (ran_tunnel)
    (spoon_stolen)
    (tunnel_dug)
  )

  ;; Step 1: Get the plans for the prison
  (:durative-action do_step1_get_plans
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plans_obtained))
    )
  )

  ;; Step 2: Watch the guards to learn the schedule
  (:durative-action do_step2_watch_guards
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (guards_watched))
    )
  )

  ;; Step 3: Run through the tunnel and keep running
  ;; Predecessors: step2 and step5
  (:durative-action do_step3_run_tunnel
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (guards_watched) (tunnel_dug)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ran_tunnel))
    )
  )

  ;; Step 4: Steal a spoon from the cafeteria
  (:durative-action do_step4_steal_spoon
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spoon_stolen))
    )
  )

  ;; Step 5: Dig a tunnel towards nearest place in the fence
  ;; Predecessors: step1 and step4
  (:durative-action do_step5_dig_tunnel
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (at start (and (step_pending ?s) (plans_obtained) (spoon_stolen)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tunnel_dug))
    )
  )
)
