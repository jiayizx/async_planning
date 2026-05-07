(define (domain getting_ready)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shower_started)
    (in_shower)
    (shower_taken)
    (dried_off)
    (teeth_brushed)
    (hair_combed)
    (outfit_picked)
  )

  (:durative-action start_shower
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_started)))
  )

  (:durative-action get_in_shower
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (shower_started)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_shower)))
  )

  (:durative-action take_shower
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (in_shower)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_taken)))
  )

  (:durative-action dry_off
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shower_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dried_off)))
  )

  (:durative-action brush_teeth
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (dried_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (teeth_brushed)))
  )

  (:durative-action comb_hair
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (dried_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hair_combed)))
  )

  (:durative-action pick_outfit
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (teeth_brushed)) (at start (hair_combed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_picked)))
  )
)