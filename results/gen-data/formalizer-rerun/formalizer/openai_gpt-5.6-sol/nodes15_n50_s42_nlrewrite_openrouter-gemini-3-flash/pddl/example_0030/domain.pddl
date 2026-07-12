(define (domain pet-adoption)
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
    (adoption_contract_finalized)
    (home_visit_scheduled)
    (breeds_researched)
    (food_and_bowls_purchased)
    (application_submitted)
    (shelter_candidates_met)
    (pet_carrier_purchased)
    (training_books_read)
    (pet_bed_purchased)
    (veterinarian_called)
    (living_space_cleared)
    (home_inspection_completed)
    (pet_brought_home)
    (background_check_completed)
    (pet_budget_prepared)
  )

  (:durative-action finalize_adoption_contract
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (shelter_candidates_met))
      (at start (pet_budget_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (adoption_contract_finalized)))
  )

  (:durative-action schedule_home_visit
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (pet_carrier_purchased))
      (at start (background_check_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (home_visit_scheduled)))
  )

  (:durative-action research_animal_breeds
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (breeds_researched)))
  )

  (:durative-action purchase_food_and_bowls
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (living_space_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (food_and_bowls_purchased)))
  )

  (:durative-action submit_online_application
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (application_submitted)))
  )

  (:durative-action visit_animal_shelter
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (breeds_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shelter_candidates_met)))
  )

  (:durative-action buy_pet_carrier
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pet_carrier_purchased)))
  )

  (:durative-action read_training_books
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (breeds_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (training_books_read)))
  )

  (:durative-action purchase_pet_bed
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (pet_budget_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pet_bed_purchased)))
  )

  (:durative-action call_veterinarian
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (veterinarian_called)))
  )

  (:durative-action clear_living_room_space
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (living_space_cleared)))
  )

  (:durative-action host_home_inspection
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (home_visit_scheduled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (home_inspection_completed)))
  )

  (:durative-action pick_up_pet
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (veterinarian_called))
      (at start (home_inspection_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pet_brought_home)))
  )

  (:durative-action wait_for_background_check
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (application_submitted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (background_check_completed)))
  )

  (:durative-action prepare_pet_budget
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pet_budget_prepared)))
  )
)