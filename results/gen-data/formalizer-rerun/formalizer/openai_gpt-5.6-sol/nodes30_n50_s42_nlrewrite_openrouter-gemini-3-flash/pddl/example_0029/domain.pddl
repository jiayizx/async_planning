(define (domain winter-garden)
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
    (dead_plants_cleared) (hoses_drained) (roots_harvested)
    (mulch_applied) (tools_stored) (leaves_raked)
    (shrubs_pruned) (bulbs_dug) (leaves_shredded)
    (bulbs_stored) (compost_bin_cleaned) (water_valve_off)
    (blades_sharpened) (soil_tilled) (compost_spread)
    (garden_prepared) (furniture_cleaned) (pots_disinfected)
    (saplings_covered) (rain_barrels_emptied) (burlap_purchased)
    (plumbing_inspected) (mulch_purchased) (pots_stacked)
    (furniture_oiled) (shed_gutters_cleaned) (techniques_researched)
    (faucets_wrapped) (waste_sorted) (greenhouse_floor_cleared)
  )

  (:durative-action clear-dead-plants
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dead_plants_cleared))))

  (:durative-action drain-and-coil-hoses
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (plumbing_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hoses_drained))))

  (:durative-action harvest-root-vegetables
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (dead_plants_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roots_harvested))))

  (:durative-action apply-organic-mulch
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (leaves_shredded)) (at start (blades_sharpened)) (at start (mulch_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mulch_applied))))

  (:durative-action store-hand-tools
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (soil_tilled)) (at start (furniture_oiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_stored))))

  (:durative-action rake-fallen-leaves
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (blades_sharpened)) (at start (mulch_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leaves_raked))))

  (:durative-action prune-shrubs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (dead_plants_cleared)) (at start (leaves_shredded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shrubs_pruned))))

  (:durative-action dig-up-bulbs
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (dead_plants_cleared)) (at start (leaves_shredded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bulbs_dug))))

  (:durative-action shred-leaves
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (compost_bin_cleaned)) (at start (blades_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leaves_shredded))))

  (:durative-action label-and-store-bulbs
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (bulbs_dug)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bulbs_stored))))

  (:durative-action clean-compost-bin
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (waste_sorted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (compost_bin_cleaned))))

  (:durative-action shut-off-water-valve
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (hoses_drained)) (at start (rain_barrels_emptied)) (at start (shed_gutters_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_valve_off))))

  (:durative-action sharpen-blades
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (compost_bin_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blades_sharpened))))

  (:durative-action till-soil
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (dead_plants_cleared)) (at start (roots_harvested)) (at start (leaves_raked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soil_tilled))))

  (:durative-action spread-compost
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (leaves_raked)) (at start (blades_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (compost_spread))))

  (:durative-action lock-garden-gate
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (pots_stacked)) (at start (greenhouse_floor_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garden_prepared))))

  (:durative-action clean-patio-furniture
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (furniture_cleaned))))

  (:durative-action disinfect-pots
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (roots_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_disinfected))))

  (:durative-action cover-saplings
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (burlap_purchased)) (at start (faucets_wrapped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (saplings_covered))))

  (:durative-action empty-rain-barrels
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (dead_plants_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rain_barrels_emptied))))

  (:durative-action purchase-burlap
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (techniques_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (burlap_purchased))))

  (:durative-action inspect-plumbing
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plumbing_inspected))))

  (:durative-action buy-winter-mulch
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mulch_purchased))))

  (:durative-action stack-pots
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (pots_disinfected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_stacked))))

  (:durative-action oil-patio-furniture
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (hoses_drained)) (at start (furniture_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (furniture_oiled))))

  (:durative-action clean-shed-gutters
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (dead_plants_cleared)) (at start (compost_bin_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shed_gutters_cleaned))))

  (:durative-action research-protection-techniques
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (techniques_researched))))

  (:durative-action wrap-faucets
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (hoses_drained)) (at start (mulch_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (faucets_wrapped))))

  (:durative-action sort-garden-waste
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (mulch_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waste_sorted))))

  (:durative-action clear-greenhouse-floor
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (compost_bin_cleaned)) (at start (plumbing_inspected)) (at start (faucets_wrapped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (greenhouse_floor_cleared))))
)