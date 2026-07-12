(define (domain new-year-fresh)
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
    (office_decluttered)
    (donation_centers_researched)
    (planner_purchased)
    (documents_shredded)
    (clothes_sorted)
    (desk_and_shelves_cleaned)
    (car_loaded)
    (donations_dropped_off)
    (remaining_files_organized)
    (january_goals_scheduled)
  )

  (:durative-action declutter_home_office
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (office_decluttered))
    )
  )

  (:durative-action research_donation_centers
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (clothes_sorted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (donation_centers_researched))
    )
  )

  (:durative-action purchase_physical_planner
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (planner_purchased))
    )
  )

  (:durative-action shred_sensitive_documents
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (office_decluttered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (documents_shredded))
    )
  )

  (:durative-action sort_clothes_for_donation
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clothes_sorted))
    )
  )

  (:durative-action deep_clean_desk_and_shelves
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (documents_shredded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (desk_and_shelves_cleaned))
    )
  )

  (:durative-action load_car_with_donations
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (january_goals_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (car_loaded))
    )
  )

  (:durative-action drive_and_drop_off_donations
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (car_loaded))
      (at start (january_goals_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (donations_dropped_off))
    )
  )

  (:durative-action organize_remaining_files
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (office_decluttered))
      (at start (donations_dropped_off))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (remaining_files_organized))
    )
  )

  (:durative-action write_january_goals_and_schedule
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (donation_centers_researched))
      (at start (planner_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (january_goals_scheduled))
    )
  )
)