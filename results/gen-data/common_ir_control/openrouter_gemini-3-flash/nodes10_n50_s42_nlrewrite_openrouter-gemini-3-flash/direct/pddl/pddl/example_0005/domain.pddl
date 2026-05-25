(define (domain wear_gloves_to_bed)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cream_applied)
    (gloves_located)
    (gloves_checked)
    (bed_prepared)
    (temp_set)
    (water_placed)
    (hands_washed)
    (gloves_worn)
    (panel_accessed)
    (gloves_retrieved)
  )

  (:durative-action apply_cream
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (gloves_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_applied)))
  )

  (:durative-action locate_gloves
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_located)))
  )

  (:durative-action check_gloves
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (gloves_located)) (at start (hands_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_checked)))
  )

  (:durative-action prepare_bed
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bed_prepared)))
  )

  (:durative-action set_temp
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (panel_accessed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (temp_set)))
  )

  (:durative-action place_water
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (bed_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_placed)))
  )

  (:durative-action wash_hands
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_washed)))
  )

  (:durative-action wear_gloves
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (cream_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_worn)))
  )

  (:durative-action access_panel
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (panel_accessed)))
  )

  (:durative-action retrieve_gloves
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (gloves_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_retrieved)))
  )
)