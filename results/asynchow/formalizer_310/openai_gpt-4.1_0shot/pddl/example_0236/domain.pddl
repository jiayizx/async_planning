(define (domain cook-flounder)
  (:requirements :durative-actions)
  (:predicates
    (heat_grill_pending)
    (heat_grill_done)
    (cut_slits_pending)
    (cut_slits_done)
    (rub_fish_pending)
    (rub_fish_done)
    (grill_flounder_pending)
    (grill_flounder_done)
    (rest_fish_pending)
    (rest_fish_done)
  )

  (:durative-action heat_grill
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (heat_grill_pending))
    :effect (and (at start (not (heat_grill_pending))) (at end (heat_grill_done)))
  )

  (:durative-action cut_slits
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (cut_slits_pending))
    :effect (and (at start (not (cut_slits_pending))) (at end (cut_slits_done)))
  )

  (:durative-action rub_fish
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (rub_fish_pending)) (at start (cut_slits_done)))
    :effect (and (at start (not (rub_fish_pending))) (at end (rub_fish_done)))
  )

  (:durative-action grill_flounder
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (grill_flounder_pending)) (at start (heat_grill_done)) (at start (rub_fish_done)))
    :effect (and (at start (not (grill_flounder_pending))) (at end (grill_flounder_done)))
  )

  (:durative-action rest_fish
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (rest_fish_pending)) (at start (grill_flounder_done)))
    :effect (and (at start (not (rest_fish_pending))) (at end (rest_fish_done)))
  )
)
