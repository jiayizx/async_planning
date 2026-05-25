(define (domain new_year_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decluttered)
    (charity_researched)
    (planner_purchased)
    (documents_shredded)
    (clothes_sorted)
    (desk_cleaned)
    (car_loaded)
    (donations_dropped)
    (files_organized)
    (goals_written)
  )

  (:durative-action declutter_office
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decluttered)))
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

  (:durative-action shred_documents
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (decluttered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (documents_shredded)))
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
    :condition (and (at start (step_pending ?s)) (at start (decluttered)) (at start (documents_shredded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (desk_cleaned)))
  )

  (:durative-action load_car
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (charity_researched)) (at start (planner_purchased)) (at start (clothes_sorted)) (at start (goals_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_loaded)))
  )

  (:durative-action drop_off_donations
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (charity_researched)) (at start (planner_purchased)) (at start (clothes_sorted)) (at start (car_loaded)) (at start (goals_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (donations_dropped)))
  )

  (:durative-action organize_files
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (decluttered)) (at start (charity_researched)) (at start (planner_purchased)) (at start (clothes_sorted)) (at start (car_loaded)) (at start (donations_dropped)) (at start (goals_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (files_organized)))
  )

  (:durative-action write_goals
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (charity_researched)) (at start (planner_purchased)) (at start (clothes_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (goals_written)))
  )
)