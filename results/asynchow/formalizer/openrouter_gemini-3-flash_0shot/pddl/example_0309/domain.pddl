(define (domain palm_reading)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hand_chosen)
    (lines_identified)
    (heart_interpreted)
    (head_examined)
    (life_evaluated)
    (fate_studied)
    (shape_determined)
    (mounts_looked)
    (size_examined)
  )

  (:durative-action choose_hand
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (shape_determined)) (at start (mounts_looked)) (at start (size_examined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hand_chosen)))
  )

  (:durative-action identify_lines
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (hand_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lines_identified)))
  )

  (:durative-action interpret_heart
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (lines_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heart_interpreted)))
  )

  (:durative-action examine_head
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (lines_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (head_examined)))
  )

  (:durative-action evaluate_life
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (lines_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (life_evaluated)))
  )

  (:durative-action study_fate
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (lines_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fate_studied)))
  )

  (:durative-action determine_hand_shape
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shape_determined)))
  )

  (:durative-action look_at_mounts
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mounts_looked)))
  )

  (:durative-action examine_size
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (size_examined)))
  )
)