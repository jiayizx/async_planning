(define (domain youthful-imagination-comic)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (layouts_sketched)
    (aesthetics_researched)
    (dialogue_drafted)
    (strip_inked_and_colored)
    (theme_brainstormed)
    (monster_designed)
    (lettering_completed)
    (composition_reviewed)
    (protagonist_profile_created)
    (materials_purchased)
    (palette_selected)
    (monster_textures_refined)
    (digital_workspace_ready)
    (photo_albums_reviewed)
    (physical_workspace_ready)
  )

  (:durative-action sketch_layouts
    :parameters (?s - step1_type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (protagonist_profile_created))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (layouts_sketched))
    )
  )

  (:durative-action research_aesthetics
    :parameters (?s - step2_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (photo_albums_reviewed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (aesthetics_researched))
    )
  )

  (:durative-action draft_dialogue
    :parameters (?s - step3_type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_brainstormed))
      (at start (photo_albums_reviewed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dialogue_drafted))
    )
  )

  (:durative-action apply_ink_and_colors
    :parameters (?s - step4_type)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (layouts_sketched))
      (at start (materials_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (strip_inked_and_colored))
    )
  )

  (:durative-action brainstorm_theme
    :parameters (?s - step5_type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (theme_brainstormed))
    )
  )

  (:durative-action design_monster
    :parameters (?s - step6_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_brainstormed))
      (at start (digital_workspace_ready))
      (at start (physical_workspace_ready))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (monster_designed))
    )
  )

  (:durative-action letter_speech_and_effects
    :parameters (?s - step7_type)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (dialogue_drafted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lettering_completed))
    )
  )

  (:durative-action review_composition
    :parameters (?s - step8_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (monster_designed))
      (at start (monster_textures_refined))
      (at start (physical_workspace_ready))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (composition_reviewed))
    )
  )

  (:durative-action create_protagonist_profile
    :parameters (?s - step9_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (aesthetics_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (protagonist_profile_created))
    )
  )

  (:durative-action purchase_materials
    :parameters (?s - step10_type)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (materials_purchased))
    )
  )

  (:durative-action select_palette
    :parameters (?s - step11_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (digital_workspace_ready))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (palette_selected))
    )
  )

  (:durative-action refine_monster_textures
    :parameters (?s - step12_type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (monster_designed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (monster_textures_refined))
    )
  )

  (:durative-action set_up_digital_workspace
    :parameters (?s - step13_type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (digital_workspace_ready))
    )
  )

  (:durative-action review_photo_albums
    :parameters (?s - step14_type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (photo_albums_reviewed))
    )
  )

  (:durative-action prepare_physical_workspace
    :parameters (?s - step15_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_workspace_ready))
    )
  )
)