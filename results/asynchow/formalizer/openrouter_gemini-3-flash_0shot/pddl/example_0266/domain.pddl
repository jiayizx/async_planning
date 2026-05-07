(define (domain havdalah_ceremony)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (supplies_prepared)
    (wine_prayer_done)
    (spices_prayer_done)
    (candle_prayer_done)
    (concluding_prayer_done)
    (candle_extinguished)
  )

  (:durative-action prepare_supplies
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_prepared)))
  )

  (:durative-action recite_wine_prayer
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (supplies_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wine_prayer_done)))
  )

  (:durative-action recite_spices_prayer
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (supplies_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spices_prayer_done)))
  )

  (:durative-action recite_candle_prayer
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (supplies_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (candle_prayer_done)))
  )

  (:durative-action recite_concluding_prayer
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (wine_prayer_done)) (at start (spices_prayer_done)) (at start (candle_prayer_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (concluding_prayer_done)))
  )

  (:durative-action extinguish_candle
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (concluding_prayer_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (candle_extinguished)))
  )
)