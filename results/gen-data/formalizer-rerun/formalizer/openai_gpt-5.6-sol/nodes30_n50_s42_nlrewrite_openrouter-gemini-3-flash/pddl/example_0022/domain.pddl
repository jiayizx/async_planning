(define (domain necklace-belt)
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
    (primary_clasp_attached) (belt_surface_polished) (waist_measured)
    (charms_selected) (jump_rings_sorted) (charms_threaded)
    (sealant_applied) (clasp_tension_tested) (beads_cleaned)
    (wire_purchased) (extension_length_calculated) (belt_inspected)
    (end_beads_crimped) (fit_adjusted) (design_sketched)
    (necklace_disinfected) (extension_chain_cut) (links_hammered)
    (tools_gathered) (jump_rings_opened) (knotting_researched)
    (weak_links_reinforced) (symmetry_checked) (workspace_organized)
    (knot_practiced) (color_palette_determined) (extension_connected)
    (secondary_lock_secured) (center_marked) (original_clasp_removed)
  )

  (:durative-action attach_primary_clasp
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (beads_cleaned)) (at start (wire_purchased)) (at start (design_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (primary_clasp_attached))))

  (:durative-action polish_belt_surface
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (fit_adjusted)) (at start (symmetry_checked)) (at start (center_marked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (belt_surface_polished))))

  (:durative-action measure_waist
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_measured))))

  (:durative-action select_charms
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (design_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (charms_selected))))

  (:durative-action sort_jump_rings
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jump_rings_sorted))))

  (:durative-action thread_charms
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (charms_selected)) (at start (original_clasp_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (charms_threaded))))

  (:durative-action apply_sealant
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (original_clasp_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sealant_applied))))

  (:durative-action test_clasp_tension
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (primary_clasp_attached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clasp_tension_tested))))

  (:durative-action clean_beads
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (charms_selected)) (at start (jump_rings_sorted)) (at start (necklace_disinfected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beads_cleaned))))

  (:durative-action purchase_wire
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wire_purchased))))

  (:durative-action calculate_extension_length
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (waist_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (extension_length_calculated))))

  (:durative-action inspect_belt
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (links_hammered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (belt_inspected))))

  (:durative-action crimp_end_beads
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (charms_threaded)) (at start (original_clasp_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (end_beads_crimped))))

  (:durative-action adjust_final_fit
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (clasp_tension_tested)) (at start (jump_rings_opened)) (at start (secondary_lock_secured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fit_adjusted))))

  (:durative-action sketch_design
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (color_palette_determined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (design_sketched))))

  (:durative-action disinfect_necklace
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (necklace_disinfected))))

  (:durative-action cut_extension_chain
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (wire_purchased)) (at start (extension_length_calculated)) (at start (weak_links_reinforced)) (at start (center_marked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (extension_chain_cut))))

  (:durative-action hammer_links
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (extension_chain_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (links_hammered))))

  (:durative-action gather_tools
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_gathered))))

  (:durative-action open_jump_rings
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (jump_rings_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jump_rings_opened))))

  (:durative-action research_knotting
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knotting_researched))))

  (:durative-action reinforce_weak_links
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (tools_gathered)) (at start (original_clasp_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weak_links_reinforced))))

  (:durative-action check_symmetry
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (charms_threaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (symmetry_checked))))

  (:durative-action organize_workspace
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_organized))))

  (:durative-action practice_knot
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (knotting_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knot_practiced))))

  (:durative-action determine_color_palette
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (waist_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (color_palette_determined))))

  (:durative-action connect_extension_chain
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (center_marked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (extension_connected))))

  (:durative-action secure_secondary_lock
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (knot_practiced)) (at start (extension_connected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (secondary_lock_secured))))

  (:durative-action mark_center
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (center_marked))))

  (:durative-action remove_original_clasp
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (jump_rings_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (original_clasp_removed))))
)