(define (domain comic_creation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (theme_brainstormed)
    (supplies_purchased)
    (tablet_setup)
    (inspiration_found)
    (workspace_cleaned)
    (research_done)
    (profile_created)
    (dialogue_drafted)
    (monster_designed)
    (palette_selected)
    (layouts_sketched)
    (monster_refined)
    (lettering_done)
    (composition_reviewed)
    (strip_finalized)
  )

  (:durative-action brainstorm_theme
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (theme_brainstormed)))
  )

  (:durative-action purchase_supplies
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_purchased)))
  )

  (:durative-action setup_tablet
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tablet_setup)))
  )

  (:durative-action find_inspiration
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inspiration_found)))
  )

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned)))
  )

  (:durative-action research_aesthetics
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (inspiration_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action create_profile
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (profile_created)))
  )

  (:durative-action draft_dialogue
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (theme_brainstormed)) (at start (inspiration_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dialogue_drafted)))
  )

  (:durative-action design_monster
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (theme_brainstormed)) (at start (tablet_setup)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (monster_designed)))
  )

  (:durative-action select_palette
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (tablet_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (palette_selected)))
  )

  (:durative-action sketch_layouts
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (profile_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layouts_sketched)))
  )

  (:durative-action refine_monster
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (monster_designed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (monster_refined)))
  )

  (:durative-action letter_bubbles
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (dialogue_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lettering_done)))
  )

  (:durative-action review_composition
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (monster_designed)) (at start (monster_refined)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (composition_reviewed)))
  )

  (:durative-action finalize_strip
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (layouts_sketched)) (at start (supplies_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strip_finalized)))
  )
)