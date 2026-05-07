(define (domain organize-house)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (thrown_out_done)
    (bought_storage_done)
    (bookshelves_done)
    (drawers_done)
    (bought_kitchen_done)
  )

  ;; Step 1: Throw out things you don't need (7200s)
  (:durative-action do_step1_throw_out
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (thrown_out_done))
    )
  )

  ;; Step 2: Purchase storage containers that look good out in the open (3600s)
  (:durative-action do_step2_buy_storage
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (thrown_out_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bought_storage_done))
    )
  )

  ;; Step 3: Use bookshelves to create a more organized storage system (14400s)
  (:durative-action do_step3_bookshelves
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (thrown_out_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bookshelves_done))
    )
  )

  ;; Step 4: Use drawers and racks to maximize your closet space (7200s)
  (:durative-action do_step4_drawers_racks
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (thrown_out_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drawers_done))
    )
  )

  ;; Step 5: Purchase kitchen containers that stack (7200s)
  (:durative-action do_step5_buy_kitchen_containers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (thrown_out_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bought_kitchen_done))
    )
  )
)
