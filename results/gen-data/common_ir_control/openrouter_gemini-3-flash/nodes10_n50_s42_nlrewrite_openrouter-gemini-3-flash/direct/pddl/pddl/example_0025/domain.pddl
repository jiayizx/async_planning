(define (domain tea_tasting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (steeped)
    (composted)
    (researched)
    (ordered)
    (poured)
    (mug_selected)
    (visited)
    (delivered)
    (boiled)
    (sipped)
  )

  (:durative-action research_tea
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (researched)))
  )

  (:durative-action order_kettle
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ordered)))
  )

  (:durative-action select_mug
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mug_selected)))
  )

  (:durative-action visit_shop
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (visited)))
  )

  (:durative-action wait_delivery
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (delivered)))
  )

  (:durative-action boil_water
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (researched)) (at start (visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boiled)))
  )

  (:durative-action steep_tea
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steeped)))
  )

  (:durative-action pour_tea
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (steeped)) (at start (researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poured)))
  )

  (:durative-action sip_tea
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (researched)) (at start (mug_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sipped)))
  )

  (:durative-action compost_leaves
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (delivered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (composted)))
  )
)