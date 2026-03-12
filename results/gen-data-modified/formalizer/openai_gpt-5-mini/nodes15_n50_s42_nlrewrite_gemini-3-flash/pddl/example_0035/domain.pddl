(define (domain make_loxs)
  (:requirements :durative-actions)
  (:predicates
    (slice_fish_pending) (slice_fish_done)
    (purchase_salmon_pending) (purchase_salmon_done)
    (rub_cure_pending) (rub_cure_done)
    (weigh_down_pending) (weigh_down_done)
    (rinse_pat_dry_pending) (rinse_pat_dry_done)
    (garnish_pending) (garnish_done)
    (chop_dill_pending) (chop_dill_done)
    (mix_cure_pending) (mix_cure_done)
    (sterilize_container_pending) (sterilize_container_done)
    (clear_shelf_pending) (clear_shelf_done)
    (remove_pin_bones_pending) (remove_pin_bones_done)
    (place_skin_down_pending) (place_skin_down_done)
    (air_dry_pending) (air_dry_done)
    (line_container_pending) (line_container_done)
    (wrap_seasoned_pending) (wrap_seasoned_done)
  )

  (:durative-action do_slice_fish
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (slice_fish_pending)) (at start (air_dry_done)) (at start (rinse_pat_dry_done)))
    :effect (and (at start (not (slice_fish_pending))) (at end (slice_fish_done)))
  )

  (:durative-action do_purchase_salmon
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (purchase_salmon_pending))
    :effect (and (at start (not (purchase_salmon_pending))) (at end (purchase_salmon_done)))
  )

  (:durative-action do_rub_cure
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (rub_cure_pending)) (at start (mix_cure_done)))
    :effect (and (at start (not (rub_cure_pending))) (at end (rub_cure_done)))
  )

  (:durative-action do_weigh_down
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (weigh_down_pending)) (at start (place_skin_down_done)))
    :effect (and (at start (not (weigh_down_pending))) (at end (weigh_down_done)))
  )

  (:durative-action do_rinse_pat_dry
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (rinse_pat_dry_pending)) (at start (purchase_salmon_done)))
    :effect (and (at start (not (rinse_pat_dry_pending))) (at end (rinse_pat_dry_done)))
  )

  (:durative-action do_garnish
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (garnish_pending)) (at start (chop_dill_done)))
    :effect (and (at start (not (garnish_pending))) (at end (garnish_done)))
  )

  (:durative-action do_chop_dill
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (chop_dill_pending))
    :effect (and (at start (not (chop_dill_pending))) (at end (chop_dill_done)))
  )

  (:durative-action do_mix_cure
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (mix_cure_pending))
    :effect (and (at start (not (mix_cure_pending))) (at end (mix_cure_done)))
  )

  (:durative-action do_sterilize_container
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (sterilize_container_pending))
    :effect (and (at start (not (sterilize_container_pending))) (at end (sterilize_container_done)))
  )

  (:durative-action do_clear_shelf
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (clear_shelf_pending))
    :effect (and (at start (not (clear_shelf_pending))) (at end (clear_shelf_done)))
  )

  (:durative-action do_remove_pin_bones
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (remove_pin_bones_pending)) (at start (purchase_salmon_done)))
    :effect (and (at start (not (remove_pin_bones_pending))) (at end (remove_pin_bones_done)))
  )

  (:durative-action do_place_skin_down
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (place_skin_down_pending)) (at start (clear_shelf_done)))
    :effect (and (at start (not (place_skin_down_pending))) (at end (place_skin_down_done)))
  )

  (:durative-action do_air_dry
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (air_dry_pending)) (at start (sterilize_container_done)) (at start (wrap_seasoned_done)))
    :effect (and (at start (not (air_dry_pending))) (at end (air_dry_done)))
  )

  (:durative-action do_line_container
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (line_container_pending)) (at start (sterilize_container_done)) (at start (purchase_salmon_done)))
    :effect (and (at start (not (line_container_pending))) (at end (line_container_done)))
  )

  (:durative-action do_wrap_seasoned
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (wrap_seasoned_pending)) (at start (rub_cure_done)))
    :effect (and (at start (not (wrap_seasoned_pending))) (at end (wrap_seasoned_done)))
  )
)
