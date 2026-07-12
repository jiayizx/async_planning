(define (domain draw-flowers)
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
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (pencils_bought)
    (tutorial_watched)
    (wildflowers_researched)
    (sketchbook_purchased)
    (portfolio_compiled)
    (circular_strokes_practiced)
    (garden_outlines_sketched)
    (fine_liner_applied)
    (masterclass_joined)
    (ellipses_mastered)
    (gradients_practiced)
    (flowers_gathered)
    (flowers_arranged)
    (watercolor_added)
    (pencil_marks_erased)
    (botanical_textures_drawn)
    (fixative_sprayed)
    (flower_anatomy_studied)
    (workspace_cleaned)
    (tools_sharpened)
  )

  (:durative-action buy_graphite_pencils
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pencils_bought)))
  )

  (:durative-action watch_shading_tutorial
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (masterclass_joined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tutorial_watched)))
  )

  (:durative-action research_wildflowers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wildflowers_researched)))
  )

  (:durative-action purchase_sketchbook
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sketchbook_purchased)))
  )

  (:durative-action compile_portfolio
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (watercolor_added)) (at start (botanical_textures_drawn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (portfolio_compiled)))
  )

  (:durative-action practice_circular_strokes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (circular_strokes_practiced)))
  )

  (:durative-action sketch_garden_outlines
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (pencils_bought)) (at start (wildflowers_researched)) (at start (sketchbook_purchased)) (at start (tools_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garden_outlines_sketched)))
  )

  (:durative-action apply_fine_liner
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (flowers_arranged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fine_liner_applied)))
  )

  (:durative-action join_masterclass
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (masterclass_joined)))
  )

  (:durative-action master_ellipses
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (circular_strokes_practiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ellipses_mastered)))
  )

  (:durative-action practice_gradients
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (tutorial_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gradients_practiced)))
  )

  (:durative-action gather_flowers
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flowers_gathered)))
  )

  (:durative-action arrange_flowers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (flowers_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flowers_arranged)))
  )

  (:durative-action add_watercolor_washes
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (pencil_marks_erased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watercolor_added)))
  )

  (:durative-action erase_pencil_marks
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (fine_liner_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pencil_marks_erased)))
  )

  (:durative-action draw_botanical_textures
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (flower_anatomy_studied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (botanical_textures_drawn)))
  )

  (:durative-action spray_fixative
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixative_sprayed)))
  )

  (:durative-action study_flower_anatomy
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (wildflowers_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flower_anatomy_studied)))
  )

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned)))
  )

  (:durative-action sharpen_tools
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_sharpened)))
  )
)