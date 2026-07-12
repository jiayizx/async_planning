(define (domain make-canoe)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (varnish_applied)
    (cedar_planks_selected)
    (hull_and_gunwales_assembled)
    (cane_seats_installed)
    (exterior_sanded)
  )

  (:durative-action apply_waterproof_marine_varnish
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (hull_and_gunwales_assembled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (varnish_applied))
    )
  )

  (:durative-action source_and_select_cedar_planks
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cedar_planks_selected))
    )
  )

  (:durative-action assemble_hull_and_gunwales
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (cedar_planks_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hull_and_gunwales_assembled))
    )
  )

  (:durative-action install_woven_cane_seats
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (hull_and_gunwales_assembled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cane_seats_installed))
    )
  )

  (:durative-action sand_exterior_surface
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (hull_and_gunwales_assembled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (exterior_sanded))
    )
  )
)