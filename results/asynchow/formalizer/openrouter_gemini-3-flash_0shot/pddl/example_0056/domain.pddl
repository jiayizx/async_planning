(define (domain dog_buying)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (store_found)
    (site_browsed)
    (availability_checked)
    (at_store)
    (pets_interacted)
    (at_cashier)
  )

  (:durative-action look_up_store
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (store_found)))
  )

  (:durative-action browse_site
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (store_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (site_browsed)))
  )

  (:durative-action check_availability
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (store_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (availability_checked)))
  )

  (:durative-action go_to_store
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (site_browsed)) (at start (availability_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )

  (:durative-action interact_with_pets
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (at_store)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pets_interacted)))
  )

  (:durative-action walk_to_cashier
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (pets_interacted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_cashier)))
  )
)