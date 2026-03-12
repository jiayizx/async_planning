(define (domain healthy_breakfast)
  (:requirements :durative-actions)
  (:predicates
    (put_on_apron_pending) (put_on_apron_done)
    (take_eggs_pending) (take_eggs_done)
    (whisk_eggs_pending) (whisk_eggs_done)
    (cook_eggs_pending) (cook_eggs_done)
    (light_stove_pending) (light_stove_done)
    (slice_bread_pending) (slice_bread_done)
    (plate_meal_pending) (plate_meal_done)
    (crack_eggs_pending) (crack_eggs_done)
    (sit_and_eat_pending) (sit_and_eat_done)
    (season_eggs_pending) (season_eggs_done)
    (toast_bread_pending) (toast_bread_done)
    (clean_utensils_pending) (clean_utensils_done)
    (remove_bread_pending) (remove_bread_done)
    (gather_pans_pending) (gather_pans_done)
    (transfer_eggs_pending) (transfer_eggs_done)
  )

  (:durative-action put_on_apron
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (put_on_apron_pending))
    :effect (and (at start (not (put_on_apron_pending))) (at end (put_on_apron_done)))
  )

  (:durative-action take_eggs_out
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (take_eggs_pending))
    :effect (and (at start (not (take_eggs_pending))) (at end (take_eggs_done)))
  )

  (:durative-action whisk_eggs
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (whisk_eggs_pending)) (at start (light_stove_done)))
    :effect (and (at start (not (whisk_eggs_pending))) (at end (whisk_eggs_done)))
  )

  (:durative-action cook_eggs
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (cook_eggs_pending)) (at start (whisk_eggs_done)) (at start (light_stove_done)))
    :effect (and (at start (not (cook_eggs_pending))) (at end (cook_eggs_done)))
  )

  (:durative-action light_stove
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (light_stove_pending)) (at start (gather_pans_done)))
    :effect (and (at start (not (light_stove_pending))) (at end (light_stove_done)))
  )

  (:durative-action slice_bread
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (slice_bread_pending)) (at start (crack_eggs_done)) (at start (remove_bread_done)))
    :effect (and (at start (not (slice_bread_pending))) (at end (slice_bread_done)))
  )

  (:durative-action plate_meal
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (plate_meal_pending)) (at start (transfer_eggs_done)))
    :effect (and (at start (not (plate_meal_pending))) (at end (plate_meal_done)))
  )

  (:durative-action crack_eggs
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (crack_eggs_pending)) (at start (take_eggs_done)))
    :effect (and (at start (not (crack_eggs_pending))) (at end (crack_eggs_done)))
  )

  (:durative-action sit_and_eat
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (sit_and_eat_pending)) (at start (plate_meal_done)))
    :effect (and (at start (not (sit_and_eat_pending))) (at end (sit_and_eat_done)))
  )

  (:durative-action season_eggs
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (season_eggs_pending)) (at start (cook_eggs_done)))
    :effect (and (at start (not (season_eggs_pending))) (at end (season_eggs_done)))
  )

  (:durative-action toast_bread
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (toast_bread_pending)) (at start (slice_bread_done)))
    :effect (and (at start (not (toast_bread_pending))) (at end (toast_bread_done)))
  )

  (:durative-action clean_utensils
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (clean_utensils_pending)) (at start (light_stove_done)) (at start (toast_bread_done)) (at start (remove_bread_done)))
    :effect (and (at start (not (clean_utensils_pending))) (at end (clean_utensils_done)))
  )

  (:durative-action remove_bread
    :parameters ()
    :duration (= ?duration 20)
    :condition (at start (remove_bread_pending))
    :effect (and (at start (not (remove_bread_pending))) (at end (remove_bread_done)))
  )

  (:durative-action gather_pans
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (gather_pans_pending)) (at start (put_on_apron_done)))
    :effect (and (at start (not (gather_pans_pending))) (at end (gather_pans_done)))
  )

  (:durative-action transfer_eggs
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (transfer_eggs_pending)) (at start (cook_eggs_done)) (at start (season_eggs_done)))
    :effect (and (at start (not (transfer_eggs_pending))) (at end (transfer_eggs_done)))
  )
)
