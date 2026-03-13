(define (domain use_fresh_aloe_vera)
  (:requirements :durative-actions)
  (:predicates
    (remove_top_bottom_edges_pending)
    (remove_top_bottom_edges_done)
    (cut_into_segments_pending)
    (cut_into_segments_done)
    (cut_away_rind_pending)
    (cut_away_rind_done)
    (prepare_gel_base_pending)
    (prepare_gel_base_done)
    (treat_sunburn_pending)
    (treat_sunburn_done)
    (remove_makeup_pending)
    (remove_makeup_done)
    (combine_skin_treatment_pending)
    (combine_skin_treatment_done)
    (clean_mouth_pending)
    (clean_mouth_done)
    (treat_hair_pending)
    (treat_hair_done)
  )

  ;; Step 1: Remove the top, bottom and outer edges of the leaves. (2 min = 120s)
  (:durative-action remove_top_bottom_edges
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (remove_top_bottom_edges_pending)) (at start (cut_into_segments_done)))
    :effect (and (at start (not (remove_top_bottom_edges_pending))) (at end (remove_top_bottom_edges_done)))
  )

  ;; Step 2: Cut your aloe leaf into two-inch segments. (5 min = 300s)
  (:durative-action cut_into_segments
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (cut_into_segments_pending))
    :effect (and (at start (not (cut_into_segments_pending))) (at end (cut_into_segments_done)))
  )

  ;; Step 3: Cut away the rest of the rind. (3 min = 180s)
  (:durative-action cut_away_rind
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (cut_away_rind_pending)) (at start (remove_top_bottom_edges_done)))
    :effect (and (at start (not (cut_away_rind_pending))) (at end (cut_away_rind_done)))
  )

  ;; Step 4: Prepare your gel base. (5 min = 300s)
  (:durative-action prepare_gel_base
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (prepare_gel_base_pending))
    :effect (and (at start (not (prepare_gel_base_pending))) (at end (prepare_gel_base_done)))
  )

  ;; Step 5: Treat a sunburn by applying a liberal coating of aloe. (10 min = 600s)
  (:durative-action treat_sunburn
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (treat_sunburn_pending)) (at start (cut_away_rind_done)) (at start (prepare_gel_base_done)))
    :effect (and (at start (not (treat_sunburn_pending))) (at end (treat_sunburn_done)))
  )

  ;; Step 6: Remove makeup with a mixture of oil and aloe. (5 min = 300s)
  (:durative-action remove_makeup
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (remove_makeup_pending)) (at start (cut_away_rind_done)) (at start (prepare_gel_base_done)))
    :effect (and (at start (not (remove_makeup_pending))) (at end (remove_makeup_done)))
  )

  ;; Step 7: Combine your skin treatment with aloe vera to fight acne. (7 min = 420s)
  (:durative-action combine_skin_treatment
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (combine_skin_treatment_pending)) (at start (cut_away_rind_done)) (at start (prepare_gel_base_done)))
    :effect (and (at start (not (combine_skin_treatment_pending))) (at end (combine_skin_treatment_done)))
  )

  ;; Step 8: Clean up your mouth by adding aloe to your toothpaste. (2 min = 120s)
  (:durative-action clean_mouth
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (clean_mouth_pending)) (at start (cut_away_rind_done)) (at start (prepare_gel_base_done)))
    :effect (and (at start (not (clean_mouth_pending))) (at end (clean_mouth_done)))
  )

  ;; Step 9: Give new life to damaged hair by using aloe vera as a shampoo. (15 min = 900s)
  (:durative-action treat_hair
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (treat_hair_pending)) (at start (cut_away_rind_done)) (at start (prepare_gel_base_done)))
    :effect (and (at start (not (treat_hair_pending))) (at end (treat_hair_done)))
  )
)
