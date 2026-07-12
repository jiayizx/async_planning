(define (domain soothing-color-scheme)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (primary_swatches_selected)
    (sample_pots_purchased)
    (cool_hues_researched)
    (paint_samples_applied)
    (inspiration_images_collected)
    (digital_mood_board_created)
    (designer_consulted)
    (lighting_observation_completed)
    (images_catalogs_compared)
    (official_palette_finalized)
    (pigment_budget_reviewed)
    (accent_colors_drafted)
    (minimalist_galleries_browsed)
    (furniture_colors_inventoried)
    (vibe_check_completed)
  )

  (:durative-action narrow_primary_swatches
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (pigment_budget_reviewed))
      (at start (minimalist_galleries_browsed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (primary_swatches_selected)))
  )

  (:durative-action purchase_sample_pots
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (images_catalogs_compared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sample_pots_purchased)))
  )

  (:durative-action research_cool_hues
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (minimalist_galleries_browsed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cool_hues_researched)))
  )

  (:durative-action apply_paint_samples
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (sample_pots_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paint_samples_applied)))
  )

  (:durative-action collect_inspiration_images
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (inspiration_images_collected)))
  )

  (:durative-action create_digital_mood_board
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (cool_hues_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (digital_mood_board_created)))
  )

  (:durative-action consult_interior_designer
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (accent_colors_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (designer_consulted)))
  )

  (:durative-action observe_swatches_lighting
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (primary_swatches_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lighting_observation_completed)))
  )

  (:durative-action compare_images_catalogs
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (inspiration_images_collected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (images_catalogs_compared)))
  )

  (:durative-action finalize_official_palette
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (furniture_colors_inventoried))
      (at start (vibe_check_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (official_palette_finalized)))
  )

  (:durative-action review_pigment_budget
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (sample_pots_purchased))
      (at start (inspiration_images_collected))
      (at start (furniture_colors_inventoried)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pigment_budget_reviewed)))
  )

  (:durative-action draft_accent_colors
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (accent_colors_drafted)))
  )

  (:durative-action browse_minimalist_galleries
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (minimalist_galleries_browsed)))
  )

  (:durative-action inventory_furniture_colors
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (furniture_colors_inventoried)))
  )

  (:durative-action conduct_vibe_check
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (lighting_observation_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vibe_check_completed)))
  )
)