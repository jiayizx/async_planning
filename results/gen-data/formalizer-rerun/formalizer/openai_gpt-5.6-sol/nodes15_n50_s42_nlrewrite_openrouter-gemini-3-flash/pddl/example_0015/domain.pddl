(define (domain hoarse-voice-cure)
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
    (humidifier_purchased)
    (tea_steeped)
    (salt_water_gargled)
    (broth_prepared)
    (water_boiled)
    (honey_taken)
    (vocal_cords_rested)
    (voice_reassessed)
    (warm_liquids_drank)
    (exercises_researched)
    (saline_mixed)
    (humming_performed)
    (compress_applied)
    (water_poured)
    (humidifier_setup)
  )

  (:durative-action purchase_humidifier
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (humidifier_purchased)))
  )

  (:durative-action steep_tea
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tea_steeped)))
  )

  (:durative-action gargle_salt_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (saline_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salt_water_gargled)))
  )

  (:durative-action prepare_broth
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (broth_prepared)))
  )

  (:durative-action boil_water
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (water_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled)))
  )

  (:durative-action take_honey
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (salt_water_gargled)) (at start (humming_performed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (honey_taken)))
  )

  (:durative-action rest_voice
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (tea_steeped)) (at start (honey_taken)) (at start (exercises_researched)) (at start (humidifier_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vocal_cords_rested)))
  )

  (:durative-action reassess_voice
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (vocal_cords_rested)) (at start (exercises_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (voice_reassessed)))
  )

  (:durative-action drink_warm_liquids
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (broth_prepared)) (at start (humidifier_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (warm_liquids_drank)))
  )

  (:durative-action research_exercises
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exercises_researched)))
  )

  (:durative-action mix_saline
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (saline_mixed)))
  )

  (:durative-action perform_humming
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (exercises_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (humming_performed)))
  )

  (:durative-action apply_compress
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (saline_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (compress_applied)))
  )

  (:durative-action pour_water
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (humidifier_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_poured)))
  )

  (:durative-action setup_humidifier
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (humidifier_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (humidifier_setup)))
  )
)