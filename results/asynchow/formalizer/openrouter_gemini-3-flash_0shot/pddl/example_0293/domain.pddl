(define (domain kurt_cobain_costume)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hair_ready)
    (clothes_bought)
    (jeans_ripped)
    (flannel_ripped)
    (socks_worn)
    (shoes_ready)
    (sunglasses_ready)
  )

  (:durative-action get_hair
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hair_ready)))
  )

  (:durative-action buy_clothes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_bought)))
  )

  (:durative-action rip_jeans
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (clothes_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jeans_ripped)))
  )

  (:durative-action rip_flannel
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (clothes_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flannel_ripped)))
  )

  (:durative-action wear_socks
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_worn)))
  )

  (:durative-action get_shoes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_ready)))
  )

  (:durative-action get_sunglasses
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunglasses_ready)))
  )
)