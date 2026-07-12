(define (domain cheeseburger)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (for_step_1 ?s - step) (for_step_2 ?s - step) (for_step_3 ?s - step) (for_step_4 ?s - step)
    (for_step_5 ?s - step) (for_step_6 ?s - step) (for_step_7 ?s - step) (for_step_8 ?s - step)
    (for_step_9 ?s - step) (for_step_10 ?s - step) (for_step_11 ?s - step) (for_step_12 ?s - step)
    (for_step_13 ?s - step) (for_step_14 ?s - step) (for_step_15 ?s - step) (for_step_16 ?s - step)
    (for_step_17 ?s - step) (for_step_18 ?s - step) (for_step_19 ?s - step) (for_step_20 ?s - step)
    (for_step_21 ?s - step) (for_step_22 ?s - step) (for_step_23 ?s - step) (for_step_24 ?s - step)
    (for_step_25 ?s - step) (for_step_26 ?s - step) (for_step_27 ?s - step) (for_step_28 ?s - step)
    (for_step_29 ?s - step) (for_step_30 ?s - step) (for_step_31 ?s - step) (for_step_32 ?s - step)
    (for_step_33 ?s - step) (for_step_34 ?s - step) (for_step_35 ?s - step) (for_step_36 ?s - step)
    (for_step_37 ?s - step) (for_step_38 ?s - step) (for_step_39 ?s - step) (for_step_40 ?s - step)
    (assembled) (patty_seared) (burger_served) (onions_sliced) (meat_seasoned)
    (buns_toasted) (cheese_melted) (lettuce_washed) (condiments_prepared) (pickles_diced)
    (lettuce_shredded) (beef_ground) (patties_formed) (platter_arranged) (tomatoes_sliced)
    (onions_pickled) (grill_cleaned) (grill_oiled) (sauce_mixed) (flat_top_preheated)
    (bacon_fried) (meat_rested) (knife_sharpened) (potatoes_peeled) (salad_plated)
    (bacon_thawed) (produce_gathered) (pork_cured) (propane_checked) (wedges_soaked)
    (fries_salted) (patties_wrapped) (fuel_purchased) (vegetables_dried) (tomatoes_harvested)
    (onions_caramelized) (parsley_chopped) (potatoes_fried) (mustard_mayo_whisked) (station_cleaned)
  )

  (:durative-action assemble_burger
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_1 ?s)) (at start (patty_seared)) (at start (meat_rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assembled))))
  (:durative-action sear_patty
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (for_step_2 ?s)) (at start (beef_ground)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patty_seared))))
  (:durative-action serve_burger
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (for_step_3 ?s)) (at start (buns_toasted)) (at start (condiments_prepared)) (at start (meat_rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (burger_served))))
  (:durative-action slice_onions
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step_4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_sliced))))
  (:durative-action season_meat
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_5 ?s)) (at start (beef_ground)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_seasoned))))
  (:durative-action toast_buns
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step_6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (buns_toasted))))
  (:durative-action melt_cheese
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step_7 ?s)) (at start (patties_formed)) (at start (onions_caramelized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cheese_melted))))
  (:durative-action wash_lettuce
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_8 ?s)) (at start (produce_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lettuce_washed))))
  (:durative-action prepare_condiments
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for_step_9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (condiments_prepared))))
  (:durative-action dice_pickles
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pickles_diced))))
  (:durative-action shred_lettuce
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_11 ?s)) (at start (lettuce_washed)) (at start (vegetables_dried)) (at start (tomatoes_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lettuce_shredded))))
  (:durative-action grind_beef
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for_step_12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beef_ground))))
  (:durative-action form_patties
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for_step_13 ?s)) (at start (meat_seasoned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patties_formed))))
  (:durative-action arrange_platter
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for_step_14 ?s)) (at start (produce_gathered)) (at start (patties_wrapped)) (at start (tomatoes_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (platter_arranged))))
  (:durative-action slice_tomatoes
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step_15 ?s)) (at start (tomatoes_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_sliced))))
  (:durative-action pickle_onions
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (for_step_16 ?s)) (at start (onions_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_pickled))))
  (:durative-action clean_grill
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for_step_17 ?s)) (at start (fuel_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grill_cleaned))))
  (:durative-action oil_grill
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step_18 ?s)) (at start (grill_cleaned)) (at start (vegetables_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grill_oiled))))
  (:durative-action mix_sauce
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (for_step_19 ?s)) (at start (pickles_diced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_mixed))))
  (:durative-action preheat_flat_top
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for_step_20 ?s)) (at start (propane_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flat_top_preheated))))
  (:durative-action fry_bacon
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (for_step_21 ?s)) (at start (pickles_diced)) (at start (flat_top_preheated)) (at start (bacon_thawed)) (at start (pork_cured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bacon_fried))))
  (:durative-action rest_meat
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for_step_22 ?s)) (at start (cheese_melted)) (at start (grill_cleaned)) (at start (sauce_mixed)) (at start (flat_top_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_rested))))
  (:durative-action sharpen_knife
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for_step_23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knife_sharpened))))
  (:durative-action peel_potatoes
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for_step_24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (potatoes_peeled))))
  (:durative-action plate_salad
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_25 ?s)) (at start (onions_sliced)) (at start (condiments_prepared)) (at start (parsley_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salad_plated))))
  (:durative-action thaw_bacon
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (for_step_26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bacon_thawed))))
  (:durative-action gather_produce
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for_step_27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (produce_gathered))))
  (:durative-action cure_pork
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (for_step_28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pork_cured))))
  (:durative-action check_propane
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_29 ?s)) (at start (grill_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (propane_checked))))
  (:durative-action soak_wedges
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (for_step_30 ?s)) (at start (potatoes_peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wedges_soaked))))
  (:durative-action salt_fries
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (for_step_31 ?s)) (at start (potatoes_fried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fries_salted))))
  (:durative-action wrap_patties
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for_step_32 ?s)) (at start (patties_formed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patties_wrapped))))
  (:durative-action purchase_fuel
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (for_step_33 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fuel_purchased))))
  (:durative-action spin_vegetables
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_34 ?s)) (at start (tomatoes_sliced)) (at start (produce_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_dried))))
  (:durative-action harvest_tomatoes
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for_step_35 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_harvested))))
  (:durative-action caramelize_onions
    :parameters (?s - step) :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (for_step_36 ?s)) (at start (patty_seared)) (at start (condiments_prepared)) (at start (pork_cured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_caramelized))))
  (:durative-action chop_parsley
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for_step_37 ?s)) (at start (lettuce_washed)) (at start (knife_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_chopped))))
  (:durative-action deep_fry_potatoes
    :parameters (?s - step) :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (for_step_38 ?s)) (at start (flat_top_preheated)) (at start (potatoes_peeled)) (at start (produce_gathered)) (at start (vegetables_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (potatoes_fried))))
  (:durative-action whisk_mustard_mayo
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for_step_39 ?s)) (at start (condiments_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mustard_mayo_whisked))))
  (:durative-action clean_station
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for_step_40 ?s)) (at start (potatoes_peeled)) (at start (patties_wrapped)) (at start (fuel_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (station_cleaned))))
)