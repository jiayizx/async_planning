(define (domain make-lox)
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
    (lox_prepared)
    (salmon_bought)
    (salmon_seasoned)
    (fish_weighted)
    (pin_bones_removed)
    (bagels_toasted)
    (bagels_bought)
    (curing_mixture_mixed)
    (refrigerator_shelf_cleared)
    (dish_lined)
    (salmon_rinsed)
    (salmon_placed_in_dish)
    (salmon_cured)
    (garnish_prepared)
    (fish_wrapped)
  )

  (:durative-action slice_cured_fish
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (pin_bones_removed))
      (at start (salmon_cured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lox_prepared))
    )
  )

  (:durative-action buy_salmon
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (salmon_bought))
    )
  )

  (:durative-action rub_curing_mixture
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (curing_mixture_mixed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (salmon_seasoned))
    )
  )

  (:durative-action weigh_down_fish
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (salmon_placed_in_dish))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fish_weighted))
    )
  )

  (:durative-action remove_pin_bones
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (salmon_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pin_bones_removed))
    )
  )

  (:durative-action toast_bagels
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (bagels_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bagels_toasted))
    )
  )

  (:durative-action buy_bagels
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bagels_bought))
    )
  )

  (:durative-action mix_curing_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (curing_mixture_mixed))
    )
  )

  (:durative-action clear_refrigerator_shelf
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (refrigerator_shelf_cleared))
    )
  )

  (:durative-action line_baking_dish
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dish_lined))
    )
  )

  (:durative-action rinse_salmon
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (salmon_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (salmon_rinsed))
    )
  )

  (:durative-action place_salmon_in_dish
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (dish_lined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (salmon_placed_in_dish))
    )
  )

  (:durative-action cure_salmon
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (refrigerator_shelf_cleared))
      (at start (fish_wrapped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (salmon_cured))
    )
  )

  (:durative-action prepare_garnish
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (salmon_bought))
      (at start (refrigerator_shelf_cleared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garnish_prepared))
    )
  )

  (:durative-action wrap_seasoned_fish
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (salmon_seasoned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fish_wrapped))
    )
  )
)