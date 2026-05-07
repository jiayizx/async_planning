(define (domain work_advancement)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decided)
    (worked_hard)
    (monitored_time)
    (productivity_shown)
    (vacation_taken)
  )

  (:durative-action decide_to_get_ahead
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decided)))
  )

  (:durative-action work_extra_hours
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (worked_hard)))
  )

  (:durative-action monitor_time
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (monitored_time)))
  )

  (:durative-action show_productivity
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (worked_hard)) (at start (monitored_time)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (productivity_shown)))
  )

  (:durative-action take_vacation
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (productivity_shown)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vacation_taken)))
  )
)