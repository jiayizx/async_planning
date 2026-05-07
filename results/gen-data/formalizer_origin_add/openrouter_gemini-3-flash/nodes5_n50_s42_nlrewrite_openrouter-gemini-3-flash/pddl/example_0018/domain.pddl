(define (domain orange_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchased)
    (poured)
    (located)
    (prepared)
    (orange_made)
  )

  (:durative-action purchase_colors
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchased)))
  )

  (:durative-action pour_yellow
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poured)))
  )

  (:durative-action locate_stick
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (located)))
  )

  (:durative-action prepare_workspace
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prepared)))
  )

  (:durative-action add_red
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (poured)) (at start (purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orange_made)))
  )
)