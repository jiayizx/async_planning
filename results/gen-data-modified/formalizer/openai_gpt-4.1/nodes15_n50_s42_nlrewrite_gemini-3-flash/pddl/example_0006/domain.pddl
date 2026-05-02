(define (domain quick-breakfast)
  (:requirements :durative-actions)
  (:predicates
    (locate_pan_pending)
    (locate_pan_done)
    (whisk_eggs_pending)
    (whisk_eggs_done)
    (melt_butter_pending)
    (melt_butter_done)
    (scramble_eggs_pending)
    (scramble_eggs_done)
    (place_pan_pending)
    (place_pan_done)
    (sit_table_pending)
    (sit_table_done)
    (pour_oj_pending)
    (pour_oj_done)
    (transfer_eggs_pending)
    (transfer_eggs_done)
    (clear_counter_pending)
    (clear_counter_done)
    (toast_bread_pending)
    (toast_bread_done)
    (get_eggs_pending)
    (get_eggs_done)
    (season_eggs_pending)
    (season_eggs_done)
    (turn_on_stove_pending)
    (turn_on_stove_done)
    (grab_fork_pending)
    (grab_fork_done)
    (eat_breakfast_pending)
    (eat_breakfast_done)
  )

  (:durative-action locate_pan
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (locate_pan_pending))
    :effect (and (at start (not (locate_pan_pending))) (at end (locate_pan_done)))
  )

  (:durative-action whisk_eggs
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (whisk_eggs_pending)) (at start (get_eggs_done)))
    :effect (and (at start (not (whisk_eggs_pending))) (at end (whisk_eggs_done)))
  )

  (:durative-action melt_butter
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (melt_butter_pending)) (at start (whisk_eggs_done)))
    :effect (and (at start (not (melt_butter_pending))) (at end (melt_butter_done)))
  )

  (:durative-action scramble_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (scramble_eggs_pending)) (at start (melt_butter_done)))
    :effect (and (at start (not (scramble_eggs_pending))) (at end (scramble_eggs_done)))
  )

  (:durative-action place_pan
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (place_pan_pending)) (at start (locate_pan_done)))
    :effect (and (at start (not (place_pan_pending))) (at end (place_pan_done)))
  )

  (:durative-action sit_table
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (sit_table_pending)) (at start (clear_counter_done)) (at start (grab_fork_done)))
    :effect (and (at start (not (sit_table_pending))) (at end (sit_table_done)))
  )

  (:durative-action pour_oj
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pour_oj_pending)) (at start (turn_on_stove_done)))
    :effect (and (at start (not (pour_oj_pending))) (at end (pour_oj_done)))
  )

  (:durative-action transfer_eggs
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (transfer_eggs_pending)) (at start (scramble_eggs_done)))
    :effect (and (at start (not (transfer_eggs_pending))) (at end (transfer_eggs_done)))
  )

  (:durative-action clear_counter
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (clear_counter_pending)) (at start (toast_bread_done)))
    :effect (and (at start (not (clear_counter_pending))) (at end (clear_counter_done)))
  )

  (:durative-action toast_bread
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (toast_bread_pending)) (at start (scramble_eggs_done)))
    :effect (and (at start (not (toast_bread_pending))) (at end (toast_bread_done)))
  )

  (:durative-action get_eggs
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (get_eggs_pending)) (at start (pour_oj_done)))
    :effect (and (at start (not (get_eggs_pending))) (at end (get_eggs_done)))
  )

  (:durative-action season_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (season_eggs_pending)) (at start (transfer_eggs_done)))
    :effect (and (at start (not (season_eggs_pending))) (at end (season_eggs_done)))
  )

  (:durative-action turn_on_stove
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (turn_on_stove_pending)) (at start (place_pan_done)))
    :effect (and (at start (not (turn_on_stove_pending))) (at end (turn_on_stove_done)))
  )

  (:durative-action grab_fork
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (grab_fork_pending))
    :effect (and (at start (not (grab_fork_pending))) (at end (grab_fork_done)))
  )

  (:durative-action eat_breakfast
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (eat_breakfast_pending)) (at start (sit_table_done)))
    :effect (and (at start (not (eat_breakfast_pending))) (at end (eat_breakfast_done)))
  )
)
