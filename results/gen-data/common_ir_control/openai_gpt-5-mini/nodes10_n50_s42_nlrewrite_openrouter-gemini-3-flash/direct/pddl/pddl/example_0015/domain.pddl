(define (domain garden_protection)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending ?s - step)
    (step_done ?s - step)
    (attached_mesh_done)
    (trench_dug)
    (wildlife_research_done)
    (motion_light_installed)
    (fencing_materials_purchased)
    (posts_driven)
    (fence_map_done)
    (measurements_done)
    (peppermint_mixed)
    (repellent_applied)
  )

  (:durative-action do_step1_attach_mesh
    :duration (= ?duration 7200)
    :condition (and (at start (pending step1)) (at start (trench_dug)) (at start (posts_driven)))
    :effect (and (at start (not (pending step1))) (at end (step_done step1)) (at end (attached_mesh_done)))
  )

  (:durative-action do_step2_dig_trench
    :duration (= ?duration 10800)
    :condition (and (at start (pending step2)) (at start (measurements_done)))
    :effect (and (at start (not (pending step2))) (at end (step_done step2)) (at end (trench_dug)))
  )

  (:durative-action do_step3_research_wildlife
    :duration (= ?duration 3600)
    :condition (at start (pending step3))
    :effect (and (at start (not (pending step3))) (at end (step_done step3)) (at end (wildlife_research_done)))
  )

  (:durative-action do_step4_install_light
    :duration (= ?duration 1800)
    :condition (and (at start (pending step4)) (at start (posts_driven)))
    :effect (and (at start (not (pending step4))) (at end (step_done step4)) (at end (motion_light_installed)))
  )

  (:durative-action do_step5_purchase_fencing
    :duration (= ?duration 2700)
    :condition (and (at start (pending step5)) (at start (fence_map_done)))
    :effect (and (at start (not (pending step5))) (at end (step_done step5)) (at end (fencing_materials_purchased)))
  )

  (:durative-action do_step6_drive_posts
    :duration (= ?duration 5400)
    :condition (and (at start (pending step6)) (at start (fencing_materials_purchased)))
    :effect (and (at start (not (pending step6))) (at end (step_done step6)) (at end (posts_driven)))
  )

  (:durative-action do_step7_map_fence
    :duration (= ?duration 1200)
    :condition (and (at start (pending step7)) (at start (wildlife_research_done)))
    :effect (and (at start (not (pending step7))) (at end (step_done step7)) (at end (fence_map_done)))
  )

  (:durative-action do_step8_measure_garden
    :duration (= ?duration 900)
    :condition (at start (pending step8))
    :effect (and (at start (not (pending step8))) (at end (step_done step8)) (at end (measurements_done)))
  )

  (:durative-action do_step9_mix_peppermint
    :duration (= ?duration 600)
    :condition (at start (pending step9))
    :effect (and (at start (not (pending step9))) (at end (step_done step9)) (at end (peppermint_mixed)))
  )

  (:durative-action do_step10_apply_repellent
    :duration (= ?duration 300)
    :condition (and (at start (pending step10)) (at start (peppermint_mixed)))
    :effect (and (at start (not (pending step10))) (at end (step_done step10)) (at end (repellent_applied)))
  )
)
