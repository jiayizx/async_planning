(define (domain hiking_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (trails_researched)
    (boots_purchased)
    (boots_broken_in)
    (summit_completed)
    (money_saved)
    (community_joined)
    (safety_seminar_attended)
    (gps_ready)
    (clothing_purchased)
    (weather_checked)
    (bag_packed)
    (bladder_purchased)
    (first_aid_assembled)
    (boots_waterproofed)
    (driven_to_trailhead)
  )

  (:durative-action research_trails
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trails_researched)))
  )

  (:durative-action save_money
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (money_saved)))
  )

  (:durative-action join_community
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (community_joined)))
  )

  (:durative-action download_gps
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gps_ready)))
  )

  (:durative-action purchase_clothing
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothing_purchased)))
  )

  (:durative-action buy_bladder
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bladder_purchased)))
  )

  (:durative-action purchase_boots
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (money_saved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_purchased)))
  )

  (:durative-action attend_seminar
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (community_joined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (safety_seminar_attended)))
  )

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (trails_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked)))
  )

  (:durative-action assemble_first_aid
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (trails_researched)) (at start (gps_ready)) (at start (bladder_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_aid_assembled)))
  )

  (:durative-action waterproof_boots
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (boots_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_waterproofed)))
  )

  (:durative-action break_in_boots
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (first_aid_assembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_broken_in)))
  )

  (:durative-action pack_bag
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (trails_researched)) (at start (boots_purchased)) (at start (boots_broken_in)) (at start (clothing_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bag_packed)))
  )

  (:durative-action drive_to_trailhead
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (bag_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_trailhead)))
  )

  (:durative-action complete_summit
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_trailhead)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summit_completed)))
  )
)