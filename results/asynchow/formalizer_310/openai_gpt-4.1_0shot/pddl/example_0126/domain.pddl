(define (domain get_ready)
  (:requirements :durative-actions)
  (:predicates
    (shower_started_pending)
    (shower_started_done)
    (got_in_shower_pending)
    (got_in_shower_done)
    (showered_pending)
    (showered_done)
    (dried_off_pending)
    (dried_off_done)
    (teeth_brushed_pending)
    (teeth_brushed_done)
    (hair_combed_pending)
    (hair_combed_done)
    (outfit_picked_pending)
    (outfit_picked_done)
  )

  (:durative-action start_shower
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (shower_started_pending))
    :effect (and (at start (not (shower_started_pending))) (at end (shower_started_done)))
  )

  (:durative-action get_in_shower
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (got_in_shower_pending)) (at start (shower_started_done)))
    :effect (and (at start (not (got_in_shower_pending))) (at end (got_in_shower_done)))
  )

  (:durative-action take_shower
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (showered_pending)) (at start (got_in_shower_done)))
    :effect (and (at start (not (showered_pending))) (at end (showered_done)))
  )

  (:durative-action dry_off
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (dried_off_pending)) (at start (showered_done)))
    :effect (and (at start (not (dried_off_pending))) (at end (dried_off_done)))
  )

  (:durative-action brush_teeth
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (teeth_brushed_pending)) (at start (dried_off_done)))
    :effect (and (at start (not (teeth_brushed_pending))) (at end (teeth_brushed_done)))
  )

  (:durative-action comb_hair
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (hair_combed_pending)) (at start (dried_off_done)))
    :effect (and (at start (not (hair_combed_pending))) (at end (hair_combed_done)))
  )

  (:durative-action pick_outfit
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (outfit_picked_pending)) (at start (teeth_brushed_done)) (at start (hair_combed_done)))
    :effect (and (at start (not (outfit_picked_pending))) (at end (outfit_picked_done)))
  )
)
