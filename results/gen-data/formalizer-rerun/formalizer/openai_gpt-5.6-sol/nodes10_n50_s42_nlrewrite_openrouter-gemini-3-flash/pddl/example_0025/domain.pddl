(define (domain try-new-tea)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (tea_leaves_steeped)
    (tea_leaves_composted)
    (tea_varieties_researched)
    (tea_kettle_ordered)
    (tea_poured)
    (ceramic_mug_selected)
    (tea_shop_visited)
    (tea_kettle_delivered)
    (filtered_water_boiled)
    (tea_flavor_evaluated)
  )

  (:durative-action steep_tea_leaves
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (filtered_water_boiled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_leaves_steeped))
    )
  )

  (:durative-action compost_used_tea_leaves
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (tea_kettle_delivered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_leaves_composted))
    )
  )

  (:durative-action research_tea_varieties
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_varieties_researched))
    )
  )

  (:durative-action order_tea_kettle
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_kettle_ordered))
    )
  )

  (:durative-action pour_brewed_tea
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (tea_leaves_steeped))
      (at start (tea_varieties_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_poured))
    )
  )

  (:durative-action select_ceramic_mug
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ceramic_mug_selected))
    )
  )

  (:durative-action visit_tea_shop
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (tea_varieties_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_shop_visited))
    )
  )

  (:durative-action wait_for_kettle_delivery
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (tea_kettle_ordered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_kettle_delivered))
    )
  )

  (:durative-action boil_filtered_water
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (tea_varieties_researched))
      (at start (tea_shop_visited))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (filtered_water_boiled))
    )
  )

  (:durative-action sip_and_evaluate_tea
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (tea_varieties_researched))
      (at start (ceramic_mug_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tea_flavor_evaluated))
    )
  )
)