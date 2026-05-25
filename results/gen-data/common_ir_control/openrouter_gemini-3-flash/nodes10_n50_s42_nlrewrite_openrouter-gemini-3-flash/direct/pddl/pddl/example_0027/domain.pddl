(define (domain ceviche_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (knife_sharpened)
    (plate_garnished)
    (fish_tossed)
    (fish_cured)
    (aromatics_washed)
    (aromatics_minced)
    (fish_sourced)
    (onions_sliced)
    (ceviche_plated)
    (fish_diced)
  )

  (:durative-action sharpen_knife
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knife_sharpened)))
  )

  (:durative-action garnish_plate
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (fish_sourced)) (at start (ceviche_plated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plate_garnished)))
  )

  (:durative-action toss_fish
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (aromatics_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_tossed)))
  )

  (:durative-action cure_fish
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (fish_tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_cured)))
  )

  (:durative-action wash_aromatics
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aromatics_washed)))
  )

  (:durative-action mince_aromatics
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (aromatics_washed)) (at start (onions_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aromatics_minced)))
  )

  (:durative-action source_fish
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_sourced)))
  )

  (:durative-action slice_onions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (aromatics_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_sliced)))
  )

  (:durative-action plate_ceviche
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (fish_diced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ceviche_plated)))
  )

  (:durative-action dice_fish
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (knife_sharpened)) (at start (fish_sourced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_diced)))
  )
)