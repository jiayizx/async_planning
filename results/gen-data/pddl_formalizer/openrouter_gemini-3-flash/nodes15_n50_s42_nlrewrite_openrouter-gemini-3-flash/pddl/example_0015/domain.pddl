(define (domain hoarse_voice_cure)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
  )

  (:durative-action purchase_humidifier
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  (:durative-action steep_tea
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s14_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action gargle_salt_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action prepare_broth
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action boil_water
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action take_honey
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s10_done)) (at start (s11_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action rest_vocal_cords
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s5_done)) (at start (s6_done)) (at start (s10_done)) (at start (s12_done)) (at start (s14_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action reassess_voice
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action drink_liquids
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action research_exercises
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action mix_saline
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action perform_humming
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action apply_compress
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action pour_water
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action setup_humidifier
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )
)