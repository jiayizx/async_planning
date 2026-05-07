(define (domain fundraiser)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sweets_baked)
    (social_media_setup)
    (page_sent)
    (money_collected)
    (goal_met)
    (table_setup)
    (goods_offered)
  )

  (:durative-action bake_sweets
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sweets_baked)))
  )

  (:durative-action setup_social_media
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (social_media_setup)))
  )

  (:durative-action send_page
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (social_media_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (page_sent)))
  )

  (:durative-action setup_table
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (sweets_baked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_setup)))
  )

  (:durative-action offer_goods
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (table_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (goods_offered)))
  )

  (:durative-action collect_money
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (page_sent)) (at start (goods_offered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (money_collected)))
  )

  (:durative-action repeat_until_goal
    :parameters (?s - step)
    :duration (= ?duration 1728000)
    :condition (and (at start (step_pending ?s)) (at start (money_collected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (goal_met)))
  )
)