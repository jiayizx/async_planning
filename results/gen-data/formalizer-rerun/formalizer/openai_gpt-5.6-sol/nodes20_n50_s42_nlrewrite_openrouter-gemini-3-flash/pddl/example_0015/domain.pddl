(define (domain job-interview)
  (:requirements :durative-actions :typing)
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
    (company_researched)
    (resumes_printed)
    (outfit_ironed)
    (briefcase_packed)
    (backup_alarm_set)
    (route_mapped)
    (shoes_positioned)
    (phone_charged)
    (showered_and_dressed)
    (breakfast_eaten)
    (weather_checked)
    (interview_details_confirmed)
    (fragrance_applied)
    (photo_id_checked)
    (wallet_and_keys_located)
    (interviewer_profile_reviewed)
    (mirror_check_completed)
    (shoes_shined)
    (arrived_at_office)
    (teeth_brushed)
  )

  (:durative-action research_company
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (company_researched))))

  (:durative-action print_resumes
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (company_researched)) (at start (briefcase_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (resumes_printed))))

  (:durative-action select_and_iron_outfit
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_ironed))))

  (:durative-action pack_briefcase
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (outfit_ironed)) (at start (showered_and_dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (briefcase_packed))))

  (:durative-action set_backup_alarm
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backup_alarm_set))))

  (:durative-action map_route
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (interview_details_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (route_mapped))))

  (:durative-action position_shoes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_positioned))))

  (:durative-action charge_phone
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_charged))))

  (:durative-action shower_and_dress
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (shoes_shined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (showered_and_dressed))))

  (:durative-action eat_breakfast
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (showered_and_dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breakfast_eaten))))

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked))))

  (:durative-action confirm_interview_details
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (interviewer_profile_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interview_details_confirmed))))

  (:durative-action apply_fragrance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (outfit_ironed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fragrance_applied))))

  (:durative-action check_photo_id
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (wallet_and_keys_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (photo_id_checked))))

  (:durative-action locate_wallet_and_keys
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_and_keys_located))))

  (:durative-action review_interviewer_profile
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interviewer_profile_reviewed))))

  (:durative-action final_mirror_check
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (photo_id_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mirror_check_completed))))

  (:durative-action shine_shoes
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (shoes_positioned)) (at start (interview_details_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_shined))))

  (:durative-action drive_to_office
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (outfit_ironed)) (at start (phone_charged)) (at start (teeth_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_office))))

  (:durative-action brush_teeth
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (breakfast_eaten)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (teeth_brushed))))
)