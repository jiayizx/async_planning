(define (domain quick-waffle-breakfast)
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
    (waffles_located)
    (juice_poured)
    (juice_on_table)
    (plate_retrieved)
    (waffles_in_toaster)
    (breakfast_eaten)
    (butter_retrieved)
    (waffles_on_plate)
    (prep_area_cleared)
    (syrup_spread)
    (napkin_obtained)
    (plate_in_dining_area)
    (toaster_popped)
    (syrup_stored)
    (dishes_in_sink)
  )

  (:durative-action locate-waffles
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waffles_located)))
  )

  (:durative-action pour-orange-juice
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (napkin_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (juice_poured)))
  )

  (:durative-action set-juice-on-table
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (juice_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (juice_on_table)))
  )

  (:durative-action retrieve-plate
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (juice_on_table)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plate_retrieved)))
  )

  (:durative-action place-waffles-in-toaster
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (waffles_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waffles_in_toaster)))
  )

  (:durative-action sit-and-eat
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (prep_area_cleared)) (at start (syrup_stored)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breakfast_eaten)))
  )

  (:durative-action retrieve-butter
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (toaster_popped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_retrieved)))
  )

  (:durative-action place-waffles-on-plate
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (plate_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waffles_on_plate)))
  )

  (:durative-action clear-prep-area
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (syrup_spread)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prep_area_cleared)))
  )

  (:durative-action spread-syrup
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (plate_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (syrup_spread)))
  )

  (:durative-action grab-napkin
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (butter_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (napkin_obtained)))
  )

  (:durative-action bring-plate-to-dining-area
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (waffles_on_plate)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plate_in_dining_area)))
  )

  (:durative-action wait-for-toaster
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (waffles_in_toaster)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toaster_popped)))
  )

  (:durative-action store-syrup
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (syrup_stored)))
  )

  (:durative-action put-dishes-in-sink
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (breakfast_eaten)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dishes_in_sink)))
  )
)