(define (domain laundry-sorting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (navy_separated) (clothes_gathered) (baskets_carried)
    (baskets_emptied) (delicates_checked) (mesh_bags_located)
    (bright_red_identified) (socks_bagged) (reds_separated)
    (jeans_shaken) (warm_wash_pile_created) (trouser_pockets_checked)
    (denim_pulled_out) (whites_sorted) (pastels_isolated)
    (dark_collars_inspected) (dark_hoodies_grouped) (pretreatment_clothes_set_aside)
    (patterned_shirts_piled) (cool_wash_darks_divided) (stain_remover_applied)
    (gray_clothes_filtered) (silks_hand_washed) (medium_tones_sorted)
    (red_labels_checked) (orange_yellow_isolated) (brights_space_cleared)
    (white_socks_found) (towels_separated) (laundry_spread_out)
  )

  (:durative-action separate_navy_from_black
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (cool_wash_darks_divided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (navy_separated))))

  (:durative-action gather_dirty_clothes
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_gathered))))

  (:durative-action carry_laundry_baskets
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (clothes_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baskets_carried))))

  (:durative-action empty_baskets
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (laundry_spread_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baskets_emptied))))

  (:durative-action check_delicates_hamper
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (delicates_checked))))

  (:durative-action locate_mesh_bags
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mesh_bags_located))))

  (:durative-action identify_bright_red_items
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (red_labels_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bright_red_identified))))

  (:durative-action place_socks_in_mesh_bags
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (mesh_bags_located)) (at start (whites_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_bagged))))

  (:durative-action separate_pinks_from_deep_reds
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (bright_red_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reds_separated))))

  (:durative-action shake_out_jeans
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (denim_pulled_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jeans_shaken))))

  (:durative-action create_warm_wash_pile
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (bright_red_identified)) (at start (whites_sorted)) (at start (medium_tones_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (warm_wash_pile_created))))

  (:durative-action check_dark_trouser_pockets
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (navy_separated)) (at start (dark_collars_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trouser_pockets_checked))))

  (:durative-action pull_out_denim
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (baskets_emptied)) (at start (towels_separated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (denim_pulled_out))))

  (:durative-action sort_white_towels_and_linens
    :parameters (?s - step)
    :duration (= ?duration 540)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (white_socks_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (whites_sorted))))

  (:durative-action isolate_pastels_and_creams
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (baskets_emptied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pastels_isolated))))

  (:durative-action inspect_dark_shirt_collars
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (pretreatment_clothes_set_aside)) (at start (white_socks_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dark_collars_inspected))))

  (:durative-action group_dark_hoodies
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (baskets_emptied)) (at start (denim_pulled_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dark_hoodies_grouped))))

  (:durative-action set_aside_pretreatment_clothes
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (white_socks_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pretreatment_clothes_set_aside))))

  (:durative-action pile_patterned_shirts
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (reds_separated)) (at start (denim_pulled_out)) (at start (white_socks_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patterned_shirts_piled))))

  (:durative-action divide_cool_wash_darks
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (pastels_isolated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cool_wash_darks_divided))))

  (:durative-action apply_stain_remover
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (dark_collars_inspected)) (at start (gray_clothes_filtered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stain_remover_applied))))

  (:durative-action filter_gray_clothing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (medium_tones_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gray_clothes_filtered))))

  (:durative-action hand_wash_silks
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (delicates_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (silks_hand_washed))))

  (:durative-action sort_medium_tones
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (baskets_emptied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medium_tones_sorted))))

  (:durative-action check_red_colorfastness
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (orange_yellow_isolated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (red_labels_checked))))

  (:durative-action isolate_orange_and_yellow
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (gray_clothes_filtered)) (at start (brights_space_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orange_yellow_isolated))))

  (:durative-action clear_brights_space
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (brights_space_cleared))))

  (:durative-action search_for_white_socks
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (white_socks_found))))

  (:durative-action separate_towels
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (baskets_emptied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (towels_separated))))

  (:durative-action spread_out_laundry
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (baskets_carried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laundry_spread_out))))
)