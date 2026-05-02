(define (domain dog_toy_making)
  (:requirements :durative-actions)
  (:predicates
    (purchase_rope_pending)
    (purchase_rope_done)
    (cut_fabric_pending)
    (cut_fabric_done)
    (sanitize_materials_pending)
    (sanitize_materials_done)
    (attach_squeakers_pending)
    (attach_squeakers_done)
    (sew_seams_pending)
    (sew_seams_done)
    (stuff_toy_pending)
    (stuff_toy_done)
    (source_denim_pending)
    (source_denim_done)
    (tie_knots_pending)
    (tie_knots_done)
    (construct_core_pending)
    (construct_core_done)
    (design_blueprints_pending)
    (design_blueprints_done)
    (cut_padding_pending)
    (cut_padding_done)
    (interweave_fabric_pending)
    (interweave_fabric_done)
    (soak_rope_pending)
    (soak_rope_done)
    (print_labels_pending)
    (print_labels_done)
    (affix_labels_pending)
    (affix_labels_done)
    (order_flavor_pending)
    (order_flavor_done)
    (prepare_machine_pending)
    (prepare_machine_done)
    (mark_stitch_pending)
    (mark_stitch_done)
    (qc_inspect_pending)
    (qc_inspect_done)
    (order_boxes_pending)
    (order_boxes_done)
  )

  (:durative-action purchase_rope
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (purchase_rope_pending))
    :effect (and (at start (not (purchase_rope_pending))) (at end (purchase_rope_done)))
  )

  (:durative-action cut_fabric
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (cut_fabric_pending)) (at start (source_denim_done)))
    :effect (and (at start (not (cut_fabric_pending))) (at end (cut_fabric_done)))
  )

  (:durative-action sanitize_materials
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (sanitize_materials_pending))
    :effect (and (at start (not (sanitize_materials_pending))) (at end (sanitize_materials_done)))
  )

  (:durative-action attach_squeakers
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (attach_squeakers_pending)) (at start (construct_core_done)))
    :effect (and (at start (not (attach_squeakers_pending))) (at end (attach_squeakers_done)))
  )

  (:durative-action sew_seams
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (sew_seams_pending)) (at start (sanitize_materials_done)) (at start (interweave_fabric_done)) (at start (mark_stitch_done)))
    :effect (and (at start (not (sew_seams_pending))) (at end (sew_seams_done)))
  )

  (:durative-action stuff_toy
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (stuff_toy_pending)) (at start (cut_padding_done)) (at start (mark_stitch_done)))
    :effect (and (at start (not (stuff_toy_pending))) (at end (stuff_toy_done)))
  )

  (:durative-action source_denim
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (source_denim_pending))
    :effect (and (at start (not (source_denim_pending))) (at end (source_denim_done)))
  )

  (:durative-action tie_knots
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (tie_knots_pending)) (at start (purchase_rope_done)) (at start (cut_padding_done)))
    :effect (and (at start (not (tie_knots_pending))) (at end (tie_knots_done)))
  )

  (:durative-action construct_core
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (construct_core_pending)) (at start (design_blueprints_done)))
    :effect (and (at start (not (construct_core_pending))) (at end (construct_core_done)))
  )

  (:durative-action design_blueprints
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (design_blueprints_pending))
    :effect (and (at start (not (design_blueprints_pending))) (at end (design_blueprints_done)))
  )

  (:durative-action cut_padding
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (cut_padding_pending)) (at start (design_blueprints_done)))
    :effect (and (at start (not (cut_padding_pending))) (at end (cut_padding_done)))
  )

  (:durative-action interweave_fabric
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (interweave_fabric_pending)) (at start (cut_fabric_done)) (at start (sanitize_materials_done)) (at start (prepare_machine_done)))
    :effect (and (at start (not (interweave_fabric_pending))) (at end (interweave_fabric_done)))
  )

  (:durative-action soak_rope
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (soak_rope_pending)) (at start (purchase_rope_done)) (at start (order_flavor_done)))
    :effect (and (at start (not (soak_rope_pending))) (at end (soak_rope_done)))
  )

  (:durative-action print_labels
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (print_labels_pending))
    :effect (and (at start (not (print_labels_pending))) (at end (print_labels_done)))
  )

  (:durative-action affix_labels
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (affix_labels_pending)) (at start (print_labels_done)) (at start (order_boxes_done)))
    :effect (and (at start (not (affix_labels_pending))) (at end (affix_labels_done)))
  )

  (:durative-action order_flavor
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (order_flavor_pending))
    :effect (and (at start (not (order_flavor_pending))) (at end (order_flavor_done)))
  )

  (:durative-action prepare_machine
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (prepare_machine_pending))
    :effect (and (at start (not (prepare_machine_pending))) (at end (prepare_machine_done)))
  )

  (:durative-action mark_stitch
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mark_stitch_pending))
    :effect (and (at start (not (mark_stitch_pending))) (at end (mark_stitch_done)))
  )

  (:durative-action qc_inspect
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (qc_inspect_pending)) (at start (purchase_rope_done)) (at start (source_denim_done)) (at start (construct_core_done)) (at start (mark_stitch_done)))
    :effect (and (at start (not (qc_inspect_pending))) (at end (qc_inspect_done)))
  )

  (:durative-action order_boxes
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (order_boxes_pending))
    :effect (and (at start (not (order_boxes_pending))) (at end (order_boxes_done)))
  )
)
