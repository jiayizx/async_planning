(define (domain roast-beef-dinner)
  (:requirements :durative-actions)
  (:predicates
    (sharpen_knife_pending)
    (sharpen_knife_done)
    (roast_beef_pending)
    (roast_beef_done)
    (select_beef_pending)
    (select_beef_done)
    (prepare_marinade_pending)
    (prepare_marinade_done)
    (set_table_pending)
    (set_table_done)
    (rub_beef_pending)
    (rub_beef_done)
    (slice_and_serve_pending)
    (slice_and_serve_done)
    (rest_meat_pending)
    (rest_meat_done)
    (marinate_beef_pending)
    (marinate_beef_done)
    (preheat_oven_pending)
    (preheat_oven_done)
  )

  (:durative-action sharpen_knife
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (sharpen_knife_pending)) (at start (set_table_done)))
    :effect (and (at start (not (sharpen_knife_pending))) (at end (sharpen_knife_done)))
  )

  (:durative-action roast_beef
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (roast_beef_pending)) (at start (rub_beef_done)) (at start (marinate_beef_done)) (at start (preheat_oven_done)))
    :effect (and (at start (not (roast_beef_pending))) (at end (roast_beef_done)))
  )

  (:durative-action select_beef
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (select_beef_pending))
    :effect (and (at start (not (select_beef_pending))) (at end (select_beef_done)))
  )

  (:durative-action prepare_marinade
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (prepare_marinade_pending))
    :effect (and (at start (not (prepare_marinade_pending))) (at end (prepare_marinade_done)))
  )

  (:durative-action set_table
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (set_table_pending))
    :effect (and (at start (not (set_table_pending))) (at end (set_table_done)))
  )

  (:durative-action rub_beef
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (rub_beef_pending)) (at start (select_beef_done)))
    :effect (and (at start (not (rub_beef_pending))) (at end (rub_beef_done)))
  )

  (:durative-action slice_and_serve
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (slice_and_serve_pending)) (at start (rest_meat_done)) (at start (sharpen_knife_done)))
    :effect (and (at start (not (slice_and_serve_pending))) (at end (slice_and_serve_done)))
  )

  (:durative-action rest_meat
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (rest_meat_pending)) (at start (roast_beef_done)))
    :effect (and (at start (not (rest_meat_pending))) (at end (rest_meat_done)))
  )

  (:durative-action marinate_beef
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (marinate_beef_pending)) (at start (prepare_marinade_done)))
    :effect (and (at start (not (marinate_beef_pending))) (at end (marinate_beef_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (preheat_oven_pending)) (at start (rub_beef_done)))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )
)
