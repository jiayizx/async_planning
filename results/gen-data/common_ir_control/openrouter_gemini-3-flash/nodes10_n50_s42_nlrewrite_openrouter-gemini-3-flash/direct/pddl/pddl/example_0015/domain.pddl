(define (domain garden_protection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dimensions_measured)
    (wildlife_researched)
    (fence_mapped)
    (materials_purchased)
    (trench_dug)
    (posts_driven)
    (mesh_attached)
    (light_installed)
    (spray_mixed)
    (spray_applied)
  )

  (:durative-action measure_dimensions
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimensions_measured)))
  )

  (:durative-action research_wildlife
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wildlife_researched)))
  )

  (:durative-action map_fence
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (wildlife_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fence_mapped)))
  )

  (:durative-action purchase_materials
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (fence_mapped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (materials_purchased)))
  )

  (:durative-action dig_trench
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (dimensions_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trench_dug)))
  )

  (:durative-action drive_posts
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (materials_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (posts_driven)))
  )

  (:durative-action attach_mesh
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (trench_dug)) (at start (posts_driven)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mesh_attached)))
  )

  (:durative-action install_light
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (posts_driven)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (light_installed)))
  )

  (:durative-action mix_spray
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spray_mixed)))
  )

  (:durative-action apply_spray
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (spray_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spray_applied)))
  )
)