(define (domain salad_nicoise)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (vinaigrette_whisked)
    (water_boiled)
    (components_arranged)
    (vegetables_refreshed)
    (vegetables_dried)
    (potatoes_sliced)
    (eggs_out)
    (eggs_peeled)
    (eggs_quartered)
    (eggs_shocked)
    (eggs_simmered)
    (beans_drained)
    (beans_trimmed)
    (tomatoes_prepared)
    (onions_sliced)
    (ingredients_measured)
    (aromatics_minced)
    (olives_prepared)
    (beans_rinsed)
    (potatoes_cooked)
    (beans_tossed)
    (tuna_drained)
    (beans_sorted)
    (timer_set)
    (eggs_removed)
    (eggs_rinsed)
    (lettuce_prepared)
    (vinaigrette_drizzled)
    (platter_garnished)
    (beans_blanched)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (aromatics_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vinaigrette_whisked)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (potatoes_sliced)) (at start (beans_tossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (components_arranged)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_refreshed)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (water_boiled)) (at start (beans_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_dried)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_refreshed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (potatoes_sliced)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_out)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (eggs_shocked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_peeled)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (potatoes_cooked)) (at start (eggs_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_quartered)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (potatoes_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_shocked)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (eggs_out)) (at start (eggs_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_simmered)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_refreshed)) (at start (beans_blanched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_drained)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (beans_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_trimmed)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_prepared)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (aromatics_minced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_sliced)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_measured)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aromatics_minced)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (eggs_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (olives_prepared)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (beans_trimmed)) (at start (tomatoes_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_rinsed)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (potatoes_cooked)))
  )

  (:durative-action step21
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (beans_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_tossed)))
  )

  (:durative-action step22
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (timer_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tuna_drained)))
  )

  (:durative-action step23
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_sorted)))
  )

  (:durative-action step24
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (eggs_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (timer_set)))
  )

  (:durative-action step25
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (eggs_simmered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_removed)))
  )

  (:durative-action step26
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_rinsed)))
  )

  (:durative-action step27
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lettuce_prepared)))
  )

  (:durative-action step28
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (platter_garnished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vinaigrette_drizzled)))
  )

  (:durative-action step29
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (vinaigrette_whisked)) (at start (olives_prepared)) (at start (lettuce_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (platter_garnished)))
  )

  (:durative-action step30
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (beans_trimmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beans_blanched)))
  )
)