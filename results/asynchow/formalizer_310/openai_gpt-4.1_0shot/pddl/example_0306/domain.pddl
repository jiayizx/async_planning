(define (domain chevron-bracelet)
  (:requirements :durative-actions)
  (:predicates
    (prepare_floss_pending)
    (prepare_floss_done)
    (secure_strands_pending)
    (secure_strands_done)
    (arrange_strands_pending)
    (arrange_strands_done)
    (begin_right_knots_pending)
    (begin_right_knots_done)
    (begin_left_knots_pending)
    (begin_left_knots_done)
    (complete_other_half_pending)
    (complete_other_half_done)
    (tie_middle_knots_pending)
    (tie_middle_knots_done)
    (continue_pattern_pending)
    (continue_pattern_done)
    (finish_bracelet_pending)
    (finish_bracelet_done)
  )

  (:durative-action prepare_floss
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (prepare_floss_pending))
    :effect (and (at start (not (prepare_floss_pending))) (at end (prepare_floss_done)))
  )

  (:durative-action secure_strands
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (secure_strands_pending)) (at start (arrange_strands_done)))
    :effect (and (at start (not (secure_strands_pending))) (at end (secure_strands_done)))
  )

  (:durative-action arrange_strands
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (arrange_strands_pending)) (at start (prepare_floss_done)))
    :effect (and (at start (not (arrange_strands_pending))) (at end (arrange_strands_done)))
  )

  (:durative-action begin_right_knots
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (begin_right_knots_pending)) (at start (secure_strands_done)))
    :effect (and (at start (not (begin_right_knots_pending))) (at end (begin_right_knots_done)))
  )

  (:durative-action begin_left_knots
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (begin_left_knots_pending)) (at start (secure_strands_done)))
    :effect (and (at start (not (begin_left_knots_pending))) (at end (begin_left_knots_done)))
  )

  (:durative-action complete_other_half
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (complete_other_half_pending)) (at start (tie_middle_knots_done)))
    :effect (and (at start (not (complete_other_half_pending))) (at end (complete_other_half_done)))
  )

  (:durative-action tie_middle_knots
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (tie_middle_knots_pending)) (at start (begin_right_knots_done)) (at start (begin_left_knots_done)))
    :effect (and (at start (not (tie_middle_knots_pending))) (at end (tie_middle_knots_done)))
  )

  (:durative-action continue_pattern
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (continue_pattern_pending)) (at start (complete_other_half_done)))
    :effect (and (at start (not (continue_pattern_pending))) (at end (continue_pattern_done)))
  )

  (:durative-action finish_bracelet
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (finish_bracelet_pending)) (at start (continue_pattern_done)))
    :effect (and (at start (not (finish_bracelet_pending))) (at end (finish_bracelet_done)))
  )
)
