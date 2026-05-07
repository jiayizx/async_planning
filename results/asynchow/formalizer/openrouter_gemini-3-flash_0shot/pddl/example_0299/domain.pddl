(define (domain flavor_cigars)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (flavor_chosen)
    (cigar_selected)
    (pads_prepared)
    (pads_soaked)
    (cigar_stashed)
    (baggie_placed)
    (cigar_enjoyed)
  )

  (:durative-action choose_flavor
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flavor_chosen)))
  )

  (:durative-action select_cigar
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cigar_selected)))
  )

  (:durative-action prepare_pads
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pads_prepared)))
  )

  (:durative-action soak_pads
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (flavor_chosen)) (at start (pads_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pads_soaked)))
  )

  (:durative-action stash_cigar
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (cigar_selected)) (at start (pads_soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cigar_stashed)))
  )

  (:durative-action place_baggie
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (cigar_stashed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baggie_placed)))
  )

  (:durative-action enjoy_cigar
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (baggie_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cigar_enjoyed)))
  )
)