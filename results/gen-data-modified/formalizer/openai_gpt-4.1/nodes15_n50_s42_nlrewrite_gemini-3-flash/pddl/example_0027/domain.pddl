(define (domain flag_football)
  (:requirements :durative-actions)
  (:predicates
    (put_on_team_jersey_pending)
    (put_on_team_jersey_done)
    (lace_up_cleats_pending)
    (lace_up_cleats_done)
    (pack_sports_bag_pending)
    (pack_sports_bag_done)
    (warm_up_jogging_pending)
    (warm_up_jogging_done)
    (check_weather_forecast_pending)
    (check_weather_forecast_done)
    (take_field_kickoff_pending)
    (take_field_kickoff_done)
    (fasten_flag_belt_pending)
    (fasten_flag_belt_done)
    (drive_to_complex_pending)
    (drive_to_complex_done)
    (dynamic_stretches_pending)
    (dynamic_stretches_done)
    (review_playbook_pending)
    (review_playbook_done)
    (find_water_mouthguard_pending)
    (find_water_mouthguard_done)
    (meet_teammates_pending)
    (meet_teammates_done)
    (sign_waiver_pending)
    (sign_waiver_done)
    (download_strategy_guide_pending)
    (download_strategy_guide_done)
    (pregame_huddle_pending)
    (pregame_huddle_done)
  )

  (:durative-action put_on_team_jersey
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (put_on_team_jersey_pending))
      (at start (lace_up_cleats_done))
      (at start (meet_teammates_done))
      (at start (drive_to_complex_done))
      (at start (find_water_mouthguard_done))
      (at start (check_weather_forecast_done))
      (at start (pack_sports_bag_done))
      (at start (fasten_flag_belt_done))
    )
    :effect (and
      (at start (not (put_on_team_jersey_pending)))
      (at end (put_on_team_jersey_done))
    )
  )

  (:durative-action lace_up_cleats
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (lace_up_cleats_pending))
      (at start (meet_teammates_done))
      (at start (drive_to_complex_done))
      (at start (find_water_mouthguard_done))
      (at start (check_weather_forecast_done))
      (at start (pack_sports_bag_done))
      (at start (fasten_flag_belt_done))
    )
    :effect (and
      (at start (not (lace_up_cleats_pending)))
      (at end (lace_up_cleats_done))
    )
  )

  (:durative-action pack_sports_bag
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pack_sports_bag_pending))
    :effect (and
      (at start (not (pack_sports_bag_pending)))
      (at end (pack_sports_bag_done))
    )
  )

  (:durative-action warm_up_jogging
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (warm_up_jogging_pending))
      (at start (dynamic_stretches_done))
      (at start (pack_sports_bag_done))
    )
    :effect (and
      (at start (not (warm_up_jogging_pending)))
      (at end (warm_up_jogging_done))
    )
  )

  (:durative-action check_weather_forecast
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (check_weather_forecast_pending))
    :effect (and
      (at start (not (check_weather_forecast_pending)))
      (at end (check_weather_forecast_done))
    )
  )

  (:durative-action take_field_kickoff
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (take_field_kickoff_pending))
      (at start (pregame_huddle_done))
      (at start (sign_waiver_done))
      (at start (put_on_team_jersey_done))
      (at start (lace_up_cleats_done))
      (at start (meet_teammates_done))
      (at start (drive_to_complex_done))
      (at start (find_water_mouthguard_done))
      (at start (check_weather_forecast_done))
      (at start (pack_sports_bag_done))
      (at start (fasten_flag_belt_done))
    )
    :effect (and
      (at start (not (take_field_kickoff_pending)))
      (at end (take_field_kickoff_done))
    )
  )

  (:durative-action fasten_flag_belt
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (fasten_flag_belt_pending))
      (at start (drive_to_complex_done))
      (at start (find_water_mouthguard_done))
      (at start (check_weather_forecast_done))
      (at start (pack_sports_bag_done))
    )
    :effect (and
      (at start (not (fasten_flag_belt_pending)))
      (at end (fasten_flag_belt_done))
    )
  )

  (:durative-action drive_to_complex
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (drive_to_complex_pending))
      (at start (find_water_mouthguard_done))
      (at start (check_weather_forecast_done))
      (at start (pack_sports_bag_done))
    )
    :effect (and
      (at start (not (drive_to_complex_pending)))
      (at end (drive_to_complex_done))
    )
  )

  (:durative-action dynamic_stretches
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (dynamic_stretches_pending))
      (at start (pack_sports_bag_done))
    )
    :effect (and
      (at start (not (dynamic_stretches_pending)))
      (at end (dynamic_stretches_done))
    )
  )

  (:durative-action review_playbook
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (review_playbook_pending))
      (at start (download_strategy_guide_done))
    )
    :effect (and
      (at start (not (review_playbook_pending)))
      (at end (review_playbook_done))
    )
  )

  (:durative-action find_water_mouthguard
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (find_water_mouthguard_pending))
      (at start (check_weather_forecast_done))
    )
    :effect (and
      (at start (not (find_water_mouthguard_pending)))
      (at end (find_water_mouthguard_done))
    )
  )

  (:durative-action meet_teammates
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (meet_teammates_pending))
      (at start (pack_sports_bag_done))
    )
    :effect (and
      (at start (not (meet_teammates_pending)))
      (at end (meet_teammates_done))
    )
  )

  (:durative-action sign_waiver
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (sign_waiver_pending))
    :effect (and
      (at start (not (sign_waiver_pending)))
      (at end (sign_waiver_done))
    )
  )

  (:durative-action download_strategy_guide
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (download_strategy_guide_pending))
    :effect (and
      (at start (not (download_strategy_guide_pending)))
      (at end (download_strategy_guide_done))
    )
  )

  (:durative-action pregame_huddle
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (pregame_huddle_pending))
      (at start (sign_waiver_done))
      (at start (put_on_team_jersey_done))
      (at start (lace_up_cleats_done))
      (at start (meet_teammates_done))
      (at start (drive_to_complex_done))
      (at start (find_water_mouthguard_done))
      (at start (check_weather_forecast_done))
      (at start (pack_sports_bag_done))
      (at start (fasten_flag_belt_done))
    )
    :effect (and
      (at start (not (pregame_huddle_pending)))
      (at end (pregame_huddle_done))
    )
  )

)
