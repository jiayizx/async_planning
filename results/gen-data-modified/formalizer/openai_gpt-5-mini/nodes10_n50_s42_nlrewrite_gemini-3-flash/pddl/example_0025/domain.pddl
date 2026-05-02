(define (domain try_new_tea)
  (:requirements :durative-actions)
  (:predicates
    (fill_kettle_pending) (fill_kettle_done)
    (pour_tea_mug_pending) (pour_tea_mug_done)
    (browse_shop_pending) (browse_shop_done)
    (retrieve_infuser_pending) (retrieve_infuser_done)
    (boil_water_pending) (boil_water_done)
    (set_plate_pending) (set_plate_done)
    (select_blend_pending) (select_blend_done)
    (place_infuser_pending) (place_infuser_done)
    (measure_leaves_pending) (measure_leaves_done)
    (steep_tea_pending) (steep_tea_done)
  )

  (:durative-action fill_kettle
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (fill_kettle_pending)) (at start (measure_leaves_done)))
    :effect (and (at start (not (fill_kettle_pending))) (at end (fill_kettle_done)))
  )

  (:durative-action pour_tea_mug
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pour_tea_mug_pending)) (at start (place_infuser_done)))
    :effect (and (at start (not (pour_tea_mug_pending))) (at end (pour_tea_mug_done)))
  )

  (:durative-action browse_shop
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (browse_shop_pending)))
    :effect (and (at start (not (browse_shop_pending))) (at end (browse_shop_done)))
  )

  (:durative-action retrieve_infuser
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (retrieve_infuser_pending)))
    :effect (and (at start (not (retrieve_infuser_pending))) (at end (retrieve_infuser_done)))
  )

  (:durative-action boil_water
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (boil_water_pending)) (at start (fill_kettle_done)) (at start (browse_shop_done)))
    :effect (and (at start (not (boil_water_pending))) (at end (boil_water_done)))
  )

  (:durative-action set_plate
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (set_plate_pending)))
    :effect (and (at start (not (set_plate_pending))) (at end (set_plate_done)))
  )

  (:durative-action select_blend
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (select_blend_pending)) (at start (browse_shop_done)))
    :effect (and (at start (not (select_blend_pending))) (at end (select_blend_done)))
  )

  (:durative-action place_infuser
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (place_infuser_pending)) (at start (retrieve_infuser_done)))
    :effect (and (at start (not (place_infuser_pending))) (at end (place_infuser_done)))
  )

  (:durative-action measure_leaves
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (measure_leaves_pending)) (at start (select_blend_done)) (at start (browse_shop_done)))
    :effect (and (at start (not (measure_leaves_pending))) (at end (measure_leaves_done)))
  )

  (:durative-action steep_tea
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (steep_tea_pending)) (at start (set_plate_done)) (at start (browse_shop_done)))
    :effect (and (at start (not (steep_tea_pending))) (at end (steep_tea_done)))
  )
)
