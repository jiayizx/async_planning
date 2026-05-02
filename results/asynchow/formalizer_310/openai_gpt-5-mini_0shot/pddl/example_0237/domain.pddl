(define (domain cook_sea_urchin)
  (:requirements :durative-actions)
  (:predicates
    (locate_pending)
    (locate_done)
    (cut_pending)
    (cut_done)
    (scoop_pending)
    (scoop_done)
    (preheat_pending)
    (preheat_done)
    (add_pending)
    (add_done)
  )

  (:durative-action do_locate
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (locate_pending))
    :effect (and (at start (not (locate_pending))) (at end (locate_done)))
  )

  (:durative-action do_cut
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (cut_pending)) (at start (locate_done)))
    :effect (and (at start (not (cut_pending))) (at end (cut_done)))
  )

  (:durative-action do_scoop
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (scoop_pending)) (at start (cut_done)))
    :effect (and (at start (not (scoop_pending))) (at end (scoop_done)))
  )

  (:durative-action do_preheat
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action do_add
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (add_pending)) (at start (scoop_done)) (at start (preheat_done)))
    :effect (and (at start (not (add_pending))) (at end (add_done)))
  )
)
