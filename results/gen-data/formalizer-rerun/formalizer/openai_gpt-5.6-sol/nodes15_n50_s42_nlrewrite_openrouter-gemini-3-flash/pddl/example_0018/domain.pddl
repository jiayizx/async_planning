(define (domain kettle-cooking)
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
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (kettle_filled)
    (noodles_in_bowl)
    (boiling_water_poured)
    (vegetable_packet_opened)
    (meal_served)
    (vegetables_added)
    (kettle_boiled)
    (mug_preheated)
    (noodles_softened)
    (seasoning_opened)
    (kettle_unboxed)
    (countertop_wiped)
    (garnish_found)
    (kettle_base_plugged)
    (kettle_inspected)
  )

  (:durative-action fill_kettle
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (kettle_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kettle_filled)))
  )

  (:durative-action place_noodles_in_bowl
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (seasoning_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (noodles_in_bowl)))
  )

  (:durative-action pour_water_over_noodles
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (noodles_in_bowl)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boiling_water_poured)))
  )

  (:durative-action open_vegetable_packet
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (garnish_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetable_packet_opened)))
  )

  (:durative-action stir_and_serve
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (mug_preheated)) (at start (kettle_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meal_served)))
  )

  (:durative-action add_vegetables
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (vegetable_packet_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_added)))
  )

  (:durative-action boil_kettle
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (countertop_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kettle_boiled)))
  )

  (:durative-action preheat_mug
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (kettle_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mug_preheated)))
  )

  (:durative-action soften_noodles
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (boiling_water_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (noodles_softened)))
  )

  (:durative-action open_seasoning
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (kettle_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoning_opened)))
  )

  (:durative-action unbox_kettle
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (kettle_base_plugged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kettle_unboxed)))
  )

  (:durative-action wipe_countertop
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (noodles_softened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (countertop_wiped)))
  )

  (:durative-action find_garnish_packet
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garnish_found)))
  )

  (:durative-action plug_in_kettle_base
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kettle_base_plugged)))
  )

  (:durative-action inspect_kettle
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (kettle_unboxed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kettle_inspected)))
  )
)