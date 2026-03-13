; Fixed domain: added missing :parameters () to each durative-action (syntax error from OPTIC)
(define (domain interview_prep)
  (:requirements :durative-actions)
  (:predicates
    (steam_shirt_pending) (steam_shirt_done)
    (get_dressed_pending) (get_dressed_done)
    (print_resumes_pending) (print_resumes_done)
    (pack_portfolio_pending) (pack_portfolio_done)
    (drink_water_pending) (drink_water_done)
    (check_traffic_pending) (check_traffic_done)
    (research_company_pending) (research_company_done)
    (shine_shoes_pending) (shine_shoes_done)
    (write_questions_pending) (write_questions_done)
    (review_pitch_pending) (review_pitch_done)
    (brush_teeth_pending) (brush_teeth_done)
    (map_route_pending) (map_route_done)
    (spare_pen_pending) (spare_pen_done)
    (backup_alarm_pending) (backup_alarm_done)
    (plug_phone_pending) (plug_phone_done)
    (download_gps_pending) (download_gps_done)
    (confirm_email_pending) (confirm_email_done)
    (mock_interview_pending) (mock_interview_done)
    (drive_to_interview_pending) (drive_to_interview_done)
    (walk_parking_pending) (walk_parking_done)
  )

  (:durative-action step1_steam_shirt
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (steam_shirt_pending))
    :effect (and
      (at start (not (steam_shirt_pending)))
      (at end (steam_shirt_done))
    )
  )

  (:durative-action step2_get_dressed
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (get_dressed_pending)) (at start (steam_shirt_done)) (at start (pack_portfolio_done)))
    :effect (and
      (at start (not (get_dressed_pending)))
      (at end (get_dressed_done))
    )
  )

  (:durative-action step3_print_resumes
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (print_resumes_pending))
    :effect (and
      (at start (not (print_resumes_pending)))
      (at end (print_resumes_done))
    )
  )

  (:durative-action step4_pack_portfolio
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pack_portfolio_pending)) (at start (print_resumes_done)) (at start (write_questions_done)))
    :effect (and
      (at start (not (pack_portfolio_pending)))
      (at end (pack_portfolio_done))
    )
  )

  (:durative-action step5_drink_water
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (drink_water_pending)) (at start (brush_teeth_done)))
    :effect (and
      (at start (not (drink_water_pending)))
      (at end (drink_water_done))
    )
  )

  (:durative-action step6_check_traffic
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (check_traffic_pending)) (at start (map_route_done)))
    :effect (and
      (at start (not (check_traffic_pending)))
      (at end (check_traffic_done))
    )
  )

  (:durative-action step7_research_company
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (research_company_pending))
    :effect (and
      (at start (not (research_company_pending)))
      (at end (research_company_done))
    )
  )

  (:durative-action step8_shine_shoes
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (shine_shoes_pending))
    :effect (and
      (at start (not (shine_shoes_pending)))
      (at end (shine_shoes_done))
    )
  )

  (:durative-action step9_write_questions
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (write_questions_pending)) (at start (mock_interview_done)))
    :effect (and
      (at start (not (write_questions_pending)))
      (at end (write_questions_done))
    )
  )

  (:durative-action step10_review_pitch
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (review_pitch_pending)) (at start (write_questions_done)))
    :effect (and
      (at start (not (review_pitch_pending)))
      (at end (review_pitch_done))
    )
  )

  (:durative-action step11_brush_teeth
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (brush_teeth_pending))
    :effect (and
      (at start (not (brush_teeth_pending)))
      (at end (brush_teeth_done))
    )
  )

  (:durative-action step12_map_route
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (map_route_pending)) (at start (download_gps_done)))
    :effect (and
      (at start (not (map_route_pending)))
      (at end (map_route_done))
    )
  )

  (:durative-action step13_spare_pen
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (spare_pen_pending)) (at start (print_resumes_done)))
    :effect (and
      (at start (not (spare_pen_pending)))
      (at end (spare_pen_done))
    )
  )

  (:durative-action step14_backup_alarm
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (backup_alarm_pending)) (at start (plug_phone_done)))
    :effect (and
      (at start (not (backup_alarm_pending)))
      (at end (backup_alarm_done))
    )
  )

  (:durative-action step15_plug_phone
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (plug_phone_pending))
    :effect (and
      (at start (not (plug_phone_pending)))
      (at end (plug_phone_done))
    )
  )

  (:durative-action step16_download_gps
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (download_gps_pending))
    :effect (and
      (at start (not (download_gps_pending)))
      (at end (download_gps_done))
    )
  )

  (:durative-action step17_confirm_email
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (confirm_email_pending)) (at start (backup_alarm_done)))
    :effect (and
      (at start (not (confirm_email_pending)))
      (at end (confirm_email_done))
    )
  )

  (:durative-action step18_mock_interview
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (mock_interview_pending)) (at start (research_company_done)) (at start (map_route_done)))
    :effect (and
      (at start (not (mock_interview_pending)))
      (at end (mock_interview_done))
    )
  )

  (:durative-action step19_drive_to_interview
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (drive_to_interview_pending)) (at start (print_resumes_done)) (at start (shine_shoes_done)) (at start (walk_parking_done)))
    :effect (and
      (at start (not (drive_to_interview_pending)))
      (at end (drive_to_interview_done))
    )
  )

  (:durative-action step20_walk_parking
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (walk_parking_pending)) (at start (review_pitch_done)))
    :effect (and
      (at start (not (walk_parking_pending)))
      (at end (walk_parking_done))
    )
  )
)
