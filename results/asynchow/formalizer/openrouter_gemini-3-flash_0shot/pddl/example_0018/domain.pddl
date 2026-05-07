(define (domain back_to_school)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (list_obtained)
    (supplies_bought)
    (supplies_organized)
    (book_list_obtained)
    (books_bought)
    (backpack_packed)
  )

  (:durative-action get_supply_list
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (list_obtained)))
  )

  (:durative-action buy_supplies
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (list_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_bought)))
  )

  (:durative-action get_book_list
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (book_list_obtained)))
  )

  (:durative-action buy_books
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (book_list_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (books_bought)))
  )

  (:durative-action organize_supplies
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (supplies_bought)) (at start (books_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_organized)))
  )

  (:durative-action pack_backpack
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (supplies_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backpack_packed)))
  )
)