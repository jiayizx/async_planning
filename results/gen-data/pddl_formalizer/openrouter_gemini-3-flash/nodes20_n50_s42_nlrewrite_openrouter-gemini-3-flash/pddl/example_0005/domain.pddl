(define (domain reflexology_chart_reading)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (map_purchased)
    (thumb_head_studied)
    (digestive_memorized)
    (gallbladder_located)
    (hands_washed)
    (distinction_identified)
    (chart_laid_flat)
    (lung_zones_referenced)
    (color_coding_learned)
    (oil_applied)
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
  )

  (:durative-action purchase_map
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (map_purchased)))
  )

  (:durative-action wash_hands
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_washed)))
  )

  (:durative-action clear_workspace
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared)))
  )

  (:durative-action lay_chart_flat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (map_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chart_laid_flat)))
  )

  (:durative-action locate_solar_plexus
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (hands_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (solar_plexus_located)))
  )

  (:durative-action apply_oil
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_applied)))
  )

  (:durative-action set_timer
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (timer_set)))
  )

  (:durative-action position_hands
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_positioned)))
  )

  (:durative-action read_legend
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (solar_plexus_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (legend_read)))
  )

  (:durative-action identify_distinction
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (hands_positioned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (distinction_identified)))
  )

  (:durative-action learn_color_coding
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (legend_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (color_coding_learned)))
  )

  (:durative-action compare_finger_zones
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (distinction_identified)) (at start (chart_laid_flat)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (finger_zones_compared)))
  )

  (:durative-action study_thumb_head
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (distinction_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thumb_head_studied)))
  )

  (:durative-action trace_spinal_line
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (color_coding_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spinal_line_traced)))
  )

  (:durative-action note_endocrine_points
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (thumb_head_studied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (endocrine_points_noted)))
  )

  (:durative-action map_heart_area
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (distinction_identified)) (at start (color_coding_learned)) (at start (spinal_line_traced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heart_area_mapped)))
  )

  (:durative-action cross_reference_lungs
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (chart_laid_flat)) (at start (endocrine_points_noted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lung_zones_referenced)))
  )

  (:durative-action verify_kidney_bladder
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (heart_area_mapped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kidney_bladder_verified)))
  )

  (:durative-action memorize_digestive
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (chart_laid_flat)) (at start (lung_zones_referenced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (digestive_memorized)))
  )

  (:durative-action practice_gallbladder
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (digestive_memorized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gallbladder_located)))
  )
)