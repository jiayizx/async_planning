(define (domain scrub_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (materials_gathered)
    (sugar_added)
    (oil_added)
    (mixture_ready)
    (scrub_applied)
    (scrub_rinsed)
    (skin_dried)
  )

  (:durative-action gather_materials
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (materials_gathered)))
  )

  (:durative-action add_sugar
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (materials_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugar_added)))
  )

  (:durative-action add_oil
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (materials_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_added)))
  )

  (:durative-action mix_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (sugar_added)) (at start (oil_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_ready)))
  )

  (:durative-action apply_scrub
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mixture_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scrub_applied)))
  )

  (:durative-action rinse_scrub
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (scrub_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scrub_rinsed)))
  )

  (:durative-action dry_skin
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (scrub_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skin_dried)))
  )
)