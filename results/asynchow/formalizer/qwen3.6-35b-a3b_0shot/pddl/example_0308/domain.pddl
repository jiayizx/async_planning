(define (domain bake_pie_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (preheated)
               (crust_prepared)
               (blueberries_mixed)
               (poured)
               (topped)
               (crimped)
               (slits_cut)
               (baked)
               (finished))
  (:durative-action step1_preheat
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (preheated))))
  (:durative-action step2_prepare_crust
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (crust_prepared))))
  (:durative-action step3_mix_blueberries
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (blueberries_mixed))))
  (:durative-action step4_pour_mixture
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s))
                   (at start (crust_prepared))
                   (at start (blueberries_mixed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (poured))))
  (:durative-action step5_top_crust
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s))
                   (at start (poured)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (topped))))
  (:durative-action step6_crimp_seal
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s))
                   (at start (topped)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (crimped))))
  (:durative-action step7_cut_slits
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s))
                   (at start (topped)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (slits_cut))))
  (:durative-action step8_bake
    :parameters (?s - step)
    :duration 3600
    :condition (and (at start (step_pending ?s))
                   (at start (preheated))
                   (at start (crimped))
                   (at start (slits_cut)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (baked))))
  (:durative-action step9_finished
    :parameters (?s - step)
    :duration 0
    :condition (and (at start (step_pending ?s))
                   (at start (baked)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (finished))))
)