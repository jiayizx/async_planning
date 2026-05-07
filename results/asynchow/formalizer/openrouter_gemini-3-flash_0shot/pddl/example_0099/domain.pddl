(define (domain game_watching)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (snacks_bought)
    (clothes_changed)
    (seated)
    (snacks_bowled)
    (tv_on)
    (bowls_on_table)
    (channel_flipped)
  )

  (:durative-action buy_snacks
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snacks_bought)))
  )

  (:durative-action change_clothes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (snacks_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_changed)))
  )

  (:durative-action sit_on_couch
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (clothes_changed)) (at start (bowls_on_table)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seated)))
  )

  (:durative-action put_snacks_in_bowls
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (snacks_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snacks_bowled)))
  )

  (:durative-action turn_on_tv
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (snacks_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tv_on)))
  )

  (:durative-action put_bowls_on_table
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (snacks_bowled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowls_on_table)))
  )

  (:durative-action flip_channel
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (tv_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (channel_flipped)))
  )
)