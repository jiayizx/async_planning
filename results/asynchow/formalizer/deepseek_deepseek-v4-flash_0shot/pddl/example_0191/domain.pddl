(define (domain sims_hunger_games)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending_step ?s - step)
    (step_done ?s - step)
    (sims_created)
    (characters_named)
    (clothes_set)
    (traits_given)
  )
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (pending_step step1))
    :effect (and
      (at start (not (pending_step step1)))
      (at end (step_done step1))
      (at end (sims_created))
    )
  )
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (pending_step step2))
      (at start (sims_created))
    )
    :effect (and
      (at start (not (pending_step step2)))
      (at end (step_done step2))
      (at end (characters_named))
    )
  )
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (pending_step step3))
      (at start (sims_created))
    )
    :effect (and
      (at start (not (pending_step step3)))
      (at end (step_done step3))
      (at end (clothes_set))
    )
  )
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (pending_step step4))
      (at start (sims_created))
    )
    :effect (and
      (at start (not (pending_step step4)))
      (at end (step_done step4))
      (at end (traits_given))
    )
  )
)