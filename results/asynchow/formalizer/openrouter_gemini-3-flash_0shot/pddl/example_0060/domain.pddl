(define (domain move_out)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (belongings_packed)
    (uhaul_rented)
    (uhaul_loaded)
    (uhaul_started)
    (left_town)
  )

  (:durative-action pack_belongings
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (belongings_packed)))
  )

  (:durative-action rent_uhaul
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (uhaul_rented)))
  )

  (:durative-action load_uhaul
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (belongings_packed)) (at start (uhaul_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (uhaul_loaded)))
  )

  (:durative-action start_uhaul
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (uhaul_loaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (uhaul_started)))
  )

  (:durative-action leave_town
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (uhaul_started)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_town)))
  )
)