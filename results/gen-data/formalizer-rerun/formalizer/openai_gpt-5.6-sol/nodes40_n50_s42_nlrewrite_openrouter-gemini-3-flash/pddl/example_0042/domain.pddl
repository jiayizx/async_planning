(define (domain coffee-icing)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step)
    (is_step29 ?s - step) (is_step30 ?s - step) (is_step31 ?s - step) (is_step32 ?s - step)
    (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (sugar_sifted) (vanilla_whisked) (butter_softened) (bowl_wiped)
    (coffee_dissolved) (water_boiled) (cream_measured) (cocoa_weighed)
    (espresso_retrieved) (piping_bag_prepared) (cream_chilled) (whisk_sterilized)
    (workstation_organized) (spoons_washed) (whisk_dried) (espresso_combined)
    (cocoa_sifted) (counter_space_cleared) (cocoa_opened) (butter_sugar_creamed)
    (coffee_added) (coffee_tempered) (ingredients_bought) (vanilla_measured)
    (butter_removed) (coffee_butter_mixed) (groceries_unpacked) (cream_checked)
    (sugar_measured) (cream_poured) (bowls_set_out) (bowl_washed)
    (cup_cleaned) (countertop_sanitized) (concentrate_located) (bowl_scraped)
    (vanilla_inspected) (packaging_disposed) (vanilla_blended) (icing_filled))

  (:durative-action sift-powdered-sugar
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (cocoa_weighed)) (at start (spoons_washed)) (at start (counter_space_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugar_sifted))))
  (:durative-action whisk-vanilla-into-base
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (vanilla_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanilla_whisked))))
  (:durative-action soften-butter
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (butter_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_softened))))
  (:durative-action wipe-mixing-bowl
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (bowl_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_wiped))))
  (:durative-action dissolve-coffee-granules
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (water_boiled)) (at start (spoons_washed)) (at start (concentrate_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_dissolved))))
  (:durative-action boil-water
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled))))
  (:durative-action measure-heavy-cream
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_measured))))
  (:durative-action weigh-cocoa-powder
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (bowls_set_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cocoa_weighed))))
  (:durative-action retrieve-espresso-powder
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (espresso_retrieved))))
  (:durative-action prepare-piping-bag
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (piping_bag_prepared))))
  (:durative-action chill-heavy-cream
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (cup_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_chilled))))
  (:durative-action sterilize-whisk
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (groceries_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (whisk_sterilized))))
  (:durative-action organize-workstation
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (counter_space_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workstation_organized))))
  (:durative-action wash-measuring-spoons
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (whisk_sterilized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spoons_washed))))
  (:durative-action dry-whisk
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (whisk_sterilized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (whisk_dried))))
  (:durative-action combine-espresso
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (espresso_retrieved)) (at start (spoons_washed)) (at start (concentrate_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (espresso_combined))))
  (:durative-action sift-cocoa
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (cocoa_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cocoa_sifted))))
  (:durative-action clear-counter-space
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (butter_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_space_cleared))))
  (:durative-action open-cocoa-container
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (cocoa_weighed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cocoa_opened))))
  (:durative-action cream-butter-sugar
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (coffee_tempered)) (at start (sugar_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_sugar_creamed))))
  (:durative-action add-coffee-mixture
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (water_boiled)) (at start (espresso_combined)) (at start (concentrate_located)) (at start (vanilla_blended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_added))))
  (:durative-action temper-coffee-liquid
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (coffee_dissolved)) (at start (espresso_combined)) (at start (vanilla_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_tempered))))
  (:durative-action buy-fresh-ingredients
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_bought))))
  (:durative-action measure-vanilla
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (concentrate_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanilla_measured))))
  (:durative-action remove-butter
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_removed))))
  (:durative-action mix-coffee-butter
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (coffee_dissolved)) (at start (water_boiled)) (at start (ingredients_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_butter_mixed))))
  (:durative-action unpack-groceries
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (ingredients_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (groceries_unpacked))))
  (:durative-action check-cream-expiration
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_checked))))
  (:durative-action measure-powdered-sugar
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (spoons_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugar_measured))))
  (:durative-action pour-cream
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (cream_measured)) (at start (cream_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_poured))))
  (:durative-action set-out-bowls
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (ingredients_bought)) (at start (concentrate_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowls_set_out))))
  (:durative-action wash-mixing-bowl
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (butter_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_washed))))
  (:durative-action clean-cream-cup
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (cream_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cup_cleaned))))
  (:durative-action sanitize-countertop
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (coffee_dissolved)) (at start (cream_measured)) (at start (whisk_sterilized)) (at start (whisk_dried)) (at start (counter_space_cleared)) (at start (ingredients_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (countertop_sanitized))))
  (:durative-action locate-concentrate
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (concentrate_located))))
  (:durative-action scrape-bowl
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (coffee_butter_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_scraped))))
  (:durative-action inspect-vanilla
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (vanilla_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanilla_inspected))))
  (:durative-action dispose-cream-packaging
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (cream_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packaging_disposed))))
  (:durative-action blend-vanilla
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (vanilla_whisked)) (at start (vanilla_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanilla_blended))))
  (:durative-action fill-piping-bag
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (piping_bag_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (icing_filled))))
)