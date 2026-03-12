(define (domain fresh_start)
  (:requirements :durative-actions)
  (:predicates
    (sort_clothes_pending)
    (sort_clothes_done)
    (research_gym_pending)
    (research_gym_done)
    (draft_goals_pending)
    (draft_goals_done)
    (dropoff_donation_pending)
    (dropoff_donation_done)
    (review_bank_pending)
    (review_bank_done)
    (deep_clean_closet_pending)
    (deep_clean_closet_done)
    (buy_planner_pending)
    (buy_planner_done)
    (calendarize_pending)
    (calendarize_done)
    (host_dinner_pending)
    (host_dinner_done)
    (finalize_budget_pending)
    (finalize_budget_done)
  )

  (:durative-action sort_clothes
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (sort_clothes_pending))
    :effect (and (at start (not (sort_clothes_pending))) (at end (sort_clothes_done)))
  )

  (:durative-action research_gym
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (research_gym_pending)) (at start (review_bank_done)))
    :effect (and (at start (not (research_gym_pending))) (at end (research_gym_done)))
  )

  (:durative-action draft_goals
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (draft_goals_pending))
    :effect (and (at start (not (draft_goals_pending))) (at end (draft_goals_done)))
  )

  (:durative-action dropoff_donation
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (dropoff_donation_pending)) (at start (sort_clothes_done)))
    :effect (and (at start (not (dropoff_donation_pending))) (at end (dropoff_donation_done)))
  )

  (:durative-action review_bank
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (review_bank_pending))
    :effect (and (at start (not (review_bank_pending))) (at end (review_bank_done)))
  )

  (:durative-action deep_clean_closet
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (deep_clean_closet_pending)) (at start (dropoff_donation_done)))
    :effect (and (at start (not (deep_clean_closet_pending))) (at end (deep_clean_closet_done)))
  )

  (:durative-action buy_planner
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (buy_planner_pending)) (at start (finalize_budget_done)))
    :effect (and (at start (not (buy_planner_pending))) (at end (buy_planner_done)))
  )

  (:durative-action calendarize
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (calendarize_pending)) (at start (buy_planner_done)) (at start (finalize_budget_done)))
    :effect (and (at start (not (calendarize_pending))) (at end (calendarize_done)))
  )

  (:durative-action host_dinner
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (host_dinner_pending)) (at start (sort_clothes_done)) (at start (calendarize_done)))
    :effect (and (at start (not (host_dinner_pending))) (at end (host_dinner_done)))
  )

  (:durative-action finalize_budget
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (finalize_budget_pending)) (at start (research_gym_done)) (at start (draft_goals_done)))
    :effect (and (at start (not (finalize_budget_pending))) (at end (finalize_budget_done)))
  )
)
