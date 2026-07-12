(define (domain dog-toy-production)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_done ?s - step)
    (step1_pending) (step2_pending) (step3_pending) (step4_pending)
    (step5_pending) (step6_pending) (step7_pending) (step8_pending)
    (step9_pending) (step10_pending) (step11_pending) (step12_pending)
    (step13_pending) (step14_pending) (step15_pending) (step16_pending)
    (step17_pending) (step18_pending) (step19_pending) (step20_pending)
    (materials_purchased)
    (fabric_cut)
    (materials_sanitized)
    (plush_bodies_stuffed)
    (final_seams_sewn)
    (squeakers_attached)
    (patterns_sketched)
    (rope_ends_knotted)
    (fabric_cylinders_stitched)
    (specifications_designed)
    (rope_braided)
    (fabric_edges_hemmed)
    (toys_scent_neutralized)
    (labels_printed)
    (packaging_labeled)
    (rope_inspected)
    (shears_sharpened)
    (machines_prepared)
    (components_air_dried)
    (shipping_boxes_ordered)
  )

  (:durative-action purchase-materials
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step_done ?s))
      (at end (materials_purchased))))

  (:durative-action cut-fabric-strips
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step2_pending))
      (at start (patterns_sketched)))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step_done ?s))
      (at end (fabric_cut))))

  (:durative-action sanitize-materials
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step3_pending))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step_done ?s))
      (at end (materials_sanitized))))

  (:durative-action stuff-plush-bodies
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step4_pending))
      (at start (fabric_cylinders_stitched)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step_done ?s))
      (at end (plush_bodies_stuffed))))

  (:durative-action sew-final-seams
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step5_pending))
      (at start (materials_sanitized))
      (at start (fabric_edges_hemmed))
      (at start (machines_prepared)))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step_done ?s))
      (at end (final_seams_sewn))))

  (:durative-action attach-squeakers
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step6_pending))
      (at start (rope_braided))
      (at start (machines_prepared)))
    :effect (and
      (at start (not (step6_pending)))
      (at end (step_done ?s))
      (at end (squeakers_attached))))

  (:durative-action sketch-patterns
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step7_pending))
    :effect (and
      (at start (not (step7_pending)))
      (at end (step_done ?s))
      (at end (patterns_sketched))))

  (:durative-action knot-rope-ends
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step8_pending))
      (at start (materials_purchased))
      (at start (rope_braided)))
    :effect (and
      (at start (not (step8_pending)))
      (at end (step_done ?s))
      (at end (rope_ends_knotted))))

  (:durative-action stitch-fabric-cylinders
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step9_pending))
      (at start (specifications_designed)))
    :effect (and
      (at start (not (step9_pending)))
      (at end (step_done ?s))
      (at end (fabric_cylinders_stitched))))

  (:durative-action design-specifications
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step10_pending))
    :effect (and
      (at start (not (step10_pending)))
      (at end (step_done ?s))
      (at end (specifications_designed))))

  (:durative-action braid-rope
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step11_pending))
      (at start (specifications_designed)))
    :effect (and
      (at start (not (step11_pending)))
      (at end (step_done ?s))
      (at end (rope_braided))))

  (:durative-action hem-fabric-edges
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step12_pending))
      (at start (fabric_cut))
      (at start (materials_sanitized))
      (at start (shears_sharpened)))
    :effect (and
      (at start (not (step12_pending)))
      (at end (step_done ?s))
      (at end (fabric_edges_hemmed))))

  (:durative-action neutralize-toy-scent
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step13_pending))
      (at start (materials_purchased))
      (at start (rope_inspected)))
    :effect (and
      (at start (not (step13_pending)))
      (at end (step_done ?s))
      (at end (toys_scent_neutralized))))

  (:durative-action print-safety-labels
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step14_pending))
    :effect (and
      (at start (not (step14_pending)))
      (at end (step_done ?s))
      (at end (labels_printed))))

  (:durative-action apply-packaging-labels
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step15_pending))
      (at start (labels_printed))
      (at start (shipping_boxes_ordered)))
    :effect (and
      (at start (not (step15_pending)))
      (at end (step_done ?s))
      (at end (packaging_labeled))))

  (:durative-action inspect-rope
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step16_pending))
    :effect (and
      (at start (not (step16_pending)))
      (at end (step_done ?s))
      (at end (rope_inspected))))

  (:durative-action sharpen-shears
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step17_pending))
    :effect (and
      (at start (not (step17_pending)))
      (at end (step_done ?s))
      (at end (shears_sharpened))))

  (:durative-action prepare-sewing-machines
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (at start (step18_pending))
    :effect (and
      (at start (not (step18_pending)))
      (at end (step_done ?s))
      (at end (machines_prepared))))

  (:durative-action air-dry-components
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step19_pending))
      (at start (materials_purchased))
      (at start (patterns_sketched))
      (at start (fabric_cylinders_stitched))
      (at start (machines_prepared)))
    :effect (and
      (at start (not (step19_pending)))
      (at end (step_done ?s))
      (at end (components_air_dried))))

  (:durative-action order-shipping-boxes
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step20_pending))
    :effect (and
      (at start (not (step20_pending)))
      (at end (step_done ?s))
      (at end (shipping_boxes_ordered))))
)