(define (domain sims_hunger_games)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sims_created)
    (names_given)
    (clothes_set)
    (traits_assigned)
  )

  (:durative-action create_sims
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sims_created)))
  )

  (:durative-action give_names
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (sims_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (names_given)))
  )

  (:durative-action set_clothes
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (sims_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_set)))
  )

  (:durative-action assign_traits
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (sims_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (traits_assigned)))
  )
)