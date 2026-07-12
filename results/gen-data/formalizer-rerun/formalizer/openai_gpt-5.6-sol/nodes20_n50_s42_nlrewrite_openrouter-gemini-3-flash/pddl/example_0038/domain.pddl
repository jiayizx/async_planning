(define (domain marathon-participation)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (shoes_purchased)
    (long_run_completed)
    (activity_tapered)
    (events_researched)
    (hotel_checked_in)
    (running_club_joined)
    (race_registered)
    (gear_packed)
    (physical_exam_completed)
    (celebration_attended)
    (playlist_created)
    (gps_watch_purchased)
    (carb_loading_completed)
    (rulebook_read)
    (marathon_completed)
    (bib_chip_collected)
    (training_plan_downloaded)
    (water_station_volunteered)
    (starting_line_reached)
    (training_schedule_completed)
  )

  (:durative-action purchase-racing-shoes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (physical_exam_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_purchased)))
  )

  (:durative-action complete-long-training-run
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (activity_tapered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (long_run_completed)))
  )

  (:durative-action taper-physical-activity
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (starting_line_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (activity_tapered)))
  )

  (:durative-action research-marathon-events
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (events_researched)))
  )

  (:durative-action travel-and-check-in
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (bib_chip_collected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hotel_checked_in)))
  )

  (:durative-action join-running-club
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (running_club_joined)))
  )

  (:durative-action register-for-race
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (events_researched)) (at start (physical_exam_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (race_registered)))
  )

  (:durative-action pack-gear-bag
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (shoes_purchased)) (at start (carb_loading_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_packed)))
  )

  (:durative-action undergo-physical-exam
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (training_schedule_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (physical_exam_completed)))
  )

  (:durative-action attend-celebration-dinner
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (marathon_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (celebration_attended)))
  )

  (:durative-action create-playlist
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (gps_watch_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (playlist_created)))
  )

  (:durative-action purchase-gps-watch
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gps_watch_purchased)))
  )

  (:durative-action increase-carbohydrate-intake
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (long_run_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carb_loading_completed)))
  )

  (:durative-action read-rulebook
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rulebook_read)))
  )

  (:durative-action run-marathon
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (running_club_joined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marathon_completed)))
  )

  (:durative-action collect-bib-and-chip
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (race_registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bib_chip_collected)))
  )

  (:durative-action download-training-plan
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (gps_watch_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (training_plan_downloaded)))
  )

  (:durative-action volunteer-at-water-station
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (running_club_joined)) (at start (rulebook_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_station_volunteered)))
  )

  (:durative-action drive-to-starting-line
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (hotel_checked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (starting_line_reached)))
  )

  (:durative-action execute-training-schedule
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (training_plan_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (training_schedule_completed)))
  )
)