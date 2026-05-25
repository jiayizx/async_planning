(define (domain flower_drawing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pencils_bought)
    (tutorial_watched)
    (research_done)
    (sketchbook_bought)
    (portfolio_compiled)
    (circular_strokes_practiced)
    (outlines_sketched)
    (ink_applied)
    (masterclass_joined)
    (ellipses_mastered)
    (gradients_blended)
    (flowers_gathered)
    (flowers_arranged)
    (watercolor_added)
    (pencil_erased)
    (textures_drawn)
    (fixative_sprayed)
    (anatomy_studied)
    (workspace_cleaned)
    (tools_sharpened)
  )

  (:durative-action buy_pencils
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pencils_bought)))
  )

  (:durative-action watch_tutorial
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (masterclass_joined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tutorial_watched)))
  )

  (:durative-action research_wildflowers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action purchase_sketchbook
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sketchbook_bought)))
  )

  (:durative-action compile_portfolio
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (watercolor_added)) (at start (textures_drawn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (portfolio_compiled)))
  )

  (:durative-action practice_strokes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (circular_strokes_practiced)))
  )

  (:durative-action sketch_outlines
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (pencils_bought)) (at start (research_done)) (at start (sketchbook_bought)) (at start (tools_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outlines_sketched)))
  )

  (:durative-action apply_ink
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (flowers_arranged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ink_applied)))
  )

  (:durative-action join_masterclass
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (masterclass_joined)))
  )

  (:durative-action master_ellipses
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (circular_strokes_practiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ellipses_mastered)))
  )

  (:durative-action blend_gradients
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (tutorial_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gradients_blended)))
  )

  (:durative-action gather_flowers
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flowers_gathered)))
  )

  (:durative-action arrange_flowers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (flowers_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flowers_arranged)))
  )

  (:durative-action add_watercolor
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (pencil_erased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watercolor_added)))
  )

  (:durative-action erase_pencil
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (ink_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pencil_erased)))
  )

  (:durative-action draw_textures
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (anatomy_studied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (textures_drawn)))
  )

  (:durative-action spray_fixative
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fixative_sprayed)))
  )

  (:durative-action study_anatomy
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (anatomy_studied)))
  )

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned)))
  )

  (:durative-action sharpen_tools
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_sharpened)))
  )
)