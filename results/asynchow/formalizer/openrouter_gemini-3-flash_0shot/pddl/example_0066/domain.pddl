(define (domain grocery_list)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cabinets_checked)
    (fridge_checked)
    (requirements_considered)
    (pen_paper_ready)
    (list_written)
  )

  (:durative-action check_cabinets
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cabinets_checked)))
  )

  (:durative-action check_fridge
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fridge_checked)))
  )

  (:durative-action consider_requirements
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (cabinets_checked)) (at start (fridge_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (requirements_considered)))
  )

  (:durative-action grab_pen_paper
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (requirements_considered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pen_paper_ready)))
  )

  (:durative-action jot_down_items
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (requirements_considered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (list_written)))
  )
)