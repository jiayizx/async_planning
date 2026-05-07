(define (domain service_brakes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (wheels_removed)
    (drum_removed)
    (shoes_inspected)
    (springs_inspected)
    (cylinder_changed)
  )

  (:durative-action remove_wheels
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wheels_removed)))
  )

  (:durative-action remove_drum
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (wheels_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drum_removed)))
  )

  (:durative-action inspect_shoes
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (drum_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_inspected)))
  )

  (:durative-action inspect_springs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (drum_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (springs_inspected)))
  )

  (:durative-action change_cylinder
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (drum_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cylinder_changed)))
  )
)