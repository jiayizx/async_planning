(define (domain sculpt_with_concrete)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (mesh_cut)
    (mesh_wrapped)
    (concrete_mixed)
    (concrete_applied)
    (concrete_dried)
  )

  (:durative-action cut_mesh
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mesh_cut)))
  )

  (:durative-action wrap_mesh
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (mesh_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mesh_wrapped)))
  )

  (:durative-action mix_concrete
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (concrete_mixed)))
  )

  (:durative-action apply_concrete
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (mesh_wrapped)) (at start (concrete_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (concrete_applied)))
  )

  (:durative-action dry_concrete
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (concrete_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (concrete_dried)))
  )
)