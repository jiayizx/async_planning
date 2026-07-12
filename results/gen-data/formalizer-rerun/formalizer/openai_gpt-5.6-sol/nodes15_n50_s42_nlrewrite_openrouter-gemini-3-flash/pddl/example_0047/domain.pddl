(define (domain prepare-rhubarb)
  (:requirements :typing :durative-actions)
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
    (leaves_trimmed)
    (rhubarb_simmered)
    (stalks_dried)
    (stalks_harvested)
    (saucepan_located)
    (stalks_rinsed)
    (dish_garnished)
    (knife_sharpened)
    (rhubarb_on_board)
    (sugar_measured)
    (ingredients_combined)
    (stalks_sliced)
    (cream_whipped)
    (board_set)
    (rhubarb_cooled)
  )

  (:durative-action trim_leaves
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (stalks_harvested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (leaves_trimmed)))
  )

  (:durative-action simmer_rhubarb
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (ingredients_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rhubarb_simmered)))
  )

  (:durative-action pat_stalks_dry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (leaves_trimmed))
      (at start (stalks_rinsed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stalks_dried)))
  )

  (:durative-action harvest_stalks
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stalks_harvested)))
  )

  (:durative-action locate_saucepan
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (saucepan_located)))
  )

  (:durative-action rinse_stalks
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (rhubarb_on_board)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stalks_rinsed)))
  )

  (:durative-action garnish_dish
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (cream_whipped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dish_garnished)))
  )

  (:durative-action sharpen_knife
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (knife_sharpened)))
  )

  (:durative-action place_rhubarb_on_board
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (board_set)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rhubarb_on_board)))
  )

  (:durative-action measure_sugar
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (stalks_sliced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sugar_measured)))
  )

  (:durative-action combine_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (sugar_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ingredients_combined)))
  )

  (:durative-action slice_stalks
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (saucepan_located))
      (at start (rhubarb_on_board)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stalks_sliced)))
  )

  (:durative-action whip_cream
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cream_whipped)))
  )

  (:durative-action set_cutting_board
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (knife_sharpened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (board_set)))
  )

  (:durative-action cool_rhubarb
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (rhubarb_simmered))
      (at start (ingredients_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rhubarb_cooled)))
  )
)