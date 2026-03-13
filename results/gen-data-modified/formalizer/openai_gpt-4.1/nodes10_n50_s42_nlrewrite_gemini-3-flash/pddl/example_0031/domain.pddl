(define (domain photograph_rugs)
  (:requirements :durative-actions)
  (:predicates
    (vacuum_pending)
    (vacuum_done)
    (setup_camera_pending)
    (setup_camera_done)
    (color_grade_pending)
    (color_grade_done)
    (transport_rugs_pending)
    (transport_rugs_done)
    (upload_photos_pending)
    (upload_photos_done)
    (adjust_lighting_pending)
    (adjust_lighting_done)
    (position_rug_pending)
    (position_rug_done)
    (unroll_steam_pending)
    (unroll_steam_done)
    (take_photos_pending)
    (take_photos_done)
    (catalog_inventory_pending)
    (catalog_inventory_done)
  )

  ;; Step 1: Vacuum the rug fibers to remove dust (900 seconds)
  (:durative-action do_vacuum
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (vacuum_pending)) (at start (unroll_steam_done)))
    :effect (and (at start (not (vacuum_pending))) (at end (vacuum_done)))
  )

  ;; Step 2: Set up the professional camera and tripod (1200 seconds)
  (:durative-action do_setup_camera
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (setup_camera_pending)) (at start (adjust_lighting_done)))
    :effect (and (at start (not (setup_camera_pending))) (at end (setup_camera_done)))
  )

  ;; Step 3: Color grade the digital images (7200 seconds)
  (:durative-action do_color_grade
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (color_grade_pending)) (at start (take_photos_done)))
    :effect (and (at start (not (color_grade_pending))) (at end (color_grade_done)))
  )

  ;; Step 4: Transport the heavy rugs to the studio (3600 seconds)
  (:durative-action do_transport_rugs
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (transport_rugs_pending)) (at start (catalog_inventory_done)))
    :effect (and (at start (not (transport_rugs_pending))) (at end (transport_rugs_done)))
  )

  ;; Step 5: Upload the final photos to the website (1800 seconds)
  (:durative-action do_upload_photos
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (upload_photos_pending)) (at start (color_grade_done)))
    :effect (and (at start (not (upload_photos_pending))) (at end (upload_photos_done)))
  )

  ;; Step 6: Adjust the studio lighting for the weave texture (600 seconds)
  (:durative-action do_adjust_lighting
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (adjust_lighting_pending)) (at start (position_rug_done)))
    :effect (and (at start (not (adjust_lighting_pending))) (at end (adjust_lighting_done)))
  )

  ;; Step 7: Position the rug perfectly on the floor (300 seconds)
  (:durative-action do_position_rug
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (position_rug_pending)) (at start (vacuum_done)))
    :effect (and (at start (not (position_rug_pending))) (at end (position_rug_done)))
  )

  ;; Step 8: Unroll and steam the rugs to remove creases (2700 seconds)
  (:durative-action do_unroll_steam
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (unroll_steam_pending)) (at start (transport_rugs_done)))
    :effect (and (at start (not (unroll_steam_pending))) (at end (unroll_steam_done)))
  )

  ;; Step 9: Take the high-resolution photographs (3600 seconds)
  (:durative-action do_take_photos
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (take_photos_pending)) (at start (setup_camera_done)) (at start (position_rug_done)))
    :effect (and (at start (not (take_photos_pending))) (at end (take_photos_done)))
  )

  ;; Step 10: Catalog the inventory list (1800 seconds)
  (:durative-action do_catalog_inventory
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (catalog_inventory_pending))
    :effect (and (at start (not (catalog_inventory_pending))) (at end (catalog_inventory_done)))
  )
)
