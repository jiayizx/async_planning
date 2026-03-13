(define (domain wake-up-dream)
  (:requirements :durative-actions)
  (:predicates
    (try_realize_pending)
    (try_realize_done)
    (wear_watch_pending)
    (wear_watch_done)
    (try_mild_pending)
    (try_mild_done)
    (prevent_uncomfortable_pending)
    (prevent_uncomfortable_done)
    (try_light_stimulus_pending)
    (try_light_stimulus_done)
    (combine_techniques_pending)
    (combine_techniques_done)
  )

  (:durative-action try_realize
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (try_realize_pending))
    :effect (and (at start (not (try_realize_pending))) (at end (try_realize_done)))
  )

  (:durative-action wear_watch
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (wear_watch_pending))
    :effect (and (at start (not (wear_watch_pending))) (at end (wear_watch_done)))
  )

  (:durative-action try_mild
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (try_mild_pending))
    :effect (and (at start (not (try_mild_pending))) (at end (try_mild_done)))
  )

  (:durative-action prevent_uncomfortable
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (prevent_uncomfortable_pending))
    :effect (and (at start (not (prevent_uncomfortable_pending))) (at end (prevent_uncomfortable_done)))
  )

  (:durative-action try_light_stimulus
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (try_light_stimulus_pending))
    :effect (and (at start (not (try_light_stimulus_pending))) (at end (try_light_stimulus_done)))
  )

  (:durative-action combine_techniques
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (combine_techniques_pending)) (at start (try_mild_done)) (at start (try_light_stimulus_done)))
    :effect (and (at start (not (combine_techniques_pending))) (at end (combine_techniques_done)))
  )
)
