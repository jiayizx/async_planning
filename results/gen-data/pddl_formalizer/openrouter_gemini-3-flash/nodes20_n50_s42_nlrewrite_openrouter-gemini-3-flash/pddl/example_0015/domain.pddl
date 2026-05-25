(define (domain job_interview_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (projects_researched)
    (resume_printed)
    (outfit_ironed)
    (briefcase_packed)
    (alarm_set)
    (route_mapped)
    (shoes_out)
    (phone_charged)
    (dressed)
    (breakfast_eaten)
    (weather_checked)
    (details_confirmed)
    (deodorant_applied)
    (id_checked)
    (wallet_keys_located)
    (linkedin_reviewed)
    (mirror_checked)
    (shoes_shined)
    (arrived_at_office)
    (teeth_brushed)
  )

  (:durative-action research_projects
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (projects_researched)))
  )

  (:durative-action print_resume
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (projects_researched)) (at start (briefcase_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (resume_printed)))
  )

  (:durative-action iron_outfit
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_ironed)))
  )

  (:durative-action pack_briefcase
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (outfit_ironed)) (at start (dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (briefcase_packed)))
  )

  (:durative-action set_alarm
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (alarm_set)))
  )

  (:durative-action map_route
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (details_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (route_mapped)))
  )

  (:durative-action put_shoes_out
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_out)))
  )

  (:durative-action charge_phone
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_charged)))
  )

  (:durative-action shower_and_dress
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (shoes_shined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed)))
  )

  (:durative-action eat_breakfast
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breakfast_eaten)))
  )

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked)))
  )

  (:durative-action confirm_details
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (linkedin_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (details_confirmed)))
  )

  (:durative-action apply_deodorant
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (outfit_ironed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (deodorant_applied)))
  )

  (:durative-action check_id
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (wallet_keys_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (id_checked)))
  )

  (:durative-action locate_wallet_keys
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_keys_located)))
  )

  (:durative-action review_linkedin
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (linkedin_reviewed)))
  )

  (:durative-action mirror_check
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (id_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mirror_checked)))
  )

  (:durative-action shine_shoes
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shoes_out)) (at start (details_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_shined)))
  )

  (:durative-action drive_to_office
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (outfit_ironed)) (at start (phone_charged)) (at start (teeth_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_office)))
  )

  (:durative-action brush_teeth
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (breakfast_eaten)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (teeth_brushed)))
  )
)