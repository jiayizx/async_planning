(define (domain house-coloring)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (paint_primer_purchased)
    (edges_taped)
    (artwork_hung)
    (furniture_protected)
    (first_coat_applied)
    (palette_selected)
    (accent_trim_painted)
    (walls_prepared)
    (drop_cloths_laid)
    (decor_unpacked)
  )

  (:durative-action purchase_paint_and_primer
    :parameters (?s - step1-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (palette_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paint_primer_purchased))
    )
  )

  (:durative-action apply_painters_tape
    :parameters (?s - step2-type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (furniture_protected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (edges_taped))
    )
  )

  (:durative-action hang_framed_artwork
    :parameters (?s - step3-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (decor_unpacked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (artwork_hung))
    )
  )

  (:durative-action move_and_cover_furniture
    :parameters (?s - step4-type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (walls_prepared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (furniture_protected))
    )
  )

  (:durative-action apply_first_coat
    :parameters (?s - step5-type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (paint_primer_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (first_coat_applied))
    )
  )

  (:durative-action select_color_palette
    :parameters (?s - step6-type)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (palette_selected))
    )
  )

  (:durative-action paint_accent_trim
    :parameters (?s - step7-type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (edges_taped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (accent_trim_painted))
    )
  )

  (:durative-action clean_and_sand_walls
    :parameters (?s - step8-type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (drop_cloths_laid))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (walls_prepared))
    )
  )

  (:durative-action lay_drop_cloths
    :parameters (?s - step9-type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (paint_primer_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drop_cloths_laid))
    )
  )

  (:durative-action unpack_wall_decor
    :parameters (?s - step10-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decor_unpacked))
    )
  )
)