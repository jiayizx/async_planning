(define (domain herbarium)
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
    (specimens_collected)
    (mounting_supplies_purchased)
    (flora_researched)
    (adhesive_tools_prepared)
    (finished_sheets_stored)
    (plants_pressed_dried)
    (specimens_labeled)
    (plant_layout_arranged)
    (specimens_cleaned_trimmed)
    (plants_secured)
  )

  (:durative-action collect_plant_specimens
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (flora_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (specimens_collected))
    )
  )

  (:durative-action purchase_mounting_supplies
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mounting_supplies_purchased))
    )
  )

  (:durative-action research_local_flora
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flora_researched))
    )
  )

  (:durative-action prepare_adhesive_and_tools
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (mounting_supplies_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (adhesive_tools_prepared))
    )
  )

  (:durative-action store_finished_sheets
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (plants_pressed_dried))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finished_sheets_stored))
    )
  )

  (:durative-action press_and_dry_plants
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (flora_researched))
      (at start (specimens_cleaned_trimmed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plants_pressed_dried))
    )
  )

  (:durative-action label_specimens
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (specimens_collected))
      (at start (plant_layout_arranged))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (specimens_labeled))
    )
  )

  (:durative-action arrange_plant_layout
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (mounting_supplies_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plant_layout_arranged))
    )
  )

  (:durative-action clean_and_trim_specimens
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (specimens_collected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (specimens_cleaned_trimmed))
    )
  )

  (:durative-action secure_plants_to_paper
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (adhesive_tools_prepared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plants_secured))
    )
  )
)