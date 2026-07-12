(define (domain dog-toy-production)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (denim_cut) (seams_stitched) (stuffing_purchased)
    (squeaker_attached) (casing_inserted) (quality_inspected)
    (exterior_washed) (knot_structure_designed) (plastic_inserts_sourced)
    (support_ropes_braided) (suppliers_researched) (surfaces_sterilized)
    (packaging_inserts_created) (logo_embroidered) (labels_printed)
    (triple_knots_tied) (theme_selected) (manual_drafted)
    (toys_packed) (knots_woven) (machine_calibrated)
    (rope_strength_tested) (materials_ordered) (denim_washed)
    (toy_assembled) (prototype_finalized) (needles_oiled)
    (shell_pattern_sketched) (workspace_sanitized) (squeaker_tested)
  )

  (:durative-action cut_denim
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (prototype_finalized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (denim_cut))))

  (:durative-action stitch_seams
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (logo_embroidered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seams_stitched))))

  (:durative-action purchase_stuffing
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stuffing_purchased))))

  (:durative-action attach_squeaker
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (casing_inserted)) (at start (squeaker_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (squeaker_attached))))

  (:durative-action insert_casing
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (plastic_inserts_sourced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (casing_inserted))))

  (:durative-action inspect_quality
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (stuffing_purchased)) (at start (toy_assembled)) (at start (prototype_finalized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (quality_inspected))))

  (:durative-action hand_wash_exterior
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (stuffing_purchased)) (at start (casing_inserted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exterior_washed))))

  (:durative-action design_knot_structure
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (materials_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knot_structure_designed))))

  (:durative-action source_plastic_inserts
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plastic_inserts_sourced))))

  (:durative-action braid_support_ropes
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (rope_strength_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (support_ropes_braided))))

  (:durative-action research_suppliers
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (suppliers_researched))))

  (:durative-action sterilize_surfaces
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (workspace_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surfaces_sterilized))))

  (:durative-action create_packaging_inserts
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packaging_inserts_created))))

  (:durative-action embroider_logo
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (shell_pattern_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (logo_embroidered))))

  (:durative-action print_labels
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (labels_printed))))

  (:durative-action tie_triple_knots
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (denim_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (triple_knots_tied))))

  (:durative-action select_theme
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (theme_selected))))

  (:durative-action draft_manual
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (manual_drafted))))

  (:durative-action pack_toys
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (support_ropes_braided)) (at start (manual_drafted)) (at start (materials_ordered)) (at start (workspace_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toys_packed))))

  (:durative-action weave_knots
    :parameters (?s - step)
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (triple_knots_tied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knots_woven))))

  (:durative-action calibrate_machine
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (machine_calibrated))))

  (:durative-action test_rope_strength
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (knot_structure_designed)) (at start (materials_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rope_strength_tested))))

  (:durative-action order_materials
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (theme_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (materials_ordered))))

  (:durative-action wash_denim
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (denim_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (denim_washed))))

  (:durative-action assemble_toy
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (stuffing_purchased)) (at start (surfaces_sterilized)) (at start (packaging_inserts_created)) (at start (labels_printed)) (at start (knots_woven)) (at start (materials_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toy_assembled))))

  (:durative-action finalize_prototype
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (suppliers_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prototype_finalized))))

  (:durative-action oil_needles
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (surfaces_sterilized)) (at start (machine_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (needles_oiled))))

  (:durative-action sketch_shell_pattern
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (theme_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shell_pattern_sketched))))

  (:durative-action sanitize_workspace
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_sanitized))))

  (:durative-action test_squeaker
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (squeaker_tested))))
)