(define (domain braided_double_buns)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (ponytails_done)
    (braids_done)
    (right_bun_done)
    (bun_secured)
    (left_bun_done)
    (finished)
  )

  (:durative-action pull_hair_up
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ponytails_done)))
  )

  (:durative-action twist_braids
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (ponytails_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (braids_done)))
  )

  (:durative-action wrap_right_bun
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (braids_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_bun_done)))
  )

  (:durative-action wrap_left_bun
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (braids_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_bun_done)))
  )

  (:durative-action secure_bun
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (right_bun_done)) (at start (left_bun_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bun_secured)))
  )

  (:durative-action finish_off
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (bun_secured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (finished)))
  )
)