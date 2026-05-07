(define (domain study_clubs)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (s1-done) (s2-done) (s3-done) (s4-done) (s5-done) (s6-done) (s7-done) (s8-done) (s9-done) (s10-done)
    (s11-done) (s12-done) (s13-done) (s14-done) (s15-done) (s16-done) (s17-done) (s18-done) (s19-done) (s20-done))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step-pending ?s)) (at start (s20-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s1-done))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step-pending ?s)) (at start (s9-done)) (at start (s17-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s2-done))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step-pending ?s)) (at start (s18-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s3-done))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step-pending ?s)) (at start (s16-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s4-done))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s5-done))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s6-done))))
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s7-done))))
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step-pending ?s)) (at start (s6-done)) (at start (s19-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s8-done))))
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s9-done))))
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step-pending ?s)) (at start (s4-done)) (at start (s7-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s10-done))))
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step-pending ?s)) (at start (s1-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s11-done))))
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step-pending ?s)) (at start (s13-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s12-done))))
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step-pending ?s)) (at start (s15-done)) (at start (s17-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s13-done))))
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending ?s)) (at start (s8-done)) (at start (s12-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s14-done))))
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step-pending ?s)) (at start (s5-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s15-done))))
  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s16-done))))
  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s17-done))))
  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s18-done))))
  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s19-done))))
  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step-pending ?s)) (at start (s5-done)) (at start (s13-done)) (at start (s16-done)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (s20-done))))
)