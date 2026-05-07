(define (domain cheeseburger)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (step_done ?s - step)
    (burger_assembled)
    (patty_seared)
    (burger_served)
    (onions_sliced)
    (meat_seasoned)
    (buns_toasted)
    (cheese_melted)
    (lettuce_washed)
    (condiments_prepared)
    (pickles_diced)
    (lettuce_shredded)
    (beef_ground)
    (patties_formed)
    (veggie_platter_arranged)
    (tomatoes_sliced)
    (onions_pickled)
    (grill_cleaned)
    (grill_oiled)
    (sauce_mixed)
    (flat_top_preheated)
    (bacon_fried)
    (meat_rested)
    (knife_sharpened)
    (potatoes_peeled)
    (salad_plated)
    (bacon_thawed)
    (produce_gathered)
    (pork_belly_cured)
    (propane_checked)
    (potato_wedges_soaked)
    (fries_salted)
    (patties_wrapped)
    (charcoal_purchased)
    (vegetables_spun)
    (tomatoes_harvested)
    (onions_caramelized)
    (parsley_chopped)
    (fries_fried)
    (mustard_mayo_whisked)
    (prep_station_cleaned)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step1)) (at start (step_done step2)) (at start (step_done step5)) (at start (step_done step7)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step22)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step33)) (at start (step_done step36)))
    :effect (and (at start (not (pending step1))) (at end (step_done step1)) (at end (burger_assembled)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending step2)) (at start (step_done step12)))
    :effect (and (at start (not (pending step2))) (at end (step_done step2)) (at end (patty_seared)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending step3)) (at start (step_done step2)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step7)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step22)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step33)) (at start (step_done step36)))
    :effect (and (at start (not (pending step3))) (at end (step_done step3)) (at end (burger_served)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (pending step4))
    :effect (and (at start (not (pending step4))) (at end (step_done step4)) (at end (onions_sliced)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step5)) (at start (step_done step12)))
    :effect (and (at start (not (pending step5))) (at end (step_done step5)) (at end (meat_seasoned)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (pending step6))
    :effect (and (at start (not (pending step6))) (at end (step_done step6)) (at end (buns_toasted)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step7)) (at start (step_done step2)) (at start (step_done step5)) (at start (step_done step9)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step28)) (at start (step_done step36)))
    :effect (and (at start (not (pending step7))) (at end (step_done step7)) (at end (cheese_melted)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step8)) (at start (step_done step27)))
    :effect (and (at start (not (pending step8))) (at end (step_done step8)) (at end (lettuce_washed)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (pending step9))
    :effect (and (at start (not (pending step9))) (at end (step_done step9)) (at end (condiments_prepared)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pending step10))
    :effect (and (at start (not (pending step10))) (at end (step_done step10)) (at end (pickles_diced)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step11)) (at start (step_done step8)) (at start (step_done step15)) (at start (step_done step27)) (at start (step_done step34)) (at start (step_done step35)))
    :effect (and (at start (not (pending step11))) (at end (step_done step11)) (at end (lettuce_shredded)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending step12))
    :effect (and (at start (not (pending step12))) (at end (step_done step12)) (at end (beef_ground)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step13)) (at start (step_done step5)) (at start (step_done step12)))
    :effect (and (at start (not (pending step13))) (at end (step_done step13)) (at end (patties_formed)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step14)) (at start (step_done step5)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step27)) (at start (step_done step32)) (at start (step_done step35)))
    :effect (and (at start (not (pending step14))) (at end (step_done step14)) (at end (veggie_platter_arranged)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step15)) (at start (step_done step35)))
    :effect (and (at start (not (pending step15))) (at end (step_done step15)) (at end (tomatoes_sliced)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending step16)) (at start (step_done step4)))
    :effect (and (at start (not (pending step16))) (at end (step_done step16)) (at end (onions_pickled)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step17)) (at start (step_done step33)))
    :effect (and (at start (not (pending step17))) (at end (step_done step17)) (at end (grill_cleaned)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step18)) (at start (step_done step15)) (at start (step_done step17)) (at start (step_done step27)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)))
    :effect (and (at start (not (pending step18))) (at end (step_done step18)) (at end (grill_oiled)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending step19)) (at start (step_done step10)))
    :effect (and (at start (not (pending step19))) (at end (step_done step19)) (at end (sauce_mixed)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step20)) (at start (step_done step17)) (at start (step_done step29)) (at start (step_done step33)))
    :effect (and (at start (not (pending step20))) (at end (step_done step20)) (at end (flat_top_preheated)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (pending step21)) (at start (step_done step10)) (at start (step_done step17)) (at start (step_done step20)) (at start (step_done step26)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step33)))
    :effect (and (at start (not (pending step21))) (at end (step_done step21)) (at end (bacon_fried)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step22)) (at start (step_done step2)) (at start (step_done step5)) (at start (step_done step7)) (at start (step_done step9)) (at start (step_done step10)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step33)) (at start (step_done step36)))
    :effect (and (at start (not (pending step22))) (at end (step_done step22)) (at end (meat_rested)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending step23))
    :effect (and (at start (not (pending step23))) (at end (step_done step23)) (at end (knife_sharpened)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending step24))
    :effect (and (at start (not (pending step24))) (at end (step_done step24)) (at end (potatoes_peeled)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step25)) (at start (step_done step4)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step23)) (at start (step_done step27)) (at start (step_done step37)))
    :effect (and (at start (not (pending step25))) (at end (step_done step25)) (at end (salad_plated)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending step26))
    :effect (and (at start (not (pending step26))) (at end (step_done step26)) (at end (bacon_thawed)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending step27))
    :effect (and (at start (not (pending step27))) (at end (step_done step27)) (at end (produce_gathered)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (pending step28))
    :effect (and (at start (not (pending step28))) (at end (step_done step28)) (at end (pork_belly_cured)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step29)) (at start (step_done step17)) (at start (step_done step33)))
    :effect (and (at start (not (pending step29))) (at end (step_done step29)) (at end (propane_checked)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending step30)) (at start (step_done step24)))
    :effect (and (at start (not (pending step30))) (at end (step_done step30)) (at end (potato_wedges_soaked)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending step31)) (at start (step_done step15)) (at start (step_done step17)) (at start (step_done step20)) (at start (step_done step24)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step38)))
    :effect (and (at start (not (pending step31))) (at end (step_done step31)) (at end (fries_salted)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step32)) (at start (step_done step5)) (at start (step_done step12)) (at start (step_done step13)))
    :effect (and (at start (not (pending step32))) (at end (step_done step32)) (at end (patties_wrapped)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (pending step33))
    :effect (and (at start (not (pending step33))) (at end (step_done step33)) (at end (charcoal_purchased)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step34)) (at start (step_done step15)) (at start (step_done step27)) (at start (step_done step35)))
    :effect (and (at start (not (pending step34))) (at end (step_done step34)) (at end (vegetables_spun)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending step35))
    :effect (and (at start (not (pending step35))) (at end (step_done step35)) (at end (tomatoes_harvested)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (pending step36)) (at start (step_done step2)) (at start (step_done step9)) (at start (step_done step12)) (at start (step_done step28)))
    :effect (and (at start (not (pending step36))) (at end (step_done step36)) (at end (onions_caramelized)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step37)) (at start (step_done step8)) (at start (step_done step23)) (at start (step_done step27)))
    :effect (and (at start (not (pending step37))) (at end (step_done step37)) (at end (parsley_chopped)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (pending step38)) (at start (step_done step15)) (at start (step_done step17)) (at start (step_done step20)) (at start (step_done step24)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)))
    :effect (and (at start (not (pending step38))) (at end (step_done step38)) (at end (fries_fried)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step39)) (at start (step_done step9)))
    :effect (and (at start (not (pending step39))) (at end (step_done step39)) (at end (mustard_mayo_whisked)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step40)) (at start (step_done step5)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step24)) (at start (step_done step32)) (at start (step_done step33)))
    :effect (and (at start (not (pending step40))) (at end (step_done step40)) (at end (prep_station_cleaned)))
  )
)