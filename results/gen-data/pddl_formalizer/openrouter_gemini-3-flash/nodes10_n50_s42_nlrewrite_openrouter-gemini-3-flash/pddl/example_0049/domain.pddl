(define (domain herbarium_creation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (specimens_collected)
    (supplies_purchased)
    (flora_researched)
    (adhesive_prepared)
    (sheets_stored)
    (plants_pressed)
    (specimens_labeled)
    (layout_arranged)
    (specimens_trimmed)
    (plants_secured)
  )

  (:durative-action collect_specimens
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (flora_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (specimens_collected)))
  )

  (:durative-action purchase_supplies
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_purchased)))
  )

  (:durative-action research_flora
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flora_researched)))
  )

  (:durative-action prepare_adhesive
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (supplies_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (adhesive_prepared)))
  )

  (:durative-action store_sheets
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (plants_pressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sheets_stored)))
  )

  (:durative-action press_plants
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (specimens_trimmed)) (at start (flora_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plants_pressed)))
  )

  (:durative-action label_specimens
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (specimens_collected)) (at start (layout_arranged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (specimens_labeled)))
  )

  (:durative-action arrange_layout
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (supplies_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layout_arranged)))
  )

  (:durative-action trim_specimens
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (specimens_collected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (specimens_trimmed)))
  )

  (:durative-action secure_plants
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (adhesive_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plants_secured)))
  )
)