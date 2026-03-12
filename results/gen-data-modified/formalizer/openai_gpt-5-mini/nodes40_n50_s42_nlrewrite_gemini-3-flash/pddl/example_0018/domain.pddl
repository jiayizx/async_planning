(define (domain cheeseburger)
  (:requirements :durative-actions)
  (:predicates
    ; pending predicates
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending) (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
    (step11_pending) (step12_pending) (step13_pending) (step14_pending) (step15_pending) (step16_pending) (step17_pending) (step18_pending) (step19_pending) (step20_pending)
    (step21_pending) (step22_pending) (step23_pending) (step24_pending) (step25_pending) (step26_pending) (step27_pending) (step28_pending) (step29_pending) (step30_pending)
    (step31_pending) (step32_pending) (step33_pending) (step34_pending) (step35_pending) (step36_pending) (step37_pending) (step38_pending) (step39_pending) (step40_pending)
    ; done predicates (also used semantically as successor preconditions)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done) (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done) (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done) (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
  )

  ; Step 1. Assemble the burger (30s) ; predecessors: 2,22
  (:durative-action step1_assemble_burger
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step1_pending)) (at start (step2_done)) (at start (step22_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  ; Step 2. Slice the burger buns (20s) ; predecessors: 12
  (:durative-action step2_slice_buns
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step2_pending)) (at start (step12_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  ; Step 3. Place the cooked patty on the bun (10s) ; predecessors: 6,9,22
  (:durative-action step3_place_patty
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step3_pending)) (at start (step6_done)) (at start (step9_done)) (at start (step22_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  ; Step 4. Prepare the lettuce and tomato (120s)
  (:durative-action step4_prep_lettuce_tomato
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step4_pending)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  ; Step 5. Clean the grill surface (180s) ; predecessors: 12
  (:durative-action step5_clean_grill
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step5_pending)) (at start (step12_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  ; Step 6. Take the beef patties out of the fridge (45s)
  (:durative-action step6_take_patties_out
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step6_pending)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  ; Step 7. Melt the cheese on the patty (60s) ; predecessors: 13,36
  (:durative-action step7_melt_cheese
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step7_pending)) (at start (step13_done)) (at start (step36_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  ; Step 8. Season the raw beef with salt and pepper (60s) ; predecessors: 27
  (:durative-action step8_season_beef
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step8_pending)) (at start (step27_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  ; Step 9. Get the condiments out of the pantry (60s)
  (:durative-action step9_get_condiments
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step9_pending)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  ; Step 10. Dice the onions (120s)
  (:durative-action step10_dice_onions
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step10_pending)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  ; Step 11. Spread mayo on the top bun (15s) ; predecessors: 8,34,35
  (:durative-action step11_spread_mayo
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step11_pending)) (at start (step8_done)) (at start (step34_done)) (at start (step35_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  ; Step 12. Buy ingredients at the grocery store (2700s)
  (:durative-action step12_buy_ingredients
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step12_pending)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  ; Step 13. Preheat the grill (600s) ; predecessors: 5
  (:durative-action step13_preheat_grill
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step13_pending)) (at start (step5_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  ; Step 14. Caramelize the onions (900s) ; predecessors: 27,32,35
  (:durative-action step14_caramelize_onions
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step14_pending)) (at start (step27_done)) (at start (step32_done)) (at start (step35_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  ; Step 15. Slice the pickles (60s) ; predecessors: 35
  (:durative-action step15_slice_pickles
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step15_pending)) (at start (step35_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  ; Step 16. Wash the lettuce (60s) ; predecessors: 4
  (:durative-action step16_wash_lettuce
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step16_pending)) (at start (step4_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  ; Step 17. Form the ground beef into patties (240s) ; predecessors: 33
  (:durative-action step17_form_patties
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step17_pending)) (at start (step33_done)))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  ; Step 18. Set the table with napkins (120s) ; predecessors: 17,34
  (:durative-action step18_set_table
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step18_pending)) (at start (step17_done)) (at start (step34_done)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  ; Step 19. Sauté the diced onions (480s) ; predecessors: 10
  (:durative-action step19_saute_onions
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step19_pending)) (at start (step10_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  ; Step 20. Sear the first side of the burger (180s) ; predecessors: 29
  (:durative-action step20_sear_first_side
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step20_pending)) (at start (step29_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )

  ; Step 21. Pour cold drinks (60s) ; predecessors: 10,20,26,28
  (:durative-action step21_pour_drinks
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step21_pending)) (at start (step10_done)) (at start (step20_done)) (at start (step26_done)) (at start (step28_done)))
    :effect (and (at start (not (step21_pending))) (at end (step21_done)))
  )

  ; Step 22. Grill the burger patty (300s) ; predecessors: 7,17,19,20
  (:durative-action step22_grill_patty
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step22_pending)) (at start (step7_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)))
    :effect (and (at start (not (step22_pending))) (at end (step22_done)))
  )

  ; Step 23. Sharpen the kitchen knife (120s)
  (:durative-action step23_sharpen_knife
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step23_pending)))
    :effect (and (at start (not (step23_pending))) (at end (step23_done)))
  )

  ; Step 24. Find the serving plates (60s)
  (:durative-action step24_find_plates
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step24_pending)))
    :effect (and (at start (not (step24_pending))) (at end (step24_done)))
  )

  ; Step 25. Add ketchup and mustard (20s) ; predecessors: 4,9,37
  (:durative-action step25_add_ketchup_mustard
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step25_pending)) (at start (step4_done)) (at start (step9_done)) (at start (step37_done)))
    :effect (and (at start (not (step25_pending))) (at end (step25_done)))
  )

  ; Step 26. Open a new bag of chips (30s)
  (:durative-action step26_open_chips
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step26_pending)))
    :effect (and (at start (not (step26_pending))) (at end (step26_done)))
  )

  ; Step 27. Unpack the groceries (300s)
  (:durative-action step27_unpack_groceries
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step27_pending)))
    :effect (and (at start (not (step27_pending))) (at end (step27_done)))
  )

  ; Step 28. Toast the buns (120s)
  (:durative-action step28_toast_buns
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step28_pending)))
    :effect (and (at start (not (step28_pending))) (at end (step28_done)))
  )

  ; Step 29. Lay the patties on a tray (60s) ; predecessors: 17
  (:durative-action step29_lay_patties_on_tray
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step29_pending)) (at start (step17_done)))
    :effect (and (at start (not (step29_pending))) (at end (step29_done)))
  )

  ; Step 30. Polish the silverware (240s) ; predecessors: 24
  (:durative-action step30_polish_silverware
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step30_pending)) (at start (step24_done)))
    :effect (and (at start (not (step30_pending))) (at end (step30_done)))
  )

  ; Step 31. Serve the burger to the guest (60s) ; predecessors: 38
  (:durative-action step31_serve_burger
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step31_pending)) (at start (step38_done)))
    :effect (and (at start (not (step31_pending))) (at end (step31_done)))
  )

  ; Step 32. Light the charcoal (1200s) ; predecessors: 13
  (:durative-action step32_light_charcoal
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step32_pending)) (at start (step13_done)))
    :effect (and (at start (not (step32_pending))) (at end (step32_done)))
  )

  ; Step 33. Grind the fresh beef (600s)
  (:durative-action step33_grind_beef
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step33_pending)))
    :effect (and (at start (not (step33_pending))) (at end (step33_done)))
  )

  ; Step 34. Prep the side garnishes (300s) ; predecessors: 15,27
  (:durative-action step34_prep_side_garnishes
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step34_pending)) (at start (step15_done)) (at start (step27_done)))
    :effect (and (at start (not (step34_pending))) (at end (step34_done)))
  )

  ; Step 35. Wash the vegetables (180s)
  (:durative-action step35_wash_vegetables
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step35_pending)))
    :effect (and (at start (not (step35_pending))) (at end (step35_done)))
  )

  ; Step 36. Butter the sliced buns (45s) ; predecessors: 2,9,28
  (:durative-action step36_butter_buns
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step36_pending)) (at start (step2_done)) (at start (step9_done)) (at start (step28_done)))
    :effect (and (at start (not (step36_pending))) (at end (step36_done)))
  )

  ; Step 37. Cook the bacon strips (360s) ; predecessors: 8,23
  (:durative-action step37_cook_bacon
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step37_pending)) (at start (step8_done)) (at start (step23_done)))
    :effect (and (at start (not (step37_pending))) (at end (step37_done)))
  )

  ; Step 38. Arrange the side dishes on the plate (120s) ; predecessors: 20,24,27,34
  (:durative-action step38_arrange_sides
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step38_pending)) (at start (step20_done)) (at start (step24_done)) (at start (step27_done)) (at start (step34_done)))
    :effect (and (at start (not (step38_pending))) (at end (step38_done)))
  )

  ; Step 39. Put the condiments back in the fridge (60s) ; predecessors: 9
  (:durative-action step39_put_condiments_back
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step39_pending)) (at start (step9_done)))
    :effect (and (at start (not (step39_pending))) (at end (step39_done)))
  )

  ; Step 40. Clean the prep station (300s) ; predecessors: 24,32,33
  (:durative-action step40_clean_prep_station
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step40_pending)) (at start (step24_done)) (at start (step32_done)) (at start (step33_done)))
    :effect (and (at start (not (step40_pending))) (at end (step40_done)))
  )
)
