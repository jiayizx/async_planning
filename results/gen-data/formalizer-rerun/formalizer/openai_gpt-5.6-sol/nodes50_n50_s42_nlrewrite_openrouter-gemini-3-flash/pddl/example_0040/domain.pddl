(define (domain chronic-illness-plan)
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
  (is41 ?s - step) (is42 ?s - step) (is43 ?s - step) (is44 ?s - step) (is45 ?s - step)
  (is46 ?s - step) (is47 ?s - step) (is48 ?s - step) (is49 ?s - step) (is50 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

 (:durative-action do_step1
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action do_step2
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action do_step3
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action do_step4
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action do_step5
  :parameters (?s - step) :duration (= ?duration 7776000)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (d6)) (at start (d27)) (at start (d35)) (at start (d43)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action do_step6
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action do_step7
  :parameters (?s - step) :duration (= ?duration 2592000)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action do_step8
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action do_step9
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action do_step10
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (d22)) (at start (d29)) (at start (d32)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action do_step11
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action do_step12
  :parameters (?s - step) :duration (= ?duration 864000)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (d1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action do_step13
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (d1)) (at start (d4)) (at start (d20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action do_step14
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (d9)) (at start (d19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action do_step15
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (d31)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action do_step16
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action do_step17
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)) (at start (d32)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action do_step18
  :parameters (?s - step) :duration (= ?duration 1814400)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)) (at start (d9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action do_step19
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (d2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action do_step20
  :parameters (?s - step) :duration (= ?duration 21600)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action do_step21
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (d2)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action do_step22
  :parameters (?s - step) :duration (= ?duration 2592000)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)) (at start (d13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action do_step23
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action do_step24
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (d26)) (at start (d43)) (at start (d46)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action do_step25
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action do_step26
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action do_step27
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action do_step28
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (d12)) (at start (d33)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action do_step29
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)) (at start (d22)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action do_step30
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (d13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action do_step31
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action do_step32
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)) (at start (d7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action do_step33
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (d7)) (at start (d23)) (at start (d27)) (at start (d32)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action do_step34
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)) (at start (d6)) (at start (d7)) (at start (d17)) (at start (d20)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action do_step35
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action do_step36
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (d7)) (at start (d16)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action do_step37
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action do_step38
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action do_step39
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (d20)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action do_step40
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action do_step41
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is41 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action do_step42
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is42 ?s)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action do_step43
  :parameters (?s - step) :duration (= ?duration 432000)
  :condition (and (at start (step_pending ?s)) (at start (is43 ?s)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action do_step44
  :parameters (?s - step) :duration (= ?duration 1814400)
  :condition (and (at start (step_pending ?s)) (at start (is44 ?s)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action do_step45
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is45 ?s)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action do_step46
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is46 ?s)) (at start (d2)) (at start (d4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action do_step47
  :parameters (?s - step) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (is47 ?s)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action do_step48
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is48 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action do_step49
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is49 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action do_step50
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is50 ?s)) (at start (d11)) (at start (d12)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
)