(define (domain buy_dog_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
  )
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (step_done step1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (step_done step1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (step_done step2)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (step_done step4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step_done step5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)))
  )
)
