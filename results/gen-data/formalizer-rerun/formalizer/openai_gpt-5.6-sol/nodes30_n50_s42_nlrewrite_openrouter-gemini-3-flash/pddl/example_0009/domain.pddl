(define (domain seafood-salad)
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
    (salad_tossed) (salad_arranged) (platter_garnished)
    (dressing_whisked) (seafood_patted_dry) (water_boiled)
    (shrimp_peeled) (celery_sliced) (celery_rinsed)
    (onions_diced) (seafood_poached) (ingredients_combined)
    (herbs_folded) (vegetables_retrieved) (dressing_folded_in)
    (bowl_covered) (herbs_chopped) (seafood_chilled)
    (tomatoes_sliced) (lemon_zested) (plates_prepared)
    (crabmeat_drained) (scallops_thawed) (seafood_shocked)
    (lemons_scrubbed) (mustard_spices_measured) (seafood_drained)
    (workspace_sanitized) (seasoning_added) (capers_opened)
  )

  (:durative-action toss-salad
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s)) (at start (salad_arranged)) (at start (seafood_chilled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salad_tossed))))

  (:durative-action arrange-salad
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s)) (at start (plates_prepared)) (at start (seafood_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salad_arranged))))

  (:durative-action garnish-platter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s)) (at start (seafood_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (platter_garnished))))

  (:durative-action whisk-dressing
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s)) (at start (herbs_folded)) (at start (mustard_spices_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressing_whisked))))

  (:durative-action pat-seafood-dry
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)) (at start (seafood_poached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seafood_patted_dry))))

  (:durative-action boil-water
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled))))

  (:durative-action peel-shrimp
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s)) (at start (seafood_shocked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shrimp_peeled))))

  (:durative-action slice-celery
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s)) (at start (celery_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (celery_sliced))))

  (:durative-action rinse-celery
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s)) (at start (vegetables_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (celery_rinsed))))

  (:durative-action dice-onions
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)) (at start (workspace_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_diced))))

  (:durative-action poach-seafood
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step11 ?s)) (at start (step_pending ?s)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seafood_poached))))

  (:durative-action combine-ingredients
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step12 ?s)) (at start (step_pending ?s)) (at start (seafood_patted_dry)) (at start (celery_rinsed)) (at start (seafood_chilled)) (at start (scallops_thawed)) (at start (seafood_shocked)) (at start (workspace_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_combined))))

  (:durative-action fold-herbs
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step13 ?s)) (at start (step_pending ?s)) (at start (herbs_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herbs_folded))))

  (:durative-action retrieve-vegetables
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step14 ?s)) (at start (step_pending ?s)) (at start (workspace_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_retrieved))))

  (:durative-action fold-dressing-into-mixture
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step15 ?s)) (at start (step_pending ?s)) (at start (shrimp_peeled)) (at start (herbs_folded)) (at start (crabmeat_drained)) (at start (seafood_shocked)) (at start (capers_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressing_folded_in))))

  (:durative-action cover-bowl
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step16 ?s)) (at start (step_pending ?s)) (at start (ingredients_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_covered))))

  (:durative-action chop-herbs
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (is_step17 ?s)) (at start (step_pending ?s)) (at start (celery_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herbs_chopped))))

  (:durative-action chill-seafood
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step18 ?s)) (at start (step_pending ?s)) (at start (seafood_patted_dry)) (at start (seafood_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seafood_chilled))))

  (:durative-action slice-tomatoes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step19 ?s)) (at start (step_pending ?s)) (at start (workspace_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tomatoes_sliced))))

  (:durative-action zest-lemon
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step20 ?s)) (at start (step_pending ?s)) (at start (lemons_scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_zested))))

  (:durative-action prepare-plates
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_step21 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plates_prepared))))

  (:durative-action drain-crabmeat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step22 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crabmeat_drained))))

  (:durative-action thaw-scallops
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step23 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scallops_thawed))))

  (:durative-action shock-seafood
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step24 ?s)) (at start (step_pending ?s)) (at start (plates_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seafood_shocked))))

  (:durative-action scrub-lemons
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_step25 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemons_scrubbed))))

  (:durative-action measure-mustard-spices
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step26 ?s)) (at start (step_pending ?s)) (at start (workspace_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mustard_spices_measured))))

  (:durative-action drain-seafood
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step27 ?s)) (at start (step_pending ?s)) (at start (seafood_patted_dry)) (at start (mustard_spices_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seafood_drained))))

  (:durative-action sanitize-workspace
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step28 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_sanitized))))

  (:durative-action add-seasoning
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_step29 ?s)) (at start (step_pending ?s)) (at start (dressing_whisked)) (at start (vegetables_retrieved)) (at start (lemon_zested)) (at start (crabmeat_drained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoning_added))))

  (:durative-action open-capers
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step30 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (capers_opened))))
)