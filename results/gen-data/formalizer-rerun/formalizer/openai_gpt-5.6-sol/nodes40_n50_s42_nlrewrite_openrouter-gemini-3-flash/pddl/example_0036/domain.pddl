(define (domain learn-piano)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (is1 ?s - step) (is2 ?s - step) (is3 ?s - step) (is4 ?s - step) (is5 ?s - step)
  (is6 ?s - step) (is7 ?s - step) (is8 ?s - step) (is9 ?s - step) (is10 ?s - step)
  (is11 ?s - step) (is12 ?s - step) (is13 ?s - step) (is14 ?s - step) (is15 ?s - step)
  (is16 ?s - step) (is17 ?s - step) (is18 ?s - step) (is19 ?s - step) (is20 ?s - step)
  (is21 ?s - step) (is22 ?s - step) (is23 ?s - step) (is24 ?s - step) (is25 ?s - step)
  (is26 ?s - step) (is27 ?s - step) (is28 ?s - step) (is29 ?s - step) (is30 ?s - step)
  (is31 ?s - step) (is32 ?s - step) (is33 ?s - step) (is34 ?s - step) (is35 ?s - step)
  (is36 ?s - step) (is37 ?s - step) (is38 ?s - step) (is39 ?s - step) (is40 ?s - step)
  (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
  (done11) (piano_learned) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
  (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
  (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40))

 (:durative-action step1
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (done5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1))))
 (:durative-action step2
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)) (at start (done4)) (at start (done9)) (at start (done32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2))))
 (:durative-action step3
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (done24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3))))
 (:durative-action step4
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (done13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4))))
 (:durative-action step5
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (done31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5))))
 (:durative-action step6
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (done26)) (at start (done31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6))))
 (:durative-action step7
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)) (at start (done34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7))))
 (:durative-action step8
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)) (at start (done31)) (at start (done33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8))))
 (:durative-action step9
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (done4)) (at start (done16)) (at start (done25)) (at start (done39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9))))
 (:durative-action step10
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (done1)) (at start (done34)) (at start (done37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10))))
 (:durative-action step11
  :parameters (?s - step) :duration (= ?duration 432000)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (done10)) (at start (done22)) (at start (done32)) (at start (done40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11))))
 (:durative-action step12
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (done10)) (at start (done11)) (at start (done18)) (at start (done25)) (at start (done38)) (at start (done39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (piano_learned))))
 (:durative-action step13
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13))))
 (:durative-action step14
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14))))
 (:durative-action step15
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15))))
 (:durative-action step16
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)) (at start (done31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16))))
 (:durative-action step17
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)) (at start (done10)) (at start (done14)) (at start (done29)) (at start (done40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17))))
 (:durative-action step18
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18))))
 (:durative-action step19
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (done29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19))))
 (:durative-action step20
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)) (at start (done21)) (at start (done31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20))))
 (:durative-action step21
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21))))
 (:durative-action step22
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)) (at start (done18)) (at start (done30)) (at start (done31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22))))
 (:durative-action step23
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (done3)) (at start (done13)) (at start (done15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23))))
 (:durative-action step24
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (done22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24))))
 (:durative-action step25
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (done20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25))))
 (:durative-action step26
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (done2)) (at start (done38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26))))
 (:durative-action step27
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (done13)) (at start (done23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27))))
 (:durative-action step28
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (done15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28))))
 (:durative-action step29
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)) (at start (done32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29))))
 (:durative-action step30
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (done17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30))))
 (:durative-action step31
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)) (at start (done36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done31))))
 (:durative-action step32
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)) (at start (done21)) (at start (done34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done32))))
 (:durative-action step33
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (done7)) (at start (done14)) (at start (done26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done33))))
 (:durative-action step34
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)) (at start (done20)) (at start (done40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done34))))
 (:durative-action step35
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done35))))
 (:durative-action step36
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (done21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done36))))
 (:durative-action step37
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (done19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done37))))
 (:durative-action step38
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)) (at start (done20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done38))))
 (:durative-action step39
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (done13)) (at start (done35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done39))))
 (:durative-action step40
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done40))))
)