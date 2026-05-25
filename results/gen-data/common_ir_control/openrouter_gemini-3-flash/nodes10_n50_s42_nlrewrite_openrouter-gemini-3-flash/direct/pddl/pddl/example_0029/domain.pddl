(define (domain brownie_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dry_whisked)
    (dish_greased)
    (butter_melted)
    (batter_poured)
    (microwaved)
    (butter_stirred)
    (tools_gathered)
    (spray_located)
    (fridge_items_out)
    (eggs_cracked)
  )

  (:durative-action step1_whisk_dry
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (butter_stirred)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dry_whisked)))
  )

  (:durative-action step2_grease_dish
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (spray_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dish_greased)))
  )

  (:durative-action step3_melt_butter
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_melted)))
  )

  (:durative-action step4_pour_batter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (eggs_cracked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batter_poured)))
  )

  (:durative-action step5_microwave
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (dry_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microwaved)))
  )

  (:durative-action step6_stir_butter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (butter_melted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_stirred)))
  )

  (:durative-action step7_gather_tools
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (eggs_cracked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_gathered)))
  )

  (:durative-action step8_locate_spray
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spray_located)))
  )

  (:durative-action step9_fridge_items
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fridge_items_out)))
  )

  (:durative-action step10_crack_eggs
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (fridge_items_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_cracked)))
  )
)