(define (domain air_dry_thick_hair)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cut_down_shampoo_done)
    (shampoo_roots_done)
    (comb_in_shower_done)
  )

  (:durative-action do_step1_cut_down_on_shampooing
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (cut_down_shampoo_done))
    )
  )

  (:durative-action do_step2_shampoo_only_roots
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (shampoo_roots_done))
    )
  )

  (:durative-action do_step3_comb_in_shower
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (shampoo_roots_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (comb_in_shower_done))
    )
  )
)
