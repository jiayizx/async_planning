(define (domain halloween_car_decor)
  (:requirements :durative-actions)
  (:predicates
    (attach_spider_legs_pending)
    (attach_spider_legs_done)
    (drape_cobwebs_pending)
    (drape_cobwebs_done)
    (carve_pumpkin_pending)
    (carve_pumpkin_done)
    (apply_zombie_blood_pending)
    (apply_zombie_blood_done)
    (buy_supplies_pending)
    (buy_supplies_done)
    (mix_red_paint_pending)
    (mix_red_paint_done)
    (place_pumpkin_pending)
    (place_pumpkin_done)
    (clean_windows_pending)
    (clean_windows_done)
    (splatter_red_paint_pending)
    (splatter_red_paint_done)
    (wash_car_pending)
    (wash_car_done)
  )

  (:durative-action attach_spider_legs
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (attach_spider_legs_pending)) (at start (drape_cobwebs_done)) (at start (wash_car_done)))
    :effect (and (at start (not (attach_spider_legs_pending))) (at end (attach_spider_legs_done)))
  )

  (:durative-action drape_cobwebs
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drape_cobwebs_pending)) (at start (wash_car_done)))
    :effect (and (at start (not (drape_cobwebs_pending))) (at end (drape_cobwebs_done)))
  )

  (:durative-action carve_pumpkin
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (carve_pumpkin_pending)) (at start (buy_supplies_done)))
    :effect (and (at start (not (carve_pumpkin_pending))) (at end (carve_pumpkin_done)))
  )

  (:durative-action apply_zombie_blood
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (apply_zombie_blood_pending)) (at start (clean_windows_done)))
    :effect (and (at start (not (apply_zombie_blood_pending))) (at end (apply_zombie_blood_done)))
  )

  (:durative-action buy_supplies
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (buy_supplies_pending))
    :effect (and (at start (not (buy_supplies_pending))) (at end (buy_supplies_done)))
  )

  (:durative-action mix_red_paint
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (mix_red_paint_pending))
    :effect (and (at start (not (mix_red_paint_pending))) (at end (mix_red_paint_done)))
  )

  (:durative-action place_pumpkin
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (place_pumpkin_pending)) (at start (carve_pumpkin_done)))
    :effect (and (at start (not (place_pumpkin_pending))) (at end (place_pumpkin_done)))
  )

  (:durative-action clean_windows
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (clean_windows_pending)) (at start (splatter_red_paint_done)))
    :effect (and (at start (not (clean_windows_pending))) (at end (clean_windows_done)))
  )

  (:durative-action splatter_red_paint
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (splatter_red_paint_pending)) (at start (buy_supplies_done)) (at start (mix_red_paint_done)))
    :effect (and (at start (not (splatter_red_paint_pending))) (at end (splatter_red_paint_done)))
  )

  (:durative-action wash_car
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (wash_car_pending))
    :effect (and (at start (not (wash_car_pending))) (at end (wash_car_done)))
  )
)
