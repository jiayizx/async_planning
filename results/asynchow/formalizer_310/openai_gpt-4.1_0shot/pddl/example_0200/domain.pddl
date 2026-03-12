(define (domain gouda-cheese)
  (:requirements :durative-actions)
  (:predicates
    (preheat_pending)
    (preheat_done)
    (boil_pending)
    (boil_done)
    (sauce_pending)
    (sauce_done)
    (add_gouda_pending)
    (add_gouda_done)
    (bake_pending)
    (bake_done)
  )

  (:durative-action do_preheat
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action do_boil
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (boil_pending))
    :effect (and (at start (not (boil_pending))) (at end (boil_done)))
  )

  (:durative-action do_sauce
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (sauce_pending))
    :effect (and (at start (not (sauce_pending))) (at end (sauce_done)))
  )

  (:durative-action do_add_gouda
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (add_gouda_pending)) (at start (sauce_done)))
    :effect (and (at start (not (add_gouda_pending))) (at end (add_gouda_done)))
  )

  (:durative-action do_bake
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (bake_pending)) (at start (preheat_done)) (at start (boil_done)) (at start (add_gouda_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )
)
