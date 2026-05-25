(define (domain marathon_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shoes_purchased)
    (training_run_done)
    (taper_done)
    (research_done)
    (travel_done)
    (club_joined)
    (registered)
    (packed)
    (exam_done)
    (celebration_done)
    (playlist_done)
    (watch_bought)
    (carbs_loaded)
    (rulebook_read)
    (marathon_run)
    (bib_picked)
    (plan_downloaded)
    (volunteered)
    (driven_to_start)
    (training_executed)
  )

  (:durative-action step1_purchase_shoes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (exam_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_purchased)))
  )

  (:durative-action step2_training_run
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (taper_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (training_run_done)))
  )

  (:durative-action step3_taper
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_start)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (taper_done)))
  )

  (:durative-action step4_research
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action step5_travel
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (bib_picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (travel_done)))
  )

  (:durative-action step6_join_club
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (club_joined)))
  )

  (:durative-action step7_register
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (research_done)) (at start (exam_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (registered)))
  )

  (:durative-action step8_pack_gear
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (shoes_purchased)) (at start (carbs_loaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packed)))
  )

  (:durative-action step9_physical_exam
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (training_executed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exam_done)))
  )

  (:durative-action step10_celebration
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (marathon_run)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (celebration_done)))
  )

  (:durative-action step11_playlist
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (watch_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (playlist_done)))
  )

  (:durative-action step12_buy_watch
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watch_bought)))
  )

  (:durative-action step13_carb_loading
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (training_run_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carbs_loaded)))
  )

  (:durative-action step14_read_rules
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rulebook_read)))
  )

  (:durative-action step15_run_marathon
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (club_joined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marathon_run)))
  )

  (:durative-action step16_pick_bib
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bib_picked)))
  )

  (:durative-action step17_download_plan
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (watch_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plan_downloaded)))
  )

  (:durative-action step18_volunteer
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (club_joined)) (at start (rulebook_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (volunteered)))
  )

  (:durative-action step19_drive_to_start
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (travel_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_start)))
  )

  (:durative-action step20_execute_training
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and (at start (step_pending ?s)) (at start (plan_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (training_executed)))
  )
)