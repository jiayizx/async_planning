(define (domain aces-up)
 (:requirements :durative-actions :typing)
 (:types step s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))
 (:durative-action do_step1
  :parameters (?s - s1) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action do_step2
  :parameters (?s - s2) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d24)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action do_step3
  :parameters (?s - s3) :duration (= ?duration 10)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action do_step4
  :parameters (?s - s4) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d15)) (at start (d29)) (at start (d32)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action do_step5
  :parameters (?s - s5) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action do_step6
  :parameters (?s - s6) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d19)) (at start (d36)) (at start (d48)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action do_step7
  :parameters (?s - s7) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d9)) (at start (d26)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action do_step8
  :parameters (?s - s8) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action do_step9
  :parameters (?s - s9) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d23)) (at start (d25)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action do_step10
  :parameters (?s - s10) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d23)) (at start (d24)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action do_step11
  :parameters (?s - s11) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d31)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action do_step12
  :parameters (?s - s12) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action do_step13
  :parameters (?s - s13) :duration (= ?duration 30)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action do_step14
  :parameters (?s - s14) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action do_step15
  :parameters (?s - s15) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action do_step16
  :parameters (?s - s16) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d10)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action do_step17
  :parameters (?s - s17) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d26)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action do_step18
  :parameters (?s - s18) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action do_step19
  :parameters (?s - s19) :duration (= ?duration 10)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action do_step20
  :parameters (?s - s20) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action do_step21
  :parameters (?s - s21) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action do_step22
  :parameters (?s - s22) :duration (= ?duration 45)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action do_step23
  :parameters (?s - s23) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action do_step24
  :parameters (?s - s24) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action do_step25
  :parameters (?s - s25) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action do_step26
  :parameters (?s - s26) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action do_step27
  :parameters (?s - s27) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d22)) (at start (d34)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action do_step28
  :parameters (?s - s28) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d42)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action do_step29
  :parameters (?s - s29) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action do_step30
  :parameters (?s - s30) :duration (= ?duration 10)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action do_step31
  :parameters (?s - s31) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d24)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action do_step32
  :parameters (?s - s32) :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action do_step33
  :parameters (?s - s33) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action do_step34
  :parameters (?s - s34) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action do_step35
  :parameters (?s - s35) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (d13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action do_step36
  :parameters (?s - s36) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d4)) (at start (d29)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action do_step37
  :parameters (?s - s37) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d15)) (at start (d17)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action do_step38
  :parameters (?s - s38) :duration (= ?duration 45)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action do_step39
  :parameters (?s - s39) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action do_step40
  :parameters (?s - s40) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action do_step41
  :parameters (?s - s41) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d23)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action do_step42
  :parameters (?s - s42) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d24)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action do_step43
  :parameters (?s - s43) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action do_step44
  :parameters (?s - s44) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (d7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action do_step45
  :parameters (?s - s45) :duration (= ?duration 15)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action do_step46
  :parameters (?s - s46) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action do_step47
  :parameters (?s - s47) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action do_step48
  :parameters (?s - s48) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action do_step49
  :parameters (?s - s49) :duration (= ?duration 30)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action do_step50
  :parameters (?s - s50) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (d14)) (at start (d19)) (at start (d21)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
)