(define (domain best-club-study)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assigned_step1 ?s - step)
    (assigned_step2 ?s - step)
    (assigned_step3 ?s - step)
    (assigned_step4 ?s - step)
    (assigned_step5 ?s - step)
    (assigned_step6 ?s - step)
    (assigned_step7 ?s - step)
    (assigned_step8 ?s - step)
    (assigned_step9 ?s - step)
    (assigned_step10 ?s - step)
    (assigned_step11 ?s - step)
    (assigned_step12 ?s - step)
    (assigned_step13 ?s - step)
    (assigned_step14 ?s - step)
    (assigned_step15 ?s - step)
    (assigned_step16 ?s - step)
    (assigned_step17 ?s - step)
    (assigned_step18 ?s - step)
    (assigned_step19 ?s - step)
    (assigned_step20 ?s - step)
    (ranking_list_compiled)
    (dj_interviews_completed)
    (ratings_cross_referenced)
    (students_surveyed)
    (venue_shortlist_created)
    (club_locations_mapped)
    (online_reviews_read)
    (neighborhoods_checked)
    (historical_popularity_researched)
    (demographic_appeal_analyzed)
    (final_summary_report_written)
    (prices_and_charges_compared)
    (sound_systems_evaluated)
    (security_measures_documented)
    (event_calendars_reviewed)
    (questionnaire_drafted)
    (promoters_contacted)
    (nightlife_apps_downloaded)
    (transit_accessibility_checked)
    (peak_hours_site_visit_completed)
  )

  (:durative-action compile_final_ranking_list
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step1 ?s))
      (at start (peak_hours_site_visit_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ranking_list_compiled))))

  (:durative-action interview_local_djs
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step2 ?s))
      (at start (historical_popularity_researched))
      (at start (promoters_contacted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dj_interviews_completed))))

  (:durative-action cross_reference_ratings
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step3 ?s))
      (at start (nightlife_apps_downloaded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ratings_cross_referenced))))

  (:durative-action survey_university_students
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step4 ?s))
      (at start (questionnaire_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (students_surveyed))))

  (:durative-action create_venue_shortlist
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (venue_shortlist_created))))

  (:durative-action map_club_locations
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (club_locations_mapped))))

  (:durative-action read_online_reviews
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (online_reviews_read))))

  (:durative-action visit_physical_locations
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step8 ?s))
      (at start (club_locations_mapped))
      (at start (transit_accessibility_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (neighborhoods_checked))))

  (:durative-action research_historical_popularity
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step9 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (historical_popularity_researched))))

  (:durative-action analyze_demographic_appeal
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step10 ?s))
      (at start (students_surveyed))
      (at start (online_reviews_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (demographic_appeal_analyzed))))

  (:durative-action write_final_summary_report
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step11 ?s))
      (at start (ranking_list_compiled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (final_summary_report_written))))

  (:durative-action compare_prices_and_charges
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step12 ?s))
      (at start (sound_systems_evaluated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (prices_and_charges_compared))))

  (:durative-action evaluate_sound_systems
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step13 ?s))
      (at start (event_calendars_reviewed))
      (at start (promoters_contacted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sound_systems_evaluated))))

  (:durative-action document_security_measures
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step14 ?s))
      (at start (neighborhoods_checked))
      (at start (prices_and_charges_compared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (security_measures_documented))))

  (:durative-action review_event_calendars
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step15 ?s))
      (at start (venue_shortlist_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (event_calendars_reviewed))))

  (:durative-action draft_questionnaire
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step16 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (questionnaire_drafted))))

  (:durative-action contact_club_promoters
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step17 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (promoters_contacted))))

  (:durative-action download_nightlife_apps
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step18 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (nightlife_apps_downloaded))))

  (:durative-action check_transit_accessibility
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step19 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (transit_accessibility_checked))))

  (:durative-action conduct_peak_hours_site_visit
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (assigned_step20 ?s))
      (at start (venue_shortlist_created))
      (at start (sound_systems_evaluated))
      (at start (questionnaire_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (peak_hours_site_visit_completed))))
)