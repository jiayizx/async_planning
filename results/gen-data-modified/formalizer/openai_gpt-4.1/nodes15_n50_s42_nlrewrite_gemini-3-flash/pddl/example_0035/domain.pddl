(define (domain lox-making)
  (:requirements :durative-actions)
  (:predicates
    (slice_cured_fish_pending)
    (slice_cured_fish_done)
    (purchase_salmon_pending)
    (purchase_salmon_done)
    (rub_salt_sugar_pending)
    (rub_salt_sugar_done)
    (weigh_down_fish_pending)
    (weigh_down_fish_done)
    (rinse_salmon_pending)
    (rinse_salmon_done)
    (garnish_platter_pending)
    (garnish_platter_done)
    (chop_dill_pending)
    (chop_dill_done)
    (mix_cure_pending)
    (mix_cure_done)
    (sterilize_container_pending)
    (sterilize_container_done)
    (clear_fridge_shelf_pending)
    (clear_fridge_shelf_done)
    (remove_pin_bones_pending)
    (remove_pin_bones_done)
    (place_salmon_in_container_pending)
    (place_salmon_in_container_done)
    (air_dry_pellicle_pending)
    (air_dry_pellicle_done)
    (line_container_plastic_pending)
    (line_container_plastic_done)
    (wrap_fish_plastic_pending)
    (wrap_fish_plastic_done)
  )

  (:durative-action slice_cured_fish
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (slice_cured_fish_pending)) (at start (rinse_salmon_done)) (at start (air_dry_pellicle_done)))
    :effect (and (at start (not (slice_cured_fish_pending))) (at end (slice_cured_fish_done)))
  )

  (:durative-action purchase_salmon
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (purchase_salmon_pending))
    :effect (and (at start (not (purchase_salmon_pending))) (at end (purchase_salmon_done)))
  )

  (:durative-action rub_salt_sugar
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (rub_salt_sugar_pending)) (at start (mix_cure_done)) (at start (remove_pin_bones_done)))
    :effect (and (at start (not (rub_salt_sugar_pending))) (at end (rub_salt_sugar_done)))
  )

  (:durative-action weigh_down_fish
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (weigh_down_fish_pending)) (at start (place_salmon_in_container_done)))
    :effect (and (at start (not (weigh_down_fish_pending))) (at end (weigh_down_fish_done)))
  )

  (:durative-action rinse_salmon
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (rinse_salmon_pending)) (at start (purchase_salmon_done)))
    :effect (and (at start (not (rinse_salmon_pending))) (at end (rinse_salmon_done)))
  )

  (:durative-action garnish_platter
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (garnish_platter_pending)) (at start (chop_dill_done)))
    :effect (and (at start (not (garnish_platter_pending))) (at end (garnish_platter_done)))
  )

  (:durative-action chop_dill
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (chop_dill_pending))
    :effect (and (at start (not (chop_dill_pending))) (at end (chop_dill_done)))
  )

  (:durative-action mix_cure
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (mix_cure_pending))
    :effect (and (at start (not (mix_cure_pending))) (at end (mix_cure_done)))
  )

  (:durative-action sterilize_container
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (sterilize_container_pending))
    :effect (and (at start (not (sterilize_container_pending))) (at end (sterilize_container_done)))
  )

  (:durative-action clear_fridge_shelf
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (clear_fridge_shelf_pending))
    :effect (and (at start (not (clear_fridge_shelf_pending))) (at end (clear_fridge_shelf_done)))
  )

  (:durative-action remove_pin_bones
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (remove_pin_bones_pending)) (at start (purchase_salmon_done)))
    :effect (and (at start (not (remove_pin_bones_pending))) (at end (remove_pin_bones_done)))
  )

  (:durative-action place_salmon_in_container
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (place_salmon_in_container_pending)) (at start (clear_fridge_shelf_done)))
    :effect (and (at start (not (place_salmon_in_container_pending))) (at end (place_salmon_in_container_done)))
  )

  (:durative-action air_dry_pellicle
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (air_dry_pellicle_pending)) (at start (sterilize_container_done)) (at start (wrap_fish_plastic_done)))
    :effect (and (at start (not (air_dry_pellicle_pending))) (at end (air_dry_pellicle_done)))
  )

  (:durative-action line_container_plastic
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (line_container_plastic_pending)) (at start (purchase_salmon_done)) (at start (sterilize_container_done)))
    :effect (and (at start (not (line_container_plastic_pending))) (at end (line_container_plastic_done)))
  )

  (:durative-action wrap_fish_plastic
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (wrap_fish_plastic_pending)) (at start (rub_salt_sugar_done)) (at start (line_container_plastic_done)) (at start (weigh_down_fish_done)))
    :effect (and (at start (not (wrap_fish_plastic_pending))) (at end (wrap_fish_plastic_done)))
  )
)
