(define (domain reflexology_charts)
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
  )

  (:durative-action purchase_parchment
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step1_pending)) (at start (step7_done)) (at start (step15_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action draft_anatomical_map
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step2_pending)) (at start (step4_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action apply_sealant
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step3_pending)) (at start (step5_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action research_lineage
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step4_pending)) (at start (step13_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action sketch_outlines
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step5_pending)) (at start (step14_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action locate_illustrator
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action browse_catalogs
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action print_grids
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step8_pending)) (at start (step1_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action color_code_systems
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step9_pending)) (at start (step2_done)) (at start (step13_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action cross_reference_maps
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step10_pending)) (at start (step13_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action laminate_documents
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step11_pending)) (at start (step4_done)) (at start (step8_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action set_drying_rack
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (step12_pending)) (at start (step3_done)) (at start (step5_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action interview_practitioner
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step13_pending)) (at start (step6_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action sharpen_pencils
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step14_pending))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action download_templates
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step15_pending))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)