(define (domain poetry_book_creation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (manuscript_ready)
    (route_found)
    (collection_assembled)
    (materials_sent)
  )

  ;; Step 1: Make sure your manuscript is ready for publication. (2 months)
  ;; Constraint: Step 3 must precede Step 1.
  ;; Duration: 2 months = 60 days = 1440 hours = 86400 minutes = 5184000 seconds.
  (:durative-action prepare_manuscript
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (collection_assembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (manuscript_ready)))
  )

  ;; Step 2: Find the right publishing route for you. (2 weeks)
  ;; No predecessors.
  ;; Duration: 2 weeks = 14 days = 336 hours = 20160 minutes = 1209600 seconds.
  (:durative-action find_route
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (route_found)))
  )

  ;; Step 3: Assemble your collection. (2 months)
  ;; No predecessors.
  ;; Duration: 2 months = 60 days = 1440 hours = 86400 minutes = 5184000 seconds.
  (:durative-action assemble_collection
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (collection_assembled)))
  )

  ;; Step 4: Send in the materials. (2 weeks)
  ;; Constraints: Step 1 must precede Step 4, Step 2 must precede Step 4.
  ;; Duration: 2 weeks = 14 days = 336 hours = 20160 minutes = 1209600 seconds.
  (:durative-action send_materials
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (manuscript_ready)) (at start (route_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (materials_sent)))
  )
)