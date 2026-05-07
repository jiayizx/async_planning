(define (domain get_ahead_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decide_done)
    (early_done)
    (monitor_done)
    (show_done)
    (vacation_done)
  )

  (:durative-action do_decide
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (decide_done))
    )
  )

  (:durative-action do_early
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (decide_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (early_done))
    )
  )

  (:durative-action do_monitor
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (decide_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (monitor_done))
    )
  )

  (:durative-action do_show
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (early_done)) (at start (monitor_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (show_done))
    )
  )

  (:durative-action do_vacation
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (show_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vacation_done))
    )
  )
)
