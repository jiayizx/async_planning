(define (domain fundraise)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (baked_sweets)
    (fundraiser_set_up)
    (media_sent)
    (money_collected)
    (money_raised)
    (table_set_up)
    (goods_offered)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baked_sweets)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fundraiser_set_up)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (fundraiser_set_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (media_sent)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (media_sent)) (at start (goods_offered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (money_collected)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1728000)
    :condition (and (at start (step_pending ?s)) (at start (money_collected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (money_raised)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (baked_sweets)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_set_up)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (table_set_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (goods_offered)))
  )
)