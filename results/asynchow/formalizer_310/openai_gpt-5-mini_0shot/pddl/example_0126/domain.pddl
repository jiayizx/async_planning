(define (domain get_ready)
  (:requirements :durative-actions)
  (:predicates
    (start_shower_pending)
    (start_shower_done)
    (get_in_shower_pending)
    (get_in_shower_done)
    (take_shower_pending)
    (take_shower_done)
    (dry_off_pending)
    (dry_off_done)
    (brush_teeth_pending)
    (brush_teeth_done)
    (comb_hair_pending)
    (comb_hair_done)
    (pick_out_outfit_pending)
    (pick_out_outfit_done)
  )

  (:durative-action start_shower
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (start_shower_pending))
    :effect (and
      (at start (not (start_shower_pending)))
      (at end (start_shower_done))
    )
  )

  (:durative-action get_in_shower
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (get_in_shower_pending)) (at start (start_shower_done)))
    :effect (and
      (at start (not (get_in_shower_pending)))
      (at end (get_in_shower_done))
    )
  )

  (:durative-action take_shower
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (take_shower_pending)) (at start (get_in_shower_done)))
    :effect (and
      (at start (not (take_shower_pending)))
      (at end (take_shower_done))
    )
  )

  (:durative-action dry_off
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (dry_off_pending)) (at start (take_shower_done)))
    :effect (and
      (at start (not (dry_off_pending)))
      (at end (dry_off_done))
    )
  )

  (:durative-action brush_teeth
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (brush_teeth_pending)) (at start (dry_off_done)))
    :effect (and
      (at start (not (brush_teeth_pending)))
      (at end (brush_teeth_done))
    )
  )

  (:durative-action comb_hair
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (comb_hair_pending)) (at start (dry_off_done)))
    :effect (and
      (at start (not (comb_hair_pending)))
      (at end (comb_hair_done))
    )
  )

  (:durative-action pick_out_outfit
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pick_out_outfit_pending)) (at start (brush_teeth_done)) (at start (comb_hair_done)))
    :effect (and
      (at start (not (pick_out_outfit_pending)))
      (at end (pick_out_outfit_done))
    )
  )
)
