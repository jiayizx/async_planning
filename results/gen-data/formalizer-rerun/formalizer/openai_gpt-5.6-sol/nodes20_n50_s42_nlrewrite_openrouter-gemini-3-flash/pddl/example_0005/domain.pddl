(define (domain hand-reflexology-chart)
  (:requirements :durative-actions :typing)

  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (map_purchased)
    (thumb_head_relation_studied)
    (digestive_points_memorized)
    (gallbladder_point_practiced)
    (hands_cleaned)
    (hand_charts_distinguished)
    (chart_laid_flat)
    (lung_zones_cross_referenced)
    (color_coding_learned)
    (massage_oil_applied)
    (legend_read)
    (finger_zones_compared)
    (spinal_line_traced)
    (solar_plexus_located)
    (timer_set)
    (heart_area_mapped)
    (kidney_bladder_verified)
    (endocrine_points_noted)
    (workspace_cleared)
    (hands_positioned)
    (chart_read)
  )

  (:durative-action purchase_reflexology_map
    :parameters (?s - step1_type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (map_purchased))))

  (:durative-action study_thumb_head_relation
    :parameters (?s - step2_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (hand_charts_distinguished)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (thumb_head_relation_studied))))

  (:durative-action memorize_digestive_points
    :parameters (?s - step3_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (chart_laid_flat))
      (at start (lung_zones_cross_referenced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (digestive_points_memorized))))

  (:durative-action practice_gallbladder_point
    :parameters (?s - step4_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (digestive_points_memorized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gallbladder_point_practiced))
      (at end (chart_read))))

  (:durative-action wash_and_dry_hands
    :parameters (?s - step5_type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hands_cleaned))))

  (:durative-action distinguish_hand_charts
    :parameters (?s - step6_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (hands_positioned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hand_charts_distinguished))))

  (:durative-action lay_chart_flat
    :parameters (?s - step7_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (map_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chart_laid_flat))))

  (:durative-action cross_reference_lung_zones
    :parameters (?s - step8_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (chart_laid_flat))
      (at start (endocrine_points_noted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lung_zones_cross_referenced))))

  (:durative-action learn_color_coding
    :parameters (?s - step9_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (legend_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (color_coding_learned))))

  (:durative-action apply_massage_oil
    :parameters (?s - step10_type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (workspace_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (massage_oil_applied))))

  (:durative-action read_chart_legend
    :parameters (?s - step11_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (solar_plexus_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (legend_read))))

  (:durative-action compare_finger_zones
    :parameters (?s - step12_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (hand_charts_distinguished))
      (at start (chart_laid_flat)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finger_zones_compared))))

  (:durative-action trace_spinal_line
    :parameters (?s - step13_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (color_coding_learned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spinal_line_traced))))

  (:durative-action locate_solar_plexus
    :parameters (?s - step14_type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (hands_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (solar_plexus_located))))

  (:durative-action set_relaxing_timer
    :parameters (?s - step15_type)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (workspace_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (timer_set))))

  (:durative-action map_heart_reflex_area
    :parameters (?s - step16_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (hand_charts_distinguished))
      (at start (color_coding_learned))
      (at start (spinal_line_traced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (heart_area_mapped))))

  (:durative-action verify_kidney_bladder
    :parameters (?s - step17_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (heart_area_mapped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (kidney_bladder_verified))))

  (:durative-action note_endocrine_points
    :parameters (?s - step18_type)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending ?s))
      (at start (thumb_head_relation_studied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (endocrine_points_noted))))

  (:durative-action clear_workspace
    :parameters (?s - step19_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (workspace_cleared))))

  (:durative-action position_hands
    :parameters (?s - step20_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (workspace_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hands_positioned))))
)