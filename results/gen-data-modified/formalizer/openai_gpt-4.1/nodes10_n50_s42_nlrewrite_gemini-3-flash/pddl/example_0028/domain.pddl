(define (domain fingerboard)
  (:requirements :durative-actions)
  (:predicates
    (kickflip_pending)
    (kickflip_done)
    (unbox_pending)
    (unbox_done)
    (griptape_pending)
    (griptape_done)
    (research_pending)
    (research_done)
    (attach_trucks_pending)
    (attach_trucks_done)
    (tighten_bushings_pending)
    (tighten_bushings_done)
    (snap_wheels_pending)
    (snap_wheels_done)
    (watch_tutorial_pending)
    (watch_tutorial_done)
    (practice_pending)
    (practice_done)
    (clean_pending)
    (clean_done)
  )

  (:durative-action do_kickflip
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (kickflip_pending)) (at start (practice_done)))
    :effect (and (at start (not (kickflip_pending))) (at end (kickflip_done)))
  )

  (:durative-action do_unbox
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (unbox_pending))
    :effect (and (at start (not (unbox_pending))) (at end (unbox_done)))
  )

  (:durative-action do_griptape
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (griptape_pending)) (at start (unbox_done)))
    :effect (and (at start (not (griptape_pending))) (at end (griptape_done)))
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_attach_trucks
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (attach_trucks_pending)) (at start (unbox_done)) (at start (griptape_done)))
    :effect (and (at start (not (attach_trucks_pending))) (at end (attach_trucks_done)))
  )

  (:durative-action do_tighten_bushings
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (tighten_bushings_pending)) (at start (attach_trucks_done)))
    :effect (and (at start (not (tighten_bushings_pending))) (at end (tighten_bushings_done)))
  )

  (:durative-action do_snap_wheels
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (snap_wheels_pending)) (at start (attach_trucks_done)))
    :effect (and (at start (not (snap_wheels_pending))) (at end (snap_wheels_done)))
  )

  (:durative-action do_watch_tutorial
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (watch_tutorial_pending)) (at start (research_done)))
    :effect (and (at start (not (watch_tutorial_pending))) (at end (watch_tutorial_done)))
  )

  (:durative-action do_practice
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (practice_pending)) (at start (research_done)) (at start (watch_tutorial_done)))
    :effect (and (at start (not (practice_pending))) (at end (practice_done)))
  )

  (:durative-action do_clean
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (clean_pending)) (at start (unbox_done)))
    :effect (and (at start (not (clean_pending))) (at end (clean_done)))
  )
)
