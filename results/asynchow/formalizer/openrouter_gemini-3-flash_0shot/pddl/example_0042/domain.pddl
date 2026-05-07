(define (domain breakfast_in_bed)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pan_heated)
    (eggs_cracked)
    (eggs_whisked)
    (butter_added)
    (eggs_poured)
    (eggs_scrambled)
    (breakfast_ready)
  )

  (:durative-action heat_pan
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pan_heated)))
  )

  (:durative-action crack_eggs
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_cracked)))
  )

  (:durative-action whisk_eggs
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (eggs_cracked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_whisked)))
  )

  (:durative-action add_butter
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (pan_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_added)))
  )

  (:durative-action pour_eggs
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (eggs_whisked)) (at start (butter_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_poured)))
  )

  (:durative-action scramble_eggs
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (eggs_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_scrambled)))
  )

  (:durative-action plate_eggs
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (eggs_scrambled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breakfast_ready)))
  )
)