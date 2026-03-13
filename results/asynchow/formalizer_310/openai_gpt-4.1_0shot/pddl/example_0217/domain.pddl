(define (domain nest-thermostat)
  (:requirements :durative-actions)
  (:predicates
    (download_app_pending)
    (download_app_done)
    (pair_app_pending)
    (pair_app_done)
    (change_temp_pending)
    (change_temp_done)
    (schedule_temp_pending)
    (schedule_temp_done)
    (adjust_settings_pending)
    (adjust_settings_done)
  )

  (:durative-action download_app
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (download_app_pending))
    :effect (and
      (at start (not (download_app_pending)))
      (at end (download_app_done))
    )
  )

  (:durative-action pair_app
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (pair_app_pending))
      (at start (download_app_done))
    )
    :effect (and
      (at start (not (pair_app_pending)))
      (at end (pair_app_done))
    )
  )

  (:durative-action change_temp
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (change_temp_pending))
      (at start (pair_app_done))
    )
    :effect (and
      (at start (not (change_temp_pending)))
      (at end (change_temp_done))
    )
  )

  (:durative-action schedule_temp
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (schedule_temp_pending))
      (at start (pair_app_done))
    )
    :effect (and
      (at start (not (schedule_temp_pending)))
      (at end (schedule_temp_done))
    )
  )

  (:durative-action adjust_settings
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (adjust_settings_pending))
      (at start (pair_app_done))
    )
    :effect (and
      (at start (not (adjust_settings_pending)))
      (at end (adjust_settings_done))
    )
  )
)
