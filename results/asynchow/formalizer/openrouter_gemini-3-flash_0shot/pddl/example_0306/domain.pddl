(define (domain chevron_bracelet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (floss_prepared)
    (strands_secured)
    (strands_arranged)
    (right_knots_begun)
    (left_knots_begun)
    (other_half_completed)
    (middle_knots_tied)
    (pattern_continued)
    (bracelet_finished)
  )

  (:durative-action prepare_floss
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (floss_prepared)))
  )

  (:durative-action arrange_strands
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (floss_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strands_arranged)))
  )

  (:durative-action secure_strands
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (strands_arranged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strands_secured)))
  )

  (:durative-action begin_right_knots
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (strands_secured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_knots_begun)))
  )

  (:durative-action begin_left_knots
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (strands_secured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_knots_begun)))
  )

  (:durative-action tie_middle_knots
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (right_knots_begun)) (at start (left_knots_begun)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (middle_knots_tied)))
  )

  (:durative-action complete_other_half
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (middle_knots_tied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (other_half_completed)))
  )

  (:durative-action continue_pattern
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (other_half_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pattern_continued)))
  )

  (:durative-action finish_bracelet
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pattern_continued)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bracelet_finished)))
  )
)