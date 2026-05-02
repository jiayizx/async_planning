(define (domain hoarse_voice_recovery)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
    (s15_pending) (s15_done)
  )

  (:durative-action purchase_humidifier
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (s1_pending))
    :effect (and (at start (not (s1_pending))) (at end (s1_done))))

  (:durative-action brew_tea
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s2_pending)) (at start (s5_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done))))

  (:durative-action prepare_gargle
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s3_pending)) (at start (s11_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done))))

  (:durative-action apply_compress
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (s4_pending))
    :effect (and (at start (not (s4_pending))) (at end (s4_done))))

  (:durative-action research_recipes
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s5_pending)) (at start (s14_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done))))

  (:durative-action gargle_thoroughly
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s6_pending)) (at start (s3_done)) (at start (s12_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done))))

  (:durative-action vocal_rest
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (s7_pending)) (at start (s2_done)) (at start (s6_done)) (at start (s10_done)) (at start (s15_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done))))

  (:durative-action steamy_shower
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (s8_pending)) (at start (s7_done)) (at start (s10_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done))))

  (:durative-action suck_lozenges
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s9_pending)) (at start (s4_done)) (at start (s15_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done))))

  (:durative-action consult_pharmacist
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s10_pending))
    :effect (and (at start (not (s10_pending))) (at end (s10_done))))

  (:durative-action clear_nightstand
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (s11_pending))
    :effect (and (at start (not (s11_pending))) (at end (s11_done))))

  (:durative-action setup_humidifier
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s12_pending)) (at start (s10_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done))))

  (:durative-action sanitize_bottles
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s13_pending)) (at start (s11_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done))))

  (:durative-action purchase_honey_ginger
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (s14_pending)) (at start (s15_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done))))

  (:durative-action clean_filters
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (s15_pending)) (at start (s1_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done))))
)