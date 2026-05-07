(define (domain identify-hornet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is-step1 ?s - step)
    (is-step2 ?s - step)
    (is-step3 ?s - step)
    (observed-gray)
    (nest-checked)
    (identified-hornet)
  )

  (:durative-action do-step2
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is-step2 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (nest-checked))
            )
  )

  (:durative-action do-step1
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is-step1 ?s)) (at start (nest-checked)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (observed-gray))
            )
  )

  (:durative-action do-step3
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (is-step3 ?s)) (at start (nest-checked)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (identified-hornet))
            )
  )
)
