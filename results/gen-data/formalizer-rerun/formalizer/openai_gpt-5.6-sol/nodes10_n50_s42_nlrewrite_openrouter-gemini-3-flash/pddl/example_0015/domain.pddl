(define (domain protect-vegetable-garden)
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
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (wire_mesh_attached)
    (trench_dug)
    (wildlife_researched)
    (motion_light_installed)
    (fencing_materials_purchased)
    (support_posts_driven)
    (fence_line_mapped)
    (garden_measured)
    (peppermint_spray_mixed)
    (repellent_spray_applied)
  )

  (:durative-action attach_wire_mesh
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (trench_dug))
      (at start (support_posts_driven))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wire_mesh_attached))
    )
  )

  (:durative-action dig_trench
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (garden_measured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trench_dug))
    )
  )

  (:durative-action research_wildlife
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wildlife_researched))
    )
  )

  (:durative-action install_motion_light
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (support_posts_driven))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (motion_light_installed))
    )
  )

  (:durative-action purchase_fencing_materials
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (fence_line_mapped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fencing_materials_purchased))
    )
  )

  (:durative-action drive_support_posts
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (fencing_materials_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (support_posts_driven))
    )
  )

  (:durative-action map_fence_line
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (wildlife_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fence_line_mapped))
    )
  )

  (:durative-action measure_garden
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garden_measured))
    )
  )

  (:durative-action mix_peppermint_spray
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (peppermint_spray_mixed))
    )
  )

  (:durative-action apply_repellent_spray
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (peppermint_spray_mixed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (repellent_spray_applied))
    )
  )
)