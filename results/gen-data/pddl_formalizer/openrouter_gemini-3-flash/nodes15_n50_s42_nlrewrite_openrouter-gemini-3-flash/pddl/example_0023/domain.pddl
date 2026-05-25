(define (domain pumpkin_dog_treats)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pumpkin_retrieved)
    (puree_whisked)
    (peanut_butter_added)
    (flour_sifted)
    (wet_dry_mixed)
    (dough_kneaded)
    (oven_preheating)
    (oven_ready)
    (supplies_gathered)
    (pans_greased)
    (workspace_cleared)
    (dough_cut)
    (rack_lined)
    (treats_placed)
    (treats_baked)
  )

  (:durative-action step9_retrieve_pumpkin
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pumpkin_retrieved)))
  )

  (:durative-action step1_whisk_puree
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pumpkin_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (puree_whisked)))
  )

  (:durative-action step6_add_peanut_butter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (puree_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peanut_butter_added)))
  )

  (:durative-action step7_sift_flour
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flour_sifted)))
  )

  (:durative-action step4_mix_ingredients
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (flour_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wet_dry_mixed)))
  )

  (:durative-action step2_knead_dough
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (wet_dry_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dough_kneaded)))
  )

  (:durative-action step3_preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheating)))
  )

  (:durative-action step12_oven_temp
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheating)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_ready)))
  )

  (:durative-action step5_gather_supplies
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_gathered)))
  )

  (:durative-action step8_grease_pans
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)) (at start (peanut_butter_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pans_greased)))
  )

  (:durative-action step15_clear_workspace
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared)))
  )

  (:durative-action step10_cut_dough
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (pumpkin_retrieved)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dough_cut)))
  )

  (:durative-action step11_line_rack
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rack_lined)))
  )

  (:durative-action step13_place_treats
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (dough_cut)) (at start (rack_lined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (treats_placed)))
  )

  (:durative-action step14_bake_treats
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (treats_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (treats_baked)))
  )
)