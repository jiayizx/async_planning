(define (domain sims3_hunger_games)
  (:requirements :durative-actions)
  (:predicates
    (create_sims_pending)
    (create_sims_done)
    (name_sims_pending)
    (name_sims_done)
    (clothe_sims_pending)
    (clothe_sims_done)
    (trait_sims_pending)
    (trait_sims_done)
  )

  (:durative-action create_sims
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (create_sims_pending))
    :effect (and (at start (not (create_sims_pending))) (at end (create_sims_done)))
  )

  (:durative-action name_sims
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (name_sims_pending)) (at start (create_sims_done)))
    :effect (and (at start (not (name_sims_pending))) (at end (name_sims_done)))
  )

  (:durative-action clothe_sims
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (clothe_sims_pending)) (at start (create_sims_done)))
    :effect (and (at start (not (clothe_sims_pending))) (at end (clothe_sims_done)))
  )

  (:durative-action trait_sims
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (trait_sims_pending)) (at start (create_sims_done)))
    :effect (and (at start (not (trait_sims_pending))) (at end (trait_sims_done)))
  )
)
