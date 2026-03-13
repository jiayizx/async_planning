(define (domain make_dog_toys)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
    (step16_pending) (step16_done)
    (step17_pending) (step17_done)
    (step18_pending) (step18_done)
    (step19_pending) (step19_done)
    (step20_pending) (step20_done)
  )

  (:durative-action do_step1_purchase_heavy_duty_cotton_rope
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2_cut_fabric_into_long_strips_for_braiding
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step2_pending)) (at start (step7_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3_sanitize_all_raw_materials
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4_attach_squeakers_to_internal_plush_assembly
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step4_pending)) (at start (step9_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5_sew_outer_seams_of_plush_body
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step5_pending)) (at start (step3_done)) (at start (step12_done)) (at start (step18_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action do_step6_stuff_toy_with_eco_friendly_fiberfill
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step6_pending)) (at start (step11_done)) (at start (step18_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action do_step7_source_recycled_denim_fabric
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action do_step8_tie_decorative_knots_at_ends_of_rope
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step8_pending)) (at start (step1_done)) (at start (step11_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action do_step9_construct_internal_reinforced_core
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step9_pending)) (at start (step10_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action do_step10_design_toy_structural_blueprints
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action do_step11_cut_internal_padding_to_size
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step11_pending)) (at start (step10_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action do_step12_interweave_fabric_strips_with_central_core
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step12_pending)) (at start (step2_done)) (at start (step3_done)) (at start (step17_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action do_step13_soak_rope_in_beef_broth_for_scent
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (step13_pending)) (at start (step1_done)) (at start (step16_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action do_step14_print_safety_warning_labels
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step14_pending))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action do_step15_affix_labels_to_final_packaging
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step15_pending)) (at start (step14_done)) (at start (step20_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action do_step16_order_specialized_non_toxic_flavor_extract
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step16_pending))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action do_step17_prepare_industrial_sewing_machine
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step17_pending))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action do_step18_measure_and_mark_stitch_lines_on_fabric
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step18_pending))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action do_step19_quality_control_inspection_for_loose_threads
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step19_pending)) (at start (step1_done)) (at start (step7_done)) (at start (step9_done)) (at start (step18_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action do_step20_order_biodegradable_shipping_boxes
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step20_pending))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )
)
