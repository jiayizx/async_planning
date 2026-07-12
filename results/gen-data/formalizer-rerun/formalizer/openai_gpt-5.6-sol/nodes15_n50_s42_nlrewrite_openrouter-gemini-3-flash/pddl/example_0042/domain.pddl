(define (domain compost-pit)
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
    (perimeter_marked)
    (bottom_lined)
    (organic_pile_turned)
    (woody_debris_gathered)
    (green_scraps_layered)
    (main_hole_dug)
    (base_soil_leveled)
    (tools_bought)
    (fallen_leaves_collected)
    (pile_watered)
    (cardboard_shredded)
    (mesh_cover_installed)
    (woody_debris_transported)
    (starter_soil_added)
    (location_researched)
  )

  (:durative-action mark_perimeter
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (tools_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (perimeter_marked))))

  (:durative-action line_bottom
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (woody_debris_gathered))
      (at start (woody_debris_transported)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bottom_lined))))

  (:durative-action turn_organic_pile
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (green_scraps_layered))
      (at start (fallen_leaves_collected))
      (at start (cardboard_shredded))
      (at start (starter_soil_added)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (organic_pile_turned))))

  (:durative-action gather_woody_debris
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (woody_debris_gathered))))

  (:durative-action layer_green_scraps
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (cardboard_shredded))
      (at start (starter_soil_added))
      (at start (location_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (green_scraps_layered))))

  (:durative-action dig_main_hole
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (perimeter_marked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (main_hole_dug))))

  (:durative-action level_base_soil
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (main_hole_dug)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (base_soil_leveled))))

  (:durative-action buy_tools
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (location_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tools_bought))))

  (:durative-action collect_fallen_leaves
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fallen_leaves_collected))))

  (:durative-action water_pile
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (green_scraps_layered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pile_watered))))

  (:durative-action shred_cardboard
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cardboard_shredded))))

  (:durative-action install_mesh_cover
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (base_soil_leveled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mesh_cover_installed))))

  (:durative-action transport_woody_debris
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (woody_debris_gathered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (woody_debris_transported))))

  (:durative-action add_starter_soil
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (bottom_lined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (starter_soil_added))))

  (:durative-action research_location
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (location_researched))))
)