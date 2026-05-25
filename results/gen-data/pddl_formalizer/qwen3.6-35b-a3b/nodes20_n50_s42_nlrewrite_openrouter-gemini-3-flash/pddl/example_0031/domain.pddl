(define (domain apple_pie_turnovers)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 480
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 2400
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 720
    :condition (and (at start (step_pending ?s)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  (:durative-action do_step7
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  (:durative-action do_step8
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  (:durative-action do_step9
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  (:durative-action do_step10
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  (:durative-action do_step11
    :parameters (?s - step)
    :duration 720
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s4_done)) (at start (s6_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  (:durative-action do_step12
    :parameters (?s - step)
    :duration 1500
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s11_done)) (at start (s17_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  (:durative-action do_step13
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  (:durative-action do_step14
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  (:durative-action do_step15
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  (:durative-action do_step16
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  (:durative-action do_step17
    :parameters (?s - step)
    :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  (:durative-action do_step18
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  (:durative-action do_step19
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  (:durative-action do_step20
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
)