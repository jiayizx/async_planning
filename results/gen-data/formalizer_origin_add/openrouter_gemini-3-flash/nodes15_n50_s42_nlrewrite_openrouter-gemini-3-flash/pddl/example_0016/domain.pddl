(define (domain color_scheme_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (swatches_narrowed)
    (pots_purchased)
    (psychology_researched)
    (samples_applied)
    (inspiration_collected)
    (moodboard_created)
    (designer_consulted)
    (swatches_observed)
    (images_compared)
    (palette_finalized)
    (budget_reviewed)
    (accents_drafted)
    (galleries_browsed)
    (furniture_inventoried)
    (vibe_checked)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (budget_reviewed)) (at start (galleries_browsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (swatches_narrowed)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (images_compared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_purchased)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (galleries_browsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (psychology_researched)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (pots_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (samples_applied)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inspiration_collected)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (psychology_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (moodboard_created)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (accents_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (designer_consulted)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (swatches_narrowed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (swatches_observed)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (inspiration_collected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (images_compared)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (furniture_inventoried)) (at start (vibe_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (palette_finalized)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (pots_purchased)) (at start (inspiration_collected)) (at start (furniture_inventoried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (budget_reviewed)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (accents_drafted)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (galleries_browsed)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (furniture_inventoried)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (swatches_observed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vibe_checked)))
  )
)