(define (domain sculpt_concrete)
  (:requirements :durative-actions)
  (:predicates
    (cut_mesh_pending) (cut_mesh_done)
    (wrap_mesh_pending) (wrap_mesh_done)
    (mix_concrete_pending) (mix_concrete_done)
    (apply_concrete_pending) (apply_concrete_done)
    (dry_concrete_pending) (dry_concrete_done)
  )

  (:durative-action do_cut_mesh
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (cut_mesh_pending))
    :effect (and (at start (not (cut_mesh_pending))) (at end (cut_mesh_done)))
  )

  (:durative-action do_wrap_mesh
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (wrap_mesh_pending)) (at start (cut_mesh_done)))
    :effect (and (at start (not (wrap_mesh_pending))) (at end (wrap_mesh_done)))
  )

  (:durative-action do_mix_concrete
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (mix_concrete_pending))
    :effect (and (at start (not (mix_concrete_pending))) (at end (mix_concrete_done)))
  )

  (:durative-action do_apply_concrete
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (apply_concrete_pending)) (at start (wrap_mesh_done)) (at start (mix_concrete_done)))
    :effect (and (at start (not (apply_concrete_pending))) (at end (apply_concrete_done)))
  )

  (:durative-action do_dry_concrete
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (dry_concrete_pending)) (at start (apply_concrete_done)))
    :effect (and (at start (not (dry_concrete_pending))) (at end (dry_concrete_done)))
  )
)
