(define (domain recipe_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step1_done ?s - step)
    (step2_done ?s - step)
    (step3_done ?s - step)
    (step4_done ?s - step)
    (step5_done ?s - step)
    (step6_done ?s - step)
    (step7_done ?s - step)
    (can_start_step2)
    (can_start_step3)
    (can_start_step4)
    (can_start_step5_6)
    (can_start_step7_part_a)
    (can_start_step7_part_b)
  )

  (:durative-action step1_decide
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step1_done ?s)) (at end (can_start_step2)))
  )

  (:durative-action step2_sit
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (can_start_step2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step2_done ?s)) (at end (can_start_step3)))
  )

  (:durative-action step3_turn_on
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (can_start_step3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step3_done ?s)) (at end (can_start_step4)))
  )

  (:durative-action step4_navigate
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (can_start_step4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step4_done ?s)) (at end (can_start_step5_6)))
  )

  (:durative-action step5_search
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (can_start_step5_6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step5_done ?s)) (at end (can_start_step7_part_a)))
  )

  (:durative-action step6_decide_recipe
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (can_start_step5_6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step6_done ?s)) (at end (can_start_step7_part_b)))
  )

  (:durative-action step7_print
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (can_start_step7_part_a)) (at start (can_start_step7_part_b)))
    :effect (and (at start (not (step_pending ?s))) (at end (step7_done ?s)))
  )
)