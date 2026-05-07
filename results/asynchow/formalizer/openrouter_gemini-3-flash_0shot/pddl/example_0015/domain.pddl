(define (domain snowman_builder)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decided)
    (gloves_on)
    (boots_on)
    (coat_on)
    (hat_on)
    (outside)
    (snowman_built)
  )

  (:durative-action step1_decide
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decided)))
  )

  (:durative-action step2_gloves
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_on)))
  )

  (:durative-action step3_boots
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_on)))
  )

  (:durative-action step4_coat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coat_on)))
  )

  (:durative-action step5_hat
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hat_on)))
  )

  (:durative-action step6_walk
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (gloves_on)) (at start (boots_on)) (at start (coat_on)) (at start (hat_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outside)))
  )

  (:durative-action step7_roll
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (outside)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snowman_built)))
  )
)