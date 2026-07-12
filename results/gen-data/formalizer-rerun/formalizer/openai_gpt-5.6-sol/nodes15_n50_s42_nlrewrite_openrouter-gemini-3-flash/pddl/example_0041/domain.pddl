(define (domain house-painting)
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
    (supplies_purchased)
    (heavy_furniture_moved)
    (tape_removed_and_brushes_cleaned)
    (first_coat_applied)
    (rough_patches_sanded)
    (drop_cloths_laid)
    (primer_applied)
    (paint_palette_selected)
    (holes_patched)
    (paint_cans_purchased)
    (primer_dried)
    (walls_measured)
    (small_items_cleared)
    (second_coat_applied)
    (trim_clear_coated)
  )

  (:durative-action purchase_supplies
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (walls_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (supplies_purchased))))

  (:durative-action move_heavy_furniture
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (small_items_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (heavy_furniture_moved))))

  (:durative-action remove_tape_and_clean_brushes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (trim_clear_coated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tape_removed_and_brushes_cleaned))))

  (:durative-action apply_first_coat
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (supplies_purchased))
      (at start (drop_cloths_laid))
      (at start (paint_cans_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (first_coat_applied))))

  (:durative-action sand_rough_patches
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (holes_patched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rough_patches_sanded))))

  (:durative-action lay_drop_cloths
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drop_cloths_laid))))

  (:durative-action apply_primer
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (rough_patches_sanded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (primer_applied))))

  (:durative-action select_paint_palette
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paint_palette_selected))))

  (:durative-action patch_holes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (supplies_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (holes_patched))))

  (:durative-action buy_paint_cans
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (paint_palette_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paint_cans_purchased))))

  (:durative-action let_primer_dry
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (primer_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (primer_dried))))

  (:durative-action measure_walls
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (small_items_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (walls_measured))))

  (:durative-action clear_small_items
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (small_items_cleared))))

  (:durative-action apply_second_coat
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (first_coat_applied))
      (at start (drop_cloths_laid)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (second_coat_applied))))

  (:durative-action apply_trim_clear_coat
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (drop_cloths_laid)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trim_clear_coated))))
)