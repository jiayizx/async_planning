(define (domain get_ahead_at_work)
  (:requirements :durative-actions)
  (:predicates
    (decide_pending)
    (decide_done)
    (comein_pending)
    (comein_done)
    (monitor_pending)
    (monitor_done)
    (letboss_pending)
    (letboss_done)
    (vacation_pending)
    (vacation_done)
  )

  (:durative-action do_decide
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (decide_pending))
    :effect (and (at start (not (decide_pending))) (at end (decide_done)))
  )

  (:durative-action do_comein
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (comein_pending)) (at start (decide_done)))
    :effect (and (at start (not (comein_pending))) (at end (comein_done)))
  )

  (:durative-action do_monitor
    :parameters ()
    :duration (= ?duration 864000)
    :condition (and (at start (monitor_pending)) (at start (decide_done)))
    :effect (and (at start (not (monitor_pending))) (at end (monitor_done)))
  )

  (:durative-action do_letboss
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (letboss_pending)) (at start (comein_done)) (at start (monitor_done)))
    :effect (and (at start (not (letboss_pending))) (at end (letboss_done)))
  )

  (:durative-action do_vacation
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (vacation_pending)) (at start (letboss_done)))
    :effect (and (at start (not (vacation_pending))) (at end (vacation_done)))
  )
)
