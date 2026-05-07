(define (domain attract_birds)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (nest_box_hung)
    (nest_box_installed)
    (nesting_materials_provided)
  )

  (:durative-action hang_nest_box
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (nest_box_hung))
    )
  )

  (:durative-action install_nest_box
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (nest_box_hung))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (nest_box_installed))
    )
  )

  (:durative-action provide_nesting_materials
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (nesting_materials_provided))
    )
  )
)