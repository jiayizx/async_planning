(define (domain wear_red_dress)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
    (step16_pending) (step16_done)
    (step17_pending) (step17_done)
    (step18_pending) (step18_done)
    (step19_pending) (step19_done)
    (step20_pending) (step20_done)
  )

  (:durative-action step1_remove_from_garment_bag
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step1_pending)) (at start (step18_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_apply_lipstick
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step2_pending)) (at start (step11_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_fasten_necklace_clasp
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step3_pending)) (at start (step15_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_fill_steamer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step4_pending)) (at start (step9_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_select_jewelry
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step5_pending)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_steam_wrinkles
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step6_pending)) (at start (step4_done)) (at start (step9_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7_plug_curling_iron
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step7_pending)) (at start (step10_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8_curl_hair
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step8_pending)) (at start (step7_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9_retrieve_dress_and_steamer
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step9_pending)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10_allow_iron_heat
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step10_pending)) (at start (step13_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action step11_cleanse_moisturize_face
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step11_pending)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action step12_step_into_dress
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step12_pending)) (at start (step14_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action step13_setup_hairstyling_station
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step13_pending)) (at start (step9_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action step14_place_dress_on_hanger
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step14_pending)) (at start (step1_done)) (at start (step9_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action step15_lay_out_jewelry
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step15_pending)) (at start (step5_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action step16_spray_hairspray
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step16_pending)) (at start (step8_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action step17_step_into_shoes
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step17_pending)) (at start (step20_done)))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action step18_locate_red_dress_in_attic
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step18_pending)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action step19_blot_lipstick
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step19_pending)) (at start (step2_done)) (at start (step11_done)) (at start (step18_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action step20_put_on_hosiery
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step20_pending)) (at start (step11_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )
)
