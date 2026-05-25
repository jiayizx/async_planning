(define (domain garden_protection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
  )

  (:durative-action step1_purchase_mesh
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s1_done)))
  )

  (:durative-action step2_research_wildlife
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s2_done)))
  )

  (:durative-action step3_attach_netting
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s3_done)))
  )

  (:durative-action step4_measure_perimeter
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s4_done)))
  )

  (:durative-action step5_mix_repellent
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s5_done)))
  )

  (:durative-action step6_purchase_concentrates
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s6_done)))
  )

  (:durative-action step7_spray_perimeter
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s7_done)))
  )

  (:durative-action step8_test_gate
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s8_done)))
  )

  (:durative-action step9_dig_trench
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s4_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s9_done)))
  )

  (:durative-action step10_map_posts
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s10_done)))
  )

  (:durative-action step11_spread_gravel
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s11_done)))
  )

  (:durative-action step12_install_mesh
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s12_done)))
  )

  (:durative-action step13_setup_deterrents
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s13_done)))
  )

  (:durative-action step14_install_stakes
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s14_done)))
  )

  (:durative-action step15_backfill_trench
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s15_done)))
  )
)