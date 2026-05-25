(define (domain async_stunt)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s4)) (at start (s11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s3)) (at start (s26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (s27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s7)) (at start (s10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s8)) (at start (s23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (s22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (s12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s13)) (at start (s15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (s5)) (at start (s13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending ?s)) (at start (s15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30))))
)