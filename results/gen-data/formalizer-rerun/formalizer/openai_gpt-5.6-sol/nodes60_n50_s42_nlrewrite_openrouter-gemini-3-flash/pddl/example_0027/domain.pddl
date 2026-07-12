(define (domain spaghetti-dinner)
  (:requirements :typing :durative-actions)
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
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step)
    (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step)
    (is_step40 ?s - step) (is_step41 ?s - step) (is_step42 ?s - step)
    (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
    (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step)
    (is_step49 ?s - step) (is_step50 ?s - step) (is_step51 ?s - step)
    (is_step52 ?s - step) (is_step53 ?s - step) (is_step54 ?s - step)
    (is_step55 ?s - step) (is_step56 ?s - step) (is_step57 ?s - step)
    (is_step58 ?s - step) (is_step59 ?s - step) (is_step60 ?s - step)
    (step1_completed) (step2_completed) (step3_completed)
    (step4_completed) (step5_completed) (step6_completed)
    (step7_completed) (step8_completed) (step9_completed)
    (step10_completed) (step11_completed) (step12_completed)
    (step13_completed) (step14_completed) (step15_completed)
    (step16_completed) (step17_completed) (step18_completed)
    (step19_completed) (step20_completed) (step21_completed)
    (step22_completed) (step23_completed) (step24_completed)
    (step25_completed) (step26_completed) (step27_completed)
    (step28_completed) (step29_completed) (step30_completed)
    (step31_completed) (step32_completed) (step33_completed)
    (step34_completed) (step35_completed) (step36_completed)
    (step37_completed) (step38_completed) (step39_completed)
    (step40_completed) (step41_completed) (step42_completed)
    (step43_completed) (step44_completed) (step45_completed)
    (step46_completed) (step47_completed) (step48_completed)
    (step49_completed) (step50_completed) (step51_completed)
    (step52_completed) (step53_completed) (step54_completed)
    (step55_completed) (step56_completed) (step57_completed)
    (step58_completed) (step59_completed) (step60_completed)
  )

  (:durative-action chop-yellow-onions
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (step27_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_completed))))
  (:durative-action set-dinner-table
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (step38_completed)) (at start (step56_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_completed))))
  (:durative-action grate-parmesan
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (step16_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_completed))))
  (:durative-action saute-garlic
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (step13_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_completed))))
  (:durative-action brown-ground-beef
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (step4_completed)) (at start (step44_completed)) (at start (step55_completed)) (at start (step56_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_completed))))
  (:durative-action simmer-marinara
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (step52_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_completed))))
  (:durative-action garnish-basil
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (step25_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_completed))))
  (:durative-action boil-water
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (step18_completed)) (at start (step55_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_completed))))
  (:durative-action drain-pasta
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (step12_completed)) (at start (step14_completed)) (at start (step20_completed)) (at start (step35_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_completed))))
  (:durative-action toss-pasta-with-sauce
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (step18_completed)) (at start (step35_completed)) (at start (step59_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_completed))))
  (:durative-action serve-spaghetti
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (step9_completed)) (at start (step43_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_completed))))
  (:durative-action add-noodles-to-pot
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (step16_completed)) (at start (step60_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_completed))))
  (:durative-action mince-garlic
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_completed))))
  (:durative-action measure-dry-pasta
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_completed))))
  (:durative-action open-tomato-puree
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (step18_completed)) (at start (step43_completed)) (at start (step56_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_completed))))
  (:durative-action locate-pasta-pot
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (step8_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_completed))))
  (:durative-action warm-serving-plates
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (step6_completed)) (at start (step10_completed)) (at start (step15_completed)) (at start (step19_completed)) (at start (step29_completed)) (at start (step55_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_completed))))
  (:durative-action wash-vegetables-herbs
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (step43_completed)) (at start (step56_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_completed))))
  (:durative-action prepare-side-salad
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (step8_completed)) (at start (step20_completed)) (at start (step23_completed)) (at start (step39_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_completed))))
  (:durative-action check-pasta-doneness
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (step14_completed)) (at start (step49_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_completed))))
  (:durative-action toast-garlic-bread
    :parameters (?s - step) :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (step14_completed)) (at start (step37_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_completed))))
  (:durative-action pour-wine
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (step10_completed)) (at start (step37_completed)) (at start (step41_completed)) (at start (step46_completed)) (at start (step55_completed)) (at start (step59_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_completed))))
  (:durative-action whisk-vinaigrette
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (step33_completed)) (at start (step50_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_completed))))
  (:durative-action slice-baguette
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (step18_completed)) (at start (step42_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_completed))))
  (:durative-action stem-basil
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (step44_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_completed))))
  (:durative-action dice-celery
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (step40_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_completed))))
  (:durative-action sharpen-knife
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_completed))))
  (:durative-action season-sauce
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (step30_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_completed))))
  (:durative-action place-cheese-in-dish
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (step3_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_completed))))
  (:durative-action taste-sauce
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (step20_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_completed))))
  (:durative-action find-bread-knife
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (step54_completed)) (at start (step60_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_completed))))
  (:durative-action soften-butter
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (step18_completed)) (at start (step31_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_completed))))
  (:durative-action heat-frying-pan
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (step13_completed)) (at start (step46_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_completed))))
  (:durative-action fill-water-carafes
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (step47_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_completed))))
  (:durative-action drain-beef-fat
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (step5_completed)) (at start (step49_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_completed))))
  (:durative-action dice-carrots
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_completed))))
  (:durative-action spread-butter
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (step15_completed)) (at start (step28_completed)) (at start (step59_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_completed))))
  (:durative-action clear-counters
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (step18_completed)) (at start (step36_completed)) (at start (step54_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_completed))))
  (:durative-action chop-lettuce
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (step41_completed)) (at start (step55_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_completed))))
  (:durative-action peel-carrots-celery
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (step60_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_completed))))
  (:durative-action select-red-wine
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step41 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_completed))))
  (:durative-action organize-workspace
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step42 ?s)) (at start (step18_completed)) (at start (step31_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_completed))))
  (:durative-action gather-ingredients
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step43 ?s)) (at start (step27_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_completed))))
  (:durative-action crumble-beef
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step44 ?s)) (at start (step14_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_completed))))
  (:durative-action saute-mirepoix
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step45 ?s)) (at start (step1_completed)) (at start (step15_completed)) (at start (step26_completed)) (at start (step36_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_completed))))
  (:durative-action add-oregano
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step46 ?s)) (at start (step1_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_completed))))
  (:durative-action retrieve-water-pitcher
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step47 ?s)) (at start (step56_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_completed))))
  (:durative-action stir-meat-into-sauce
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step48 ?s)) (at start (step1_completed)) (at start (step20_completed)) (at start (step46_completed)) (at start (step50_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_completed))))
  (:durative-action set-out-utensils
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step49 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_completed))))
  (:durative-action clean-cutting-board
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step50 ?s)) (at start (step20_completed)) (at start (step39_completed)) (at start (step52_completed)) (at start (step56_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_completed))))
  (:durative-action dry-vegetables
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step51 ?s)) (at start (step18_completed)) (at start (step54_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_completed))))
  (:durative-action place-sauce-pot
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step52 ?s)) (at start (step39_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_completed))))
  (:durative-action put-away-leftovers
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step53 ?s)) (at start (step16_completed)) (at start (step21_completed)) (at start (step57_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_completed))))
  (:durative-action get-bread-board
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step54 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_completed))))
  (:durative-action fill-sink
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step55 ?s)) (at start (step18_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_completed))))
  (:durative-action clear-stovetop
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step56 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_completed))))
  (:durative-action set-pasta-timer
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step57 ?s)) (at start (step12_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_completed))))
  (:durative-action put-garlic-bread-in-oven
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step58 ?s)) (at start (step37_completed)) (at start (step40_completed)) (at start (step49_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_completed))))
  (:durative-action open-wine
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step59 ?s)) (at start (step20_completed)) (at start (step27_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_completed))))
  (:durative-action check-pantry
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step60 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_completed))))
)