(define (domain blend-oil-paint)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (eligible_step1 ?s - step)
    (eligible_step2 ?s - step)
    (eligible_step3 ?s - step)
    (eligible_step4 ?s - step)
    (eligible_step5 ?s - step)
    (eligible_step6 ?s - step)
    (eligible_step7 ?s - step)
    (eligible_step8 ?s - step)
    (eligible_step9 ?s - step)
    (eligible_step10 ?s - step)
    (eligible_step11 ?s - step)
    (eligible_step12 ?s - step)
    (eligible_step13 ?s - step)
    (eligible_step14 ?s - step)
    (eligible_step15 ?s - step)
    (eligible_step16 ?s - step)
    (eligible_step17 ?s - step)
    (eligible_step18 ?s - step)
    (eligible_step19 ?s - step)
    (eligible_step20 ?s - step)
    (easel_canvas_ready)
    (base_coat_applied)
    (pigments_selected)
    (titanium_white_dispensed)
    (solvent_ratio_measured)
    (paint_tubes_opened)
    (palette_knives_cleaned)
    (composition_sketched)
    (colors_dispensed)
    (paint_blended)
    (workspace_organized)
    (paint_solvent_mixed)
    (consistency_tested)
    (brushes_arranged)
    (highlights_applied)
    (mineral_spirits_prepared)
    (dark_base_colors_applied)
    (medium_poured)
    (transition_shades_mixed)
    (colors_brushed_on_canvas)
  )

  (:durative-action set_up_easel_and_canvas
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (easel_canvas_ready)))
  )

  (:durative-action apply_linseed_oil_base_coat
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step2 ?s)) (at start (titanium_white_dispensed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (base_coat_applied)))
  )

  (:durative-action select_primary_pigments
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pigments_selected)))
  )

  (:durative-action squeeze_titanium_white
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step4 ?s)) (at start (paint_solvent_mixed)) (at start (transition_shades_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (titanium_white_dispensed)))
  )

  (:durative-action measure_solvent_ratio
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step5 ?s)) (at start (medium_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (solvent_ratio_measured)))
  )

  (:durative-action open_paint_tubes
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step6 ?s)) (at start (pigments_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paint_tubes_opened)))
  )

  (:durative-action clean_palette_knives
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step7 ?s)) (at start (workspace_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (palette_knives_cleaned)))
  )

  (:durative-action sketch_composition
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step8 ?s)) (at start (paint_solvent_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (composition_sketched)))
  )

  (:durative-action dispense_colors
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step9 ?s)) (at start (paint_tubes_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (colors_dispensed)))
  )

  (:durative-action blend_edges_with_fan_brush
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step10 ?s)) (at start (colors_brushed_on_canvas)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paint_blended)))
  )

  (:durative-action organize_workspace_and_lighting
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_organized)))
  )

  (:durative-action mix_paint_with_solvent
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step12 ?s)) (at start (solvent_ratio_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paint_solvent_mixed)))
  )

  (:durative-action test_paint_consistency
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step13 ?s)) (at start (paint_solvent_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consistency_tested)))
  )

  (:durative-action arrange_brushes_by_size
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step14 ?s)) (at start (pigments_selected)) (at start (mineral_spirits_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brushes_arranged)))
  )

  (:durative-action apply_highlights
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step15 ?s)) (at start (dark_base_colors_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (highlights_applied)))
  )

  (:durative-action prepare_mineral_spirits
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mineral_spirits_prepared)))
  )

  (:durative-action lay_down_dark_base_colors
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step17 ?s)) (at start (transition_shades_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dark_base_colors_applied)))
  )

  (:durative-action pour_medium_into_jar
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step18 ?s)) (at start (workspace_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medium_poured)))
  )

  (:durative-action mix_transition_shades
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step19 ?s)) (at start (colors_dispensed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transition_shades_mixed)))
  )

  (:durative-action brush_colors_onto_canvas
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (eligible_step20 ?s)) (at start (easel_canvas_ready)) (at start (base_coat_applied)) (at start (consistency_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (colors_brushed_on_canvas)))
  )
)