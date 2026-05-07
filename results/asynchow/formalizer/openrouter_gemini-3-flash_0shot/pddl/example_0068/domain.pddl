(define (domain computer_purchase)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (money_saved)
    (sale_started)
    (website_visited)
    (purchase_completed)
  )

  (:durative-action research_computer
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action save_money
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (money_saved)))
  )

  (:durative-action wait_for_sale
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sale_started)))
  )

  (:durative-action visit_website
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (money_saved)) (at start (sale_started)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_visited)))
  )

  (:durative-action complete_purchase
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (website_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchase_completed)))
  )
)