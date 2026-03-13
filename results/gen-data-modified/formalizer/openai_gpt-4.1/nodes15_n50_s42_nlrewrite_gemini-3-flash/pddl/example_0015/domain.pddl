(define (domain soothing_color_scheme)
  (:requirements :durative-actions)
  (:predicates
    (purchase_swatches_pending)
    (purchase_swatches_done)
    (compare_shades_pending)
    (compare_shades_done)
    (research_psych_pending)
    (research_psych_done)
    (tape_contenders_pending)
    (tape_contenders_done)
    (browse_magazines_pending)
    (browse_magazines_done)
    (create_moodboard_pending)
    (create_moodboard_done)
    (apply_second_coat_pending)
    (apply_second_coat_done)
    (paint_sample_squares_pending)
    (paint_sample_squares_done)
    (narrow_inspiration_pending)
    (narrow_inspiration_done)
    (finalize_decision_pending)
    (finalize_decision_done)
    (create_shortlist_pending)
    (create_shortlist_done)
    (apply_first_coat_pending)
    (apply_first_coat_done)
    (determine_mood_pending)
    (determine_mood_done)
    (evaluate_lighting_pending)
    (evaluate_lighting_done)
    (observe_evening_pending)
    (observe_evening_done)
  )

  (:durative-action purchase_swatches
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_swatches_pending)) (at start (create_shortlist_done)) (at start (determine_mood_done)))
    :effect (and (at start (not (purchase_swatches_pending))) (at end (purchase_swatches_done)))
  )

  (:durative-action compare_shades
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (compare_shades_pending)) (at start (narrow_inspiration_done)))
    :effect (and (at start (not (compare_shades_pending))) (at end (compare_shades_done)))
  )

  (:durative-action research_psych
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (research_psych_pending)) (at start (determine_mood_done)))
    :effect (and (at start (not (research_psych_pending))) (at end (research_psych_done)))
  )

  (:durative-action tape_contenders
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (tape_contenders_pending)) (at start (compare_shades_done)))
    :effect (and (at start (not (tape_contenders_pending))) (at end (tape_contenders_done)))
  )

  (:durative-action browse_magazines
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (browse_magazines_pending))
    :effect (and (at start (not (browse_magazines_pending))) (at end (browse_magazines_done)))
  )

  (:durative-action create_moodboard
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (create_moodboard_pending)) (at start (research_psych_done)))
    :effect (and (at start (not (create_moodboard_pending))) (at end (create_moodboard_done)))
  )

  (:durative-action apply_second_coat
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (apply_second_coat_pending)) (at start (apply_first_coat_done)))
    :effect (and (at start (not (apply_second_coat_pending))) (at end (apply_second_coat_done)))
  )

  (:durative-action paint_sample_squares
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (paint_sample_squares_pending)) (at start (purchase_swatches_done)))
    :effect (and (at start (not (paint_sample_squares_pending))) (at end (paint_sample_squares_done)))
  )

  (:durative-action narrow_inspiration
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (narrow_inspiration_pending)) (at start (browse_magazines_done)))
    :effect (and (at start (not (narrow_inspiration_pending))) (at end (narrow_inspiration_done)))
  )

  (:durative-action finalize_decision
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (finalize_decision_pending)) (at start (evaluate_lighting_done)) (at start (observe_evening_done)))
    :effect (and (at start (not (finalize_decision_pending))) (at end (finalize_decision_done)))
  )

  (:durative-action create_shortlist
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (create_shortlist_pending)) (at start (compare_shades_done)) (at start (browse_magazines_done)) (at start (evaluate_lighting_done)))
    :effect (and (at start (not (create_shortlist_pending))) (at end (create_shortlist_done)))
  )

  (:durative-action apply_first_coat
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (apply_first_coat_pending))
    :effect (and (at start (not (apply_first_coat_pending))) (at end (apply_first_coat_done)))
  )

  (:durative-action determine_mood
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (determine_mood_pending))
    :effect (and (at start (not (determine_mood_pending))) (at end (determine_mood_done)))
  )

  (:durative-action evaluate_lighting
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (evaluate_lighting_pending))
    :effect (and (at start (not (evaluate_lighting_pending))) (at end (evaluate_lighting_done)))
  )

  (:durative-action observe_evening
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (observe_evening_pending)) (at start (paint_sample_squares_done)))
    :effect (and (at start (not (observe_evening_pending))) (at end (observe_evening_done)))
  )
)
