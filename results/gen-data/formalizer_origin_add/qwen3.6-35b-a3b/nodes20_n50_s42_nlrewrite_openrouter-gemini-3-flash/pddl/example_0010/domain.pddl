(define (domain dog_toys)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
               (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done))
  
  (:durative-action do_step1
    :duration (= ?duration 3600)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s1_done))))

  (:durative-action do_step2
    :duration (= ?duration 1200)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s7_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s2_done))))

  (:durative-action do_step3
    :duration (= ?duration 1800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s3_done))))

  (:durative-action do_step4
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s4_done))))

  (:durative-action do_step5
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s12_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s5_done))))

  (:durative-action do_step6
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s6_done))))

  (:durative-action do_step7
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s7_done))))

  (:durative-action do_step8
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s8_done))))

  (:durative-action do_step9
    :duration (= ?duration 2700)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s9_done))))

  (:durative-action do_step10
    :duration (= ?duration 7200)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s10_done))))

  (:durative-action do_step11
    :duration (= ?duration 2400)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s11_done))))

  (:durative-action do_step12
    :duration (= ?duration 1500)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s3_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s12_done))))

  (:durative-action do_step13
    :duration (= ?duration 10800)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s4_done)) (at start (s5_done)) (at start (s6_done)) (at start (s8_done)) (at start (s9_done)) (at start (s11_done)) (at start (s12_done)) (at start (s16_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s13_done))))

  (:durative-action do_step14
    :duration (= ?duration 300)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s14_done))))

  (:durative-action do_step15
    :duration (= ?duration 30)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)) (at start (s20_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s15_done))))

  (:durative-action do_step16
    :duration (= ?duration 900)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s16_done))))

  (:durative-action do_step17
    :duration (= ?duration 600)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s17_done))))

  (:durative-action do_step18
    :duration (= ?duration 720)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s18_done))))

  (:durative-action do_step19
    :duration (= ?duration 21600)
    :parameter (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s7_done)) (at start (s9_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s19_done))))

  (:durative-action do_step20
    :duration (= ?duration 172800)
    :parameter (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (s20_done))))
)