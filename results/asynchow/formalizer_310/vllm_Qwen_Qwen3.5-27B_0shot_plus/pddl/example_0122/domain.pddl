(define (domain lacrosse_tryouts)
  (:requirements :durative-actions)
  
  (:predicates
    (find_out_pending)
    (find_out_done)
    (practice_pending)
    (practice_done)
    (improve_pending)
    (improve_done)
    (stay_after_pending)
    (stay_after_done)
    (go_to_pending)
    (go_to_done)
  )

  (:durative-action find_out
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (find_out_pending))
    :effect (and (at start (not (find_out_pending))) (at end (find_out_done)))
  )

  (:durative-action practice
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (practice_pending)) (at start (find_out_done)))
    :effect (and (at start (not (practice_pending))) (at end (practice_done)))
  )

  (:durative-action improve
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (improve_pending)) (at start (find_out_done)))
    :effect (and (at start (not (improve_pending))) (at end (improve_done)))
  )

  (:durative-action stay_after
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (stay_after_pending)) (at start (practice_done)) (at start (improve_done)))
    :effect (and (at start (not (stay_after_pending))) (at end (stay_after_done)))
  )

  (:durative-action go_to
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (go_to_pending)) (at start (stay_after_done)))
    :effect (and (at start (not (go_to_pending))) (at end (go_to_done)))
  )
)
