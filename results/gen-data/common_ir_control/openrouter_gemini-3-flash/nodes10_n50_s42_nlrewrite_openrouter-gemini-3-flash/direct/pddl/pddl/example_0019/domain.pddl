(define (domain new_year_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (office_decluttered)
    (charity_researched)
    (planner_purchased)
    (docs_shredded)
    (clothes_sorted)
    (desk_cleaned)
    (car_loaded)
    (donated)
    (files_organized)
    (goals_written)
  )

  (:durative-action declutter_office
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (office_decluttered)))
  )

  (:durative-action research_charity
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (clothes_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (charity_researched)))
  )

  (:durative-action purchase_planner
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (planner_purchased)))
  )

  (:durative-action shred_docs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (office_decluttered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (docs_shredded)))
  )

  (:durative-action sort_clothes
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_sorted)))
  )

  (:durative-action clean_desk
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (docs_shredded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (desk_cleaned)))
  )

  (:durative-action load_car
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (goals_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_loaded)))
  )

  (:durative-action drop_off_items
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (car_loaded)) (at start (goals_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (donated)))
  )

  (:durative-action organize_files
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (office_decluttered)) (at start (donated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (files_organized)))
  )

  (:durative-action write_goals
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (charity_researched)) (at start (planner_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (goals_written)))
  )
)