(define (domain make_cat_dog_bed)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    step_pending step_done
    patches_purchased pillowcase_washed dimensions_measured foam_cut
    batting_purchased thread_selected zipper_stitched workspace_cleared
    fabric_sprayed supplies_gathered wrinkles_ironed batting_strips_cut
    bed_placed corners_reinforced batting_rolled circumference_measured
    design_sketched bed_air_dried pillowcase_checked cedar_bought
    edges_pinned template_printed cedar_mixed batting_stuffed cedar_pouched
    seams_sewn designs_researched repellent_applied needle_threaded
    pillowcase_found)

  (:durative-action do_step1
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patches_purchased))))

  (:durative-action do_step2
    :duration (= ?duration 5400)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pillowcase_washed))))

  (:durative-action do_step3
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (pillowcase_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimensions_measured))))

  (:durative-action do_step4
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (dimensions_measured)) (at start (thread_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foam_cut))))

  (:durative-action do_step5
    :duration (= ?duration 2700)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (dimensions_measured)) (at start (pillowcase_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_purchased))))

  (:durative-action do_step6
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thread_selected))))

  (:durative-action do_step7
    :duration (= ?duration 1800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (batting_rolled)) (at start (batting_stuffed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (zipper_stitched))))

  (:durative-action do_step8
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared))))

  (:durative-action do_step9
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (design_sketched)) (at start (pillowcase_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fabric_sprayed))))

  (:durative-action do_step10
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_gathered))))

  (:durative-action do_step11
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_washed)) (at start (pillowcase_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wrinkles_ironed))))

  (:durative-action do_step12
    :duration (= ?duration 1200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (circumference_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_strips_cut))))

  (:durative-action do_step13
    :duration (= ?duration 120)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (zipper_stitched)) (at start (repellent_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bed_placed))))

  (:durative-action do_step14
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (edges_pinned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (corners_reinforced))))

  (:durative-action do_step15
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (batting_purchased)) (at start (batting_strips_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_rolled))))

  (:durative-action do_step16
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (circumference_measured))))

  (:durative-action do_step17
    :duration (= ?duration 1200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (design_sketched))))

  (:durative-action do_step18
    :duration (= ?duration 86400)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_washed)) (at start (cedar_pouched)) (at start (seams_sewn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bed_air_dried))))

  (:durative-action do_step19
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (dimensions_measured)) (at start (design_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pillowcase_checked))))

  (:durative-action do_step20
    :duration (= ?duration 1800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cedar_bought))))

  (:durative-action do_step21
    :duration (= ?duration 1200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (pillowcase_washed)) (at start (dimensions_measured)) (at start (zipper_stitched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edges_pinned))))

  (:durative-action do_step22
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (designs_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (template_printed))))

  (:durative-action do_step23
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (cedar_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cedar_mixed))))

  (:durative-action do_step24
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (batting_rolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batting_stuffed))))

  (:durative-action do_step25
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (cedar_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cedar_pouched))))

  (:durative-action do_step26
    :duration (= ?duration 2400)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (thread_selected)) (at start (corners_reinforced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seams_sewn))))

  (:durative-action do_step27
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (designs_researched))))

  (:durative-action do_step28
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (fabric_sprayed)) (at start (cedar_mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (repellent_applied))))

  (:durative-action do_step29
    :duration (= ?duration 120)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (supplies_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (needle_threaded))))

  (:durative-action do_step30
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pillowcase_found))))
)
