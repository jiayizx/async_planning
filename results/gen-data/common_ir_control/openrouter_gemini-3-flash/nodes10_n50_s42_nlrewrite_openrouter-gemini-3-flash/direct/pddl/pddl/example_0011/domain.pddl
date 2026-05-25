(define (domain house_coloring)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (color_selected)
    (paint_purchased)
    (drop_cloths_laid)
    (walls_cleaned)
    (furniture_moved)
    (tape_applied)
    (first_coat_done)
    (trim_painted)
    (decor_unpacked)
    (art_hung)
  )

  (:durative-action select_color
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (color_selected)))
  )

  (:durative-action purchase_paint
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (color_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paint_purchased)))
  )

  (:durative-action lay_drop_cloths
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (paint_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drop_cloths_laid)))
  )

  (:durative-action clean_walls
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (drop_cloths_laid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walls_cleaned)))
  )

  (:durative-action move_furniture
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (walls_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (furniture_moved)))
  )

  (:durative-action apply_tape
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (furniture_moved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tape_applied)))
  )

  (:durative-action paint_first_coat
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (paint_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_coat_done)))
  )

  (:durative-action paint_trim
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (tape_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trim_painted)))
  )

  (:durative-action unpack_decor
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decor_unpacked)))
  )

  (:durative-action hang_art
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (decor_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (art_hung)))
  )
)