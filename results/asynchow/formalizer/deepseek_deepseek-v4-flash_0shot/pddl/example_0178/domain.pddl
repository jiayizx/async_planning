(define (domain create_prison_tattoo_ink)
  (:requirements :durative-actions)
  (:predicates (powder_pending) (water_pending) (ink_pending) (powder_placed) (water_added) (ink_mixed))
  (:durative-action do_put_powder
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (powder_pending))
    :effect (and (at start (not (powder_pending))) (at end (powder_placed))))
  (:durative-action do_add_water
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (water_pending))
    :effect (and (at start (not (water_pending))) (at end (water_added))))
  (:durative-action do_mix_ink
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (ink_pending)) (at start (powder_placed)) (at start (water_added)))
    :effect (and (at start (not (ink_pending))) (at end (ink_mixed))))
)