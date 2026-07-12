(define (domain round-braid)
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
    (is_step19 ?s - step) (is_step20 ?s - step)
    (wax_applied)
    (cord_ends_trimmed)
    (end_cap_attached)
    (cord_lengths_cut)
    (strands_organized)
    (initial_knot_tightened)
    (middle_section_braided)
    (tension_clips_set)
    (final_section_braided)
    (cord_ends_sealed)
    (main_body_braided)
    (strands_secured_to_disc)
    (colors_selected)
    (strands_conditioned)
    (tension_checked)
    (loose_ends_untangled)
    (core_anchored)
    (cords_soaked)
    (finished_braid_inspected)
    (end_bound_with_wire)
  )

  (:durative-action apply_finishing_wax
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (finished_braid_inspected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wax_applied))))

  (:durative-action trim_excess_cord_ends
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (end_bound_with_wire)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cord_ends_trimmed))))

  (:durative-action attach_decorative_end_cap
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (final_section_braided))
      (at start (tension_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (end_cap_attached))))

  (:durative-action measure_and_cut_cords
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cord_lengths_cut))))

  (:durative-action organize_strands
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (strands_organized))))

  (:durative-action tighten_initial_knot
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (strands_secured_to_disc)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (initial_knot_tightened))))

  (:durative-action braid_middle_section
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (main_body_braided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (middle_section_braided))))

  (:durative-action set_up_tension_clips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tension_clips_set))))

  (:durative-action braid_final_section
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (core_anchored)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (final_section_braided))))

  (:durative-action seal_cord_ends
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (tension_clips_set))
      (at start (main_body_braided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cord_ends_sealed))))

  (:durative-action braid_main_body
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (final_section_braided))
      (at start (strands_conditioned))
      (at start (cords_soaked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (main_body_braided))))

  (:durative-action secure_strands_to_disc
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (strands_secured_to_disc))))

  (:durative-action select_material_colors
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (colors_selected))))

  (:durative-action condition_strands_with_oil
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (strands_conditioned))))

  (:durative-action check_tension_consistency
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (strands_organized))
      (at start (middle_section_braided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tension_checked))))

  (:durative-action untangle_loose_ends
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (colors_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (loose_ends_untangled))))

  (:durative-action anchor_core_to_hook
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s))
      (at start (loose_ends_untangled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (core_anchored))))

  (:durative-action soak_cords
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (cord_lengths_cut)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cords_soaked))))

  (:durative-action inspect_finished_braid
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finished_braid_inspected))))

  (:durative-action bind_end_with_wire
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s))
      (at start (strands_organized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (end_bound_with_wire))))
)