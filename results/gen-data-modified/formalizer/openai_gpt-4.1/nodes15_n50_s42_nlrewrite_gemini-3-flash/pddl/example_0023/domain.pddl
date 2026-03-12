(define (domain comic_strip_imagination)
  (:requirements :durative-actions)
  (:predicates
    (sketch_poses_pending)
    (sketch_poses_done)
    (research_nostalgia_pending)
    (research_nostalgia_done)
    (draft_dialogue_pending)
    (draft_dialogue_done)
    (finalize_ink_pending)
    (finalize_ink_done)
    (brainstorm_theme_pending)
    (brainstorm_theme_done)
    (design_backgrounds_pending)
    (design_backgrounds_done)
    (peer_review_pending)
    (peer_review_done)
    (apply_colors_pending)
    (apply_colors_done)
    (storyboard_pending)
    (storyboard_done)
    (select_palette_pending)
    (select_palette_done)
    (promo_teaser_pending)
    (promo_teaser_done)
    (draw_transitions_pending)
    (draw_transitions_done)
    (purchase_supplies_pending)
    (purchase_supplies_done)
    (gather_photos_pending)
    (gather_photos_done)
    (calibrate_tablet_pending)
    (calibrate_tablet_done)
  )

  (:durative-action do_sketch_poses
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (sketch_poses_pending)) (at start (storyboard_done)))
    :effect (and (at start (not (sketch_poses_pending))) (at end (sketch_poses_done)))
  )

  (:durative-action do_research_nostalgia
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (research_nostalgia_pending)) (at start (gather_photos_done)))
    :effect (and (at start (not (research_nostalgia_pending))) (at end (research_nostalgia_done)))
  )

  (:durative-action do_draft_dialogue
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (draft_dialogue_pending)) (at start (brainstorm_theme_done)) (at start (gather_photos_done)))
    :effect (and (at start (not (draft_dialogue_pending))) (at end (draft_dialogue_done)))
  )

  (:durative-action do_finalize_ink
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (finalize_ink_pending)) (at start (sketch_poses_done)) (at start (select_palette_done)))
    :effect (and (at start (not (finalize_ink_pending))) (at end (finalize_ink_done)))
  )

  (:durative-action do_brainstorm_theme
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (brainstorm_theme_pending))
    :effect (and (at start (not (brainstorm_theme_pending))) (at end (brainstorm_theme_done)))
  )

  (:durative-action do_design_backgrounds
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (design_backgrounds_pending)) (at start (brainstorm_theme_done)) (at start (purchase_supplies_done)) (at start (calibrate_tablet_done)))
    :effect (and (at start (not (design_backgrounds_pending))) (at end (design_backgrounds_done)))
  )

  (:durative-action do_peer_review
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (peer_review_pending)) (at start (draft_dialogue_done)))
    :effect (and (at start (not (peer_review_pending))) (at end (peer_review_done)))
  )

  (:durative-action do_apply_colors
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (apply_colors_pending)) (at start (design_backgrounds_done)) (at start (draw_transitions_done)) (at start (calibrate_tablet_done)))
    :effect (and (at start (not (apply_colors_pending))) (at end (apply_colors_done)))
  )

  (:durative-action do_storyboard
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (storyboard_pending)) (at start (research_nostalgia_done)))
    :effect (and (at start (not (storyboard_pending))) (at end (storyboard_done)))
  )

  (:durative-action do_select_palette
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (select_palette_pending))
    :effect (and (at start (not (select_palette_pending))) (at end (select_palette_done)))
  )

  (:durative-action do_promo_teaser
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (promo_teaser_pending)) (at start (purchase_supplies_done)))
    :effect (and (at start (not (promo_teaser_pending))) (at end (promo_teaser_done)))
  )

  (:durative-action do_draw_transitions
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (draw_transitions_pending)) (at start (design_backgrounds_done)))
    :effect (and (at start (not (draw_transitions_pending))) (at end (draw_transitions_done)))
  )

  (:durative-action do_purchase_supplies
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (purchase_supplies_pending))
    :effect (and (at start (not (purchase_supplies_pending))) (at end (purchase_supplies_done)))
  )

  (:durative-action do_gather_photos
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (gather_photos_pending))
    :effect (and (at start (not (gather_photos_pending))) (at end (gather_photos_done)))
  )

  (:durative-action do_calibrate_tablet
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (calibrate_tablet_pending))
    :effect (and (at start (not (calibrate_tablet_pending))) (at end (calibrate_tablet_done)))
  )
)
