(define (domain child-dental-protection)
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
    (initial_checkup_scheduled)
    (fluoride_treatment_applied)
    (dentists_researched)
    (toothbrushes_purchased)
    (flossing_video_watched)
    (filtration_system_installed)
    (flossing_demonstrated)
    (independent_flossing_supervised)
    (toothpaste_identified)
    (clinic_reviews_read)
    (consultation_attended)
    (sand_timer_bought)
    (morning_timer_set)
    (dental_floss_purchased)
    (model_flossing_practiced)
    (sealants_applied)
    (parent_recommendations_obtained)
    (hygiene_kit_organized)
    (counter_space_cleared)
    (child_driven_to_office)
  )

  (:durative-action schedule_initial_checkup
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (dentists_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (initial_checkup_scheduled))))

  (:durative-action apply_topical_fluoride
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (child_driven_to_office)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fluoride_treatment_applied))))

  (:durative-action research_pediatric_dentists
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (parent_recommendations_obtained)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dentists_researched))))

  (:durative-action purchase_toothbrushes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (toothpaste_identified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (toothbrushes_purchased))))

  (:durative-action watch_flossing_video
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flossing_video_watched))))

  (:durative-action install_filtration_system
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (filtration_system_installed))))

  (:durative-action demonstrate_flossing
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (flossing_video_watched))
      (at start (dental_floss_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flossing_demonstrated))))

  (:durative-action supervise_independent_flossing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (model_flossing_practiced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (independent_flossing_supervised))))

  (:durative-action identify_fluoride_toothpaste
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (toothpaste_identified))))

  (:durative-action read_clinic_reviews
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (dentists_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clinic_reviews_read))))

  (:durative-action attend_dental_consultation
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (initial_checkup_scheduled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consultation_attended))))

  (:durative-action buy_sand_timer
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sand_timer_bought))))

  (:durative-action set_morning_timer
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (sand_timer_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (morning_timer_set))))

  (:durative-action purchase_dental_floss
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (hygiene_kit_organized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dental_floss_purchased))))

  (:durative-action practice_flossing_on_model
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (flossing_video_watched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (model_flossing_practiced))))

  (:durative-action apply_dental_sealants
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (child_driven_to_office)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sealants_applied))))

  (:durative-action ask_parent_recommendations
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (parent_recommendations_obtained))))

  (:durative-action organize_hygiene_kit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (counter_space_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hygiene_kit_organized))))

  (:durative-action clear_counter_space
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (filtration_system_installed))
      (at start (independent_flossing_supervised)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (counter_space_cleared))))

  (:durative-action drive_child_to_office
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (child_driven_to_office))))
)