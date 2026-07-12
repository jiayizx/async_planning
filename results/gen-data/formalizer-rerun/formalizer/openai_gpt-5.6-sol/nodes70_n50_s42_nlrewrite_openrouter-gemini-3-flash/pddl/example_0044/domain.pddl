(define (domain beach-clothes)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (e1 ?s - step) (e2 ?s - step) (e3 ?s - step) (e4 ?s - step) (e5 ?s - step)
  (e6 ?s - step) (e7 ?s - step) (e8 ?s - step) (e9 ?s - step) (e10 ?s - step)
  (e11 ?s - step) (e12 ?s - step) (e13 ?s - step) (e14 ?s - step) (e15 ?s - step)
  (e16 ?s - step) (e17 ?s - step) (e18 ?s - step) (e19 ?s - step) (e20 ?s - step)
  (e21 ?s - step) (e22 ?s - step) (e23 ?s - step) (e24 ?s - step) (e25 ?s - step)
  (e26 ?s - step) (e27 ?s - step) (e28 ?s - step) (e29 ?s - step) (e30 ?s - step)
  (e31 ?s - step) (e32 ?s - step) (e33 ?s - step) (e34 ?s - step) (e35 ?s - step)
  (e36 ?s - step) (e37 ?s - step) (e38 ?s - step) (e39 ?s - step) (e40 ?s - step)
  (e41 ?s - step) (e42 ?s - step) (e43 ?s - step) (e44 ?s - step) (e45 ?s - step)
  (e46 ?s - step) (e47 ?s - step) (e48 ?s - step) (e49 ?s - step) (e50 ?s - step)
  (e51 ?s - step) (e52 ?s - step) (e53 ?s - step) (e54 ?s - step) (e55 ?s - step)
  (e56 ?s - step) (e57 ?s - step) (e58 ?s - step) (e59 ?s - step) (e60 ?s - step)
  (e61 ?s - step) (e62 ?s - step) (e63 ?s - step) (e64 ?s - step) (e65 ?s - step)
  (e66 ?s - step) (e67 ?s - step) (e68 ?s - step) (e69 ?s - step) (e70 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69) (d70))

 (:durative-action step1
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e1 ?s)) (at start (d23)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (e2 ?s)) (at start (d53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e3 ?s)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e4 ?s)) (at start (d48)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e5 ?s)) (at start (d27)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e6 ?s)) (at start (d14)) (at start (d27)) (at start (d47)) (at start (d60)) (at start (d67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7
  :parameters (?s - step) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (e7 ?s)) (at start (d30)) (at start (d47)) (at start (d53)) (at start (d58)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (e8 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e9 ?s)) (at start (d4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (e10 ?s)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e11 ?s)) (at start (d23)) (at start (d24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e12 ?s)) (at start (d31)) (at start (d42)) (at start (d50)) (at start (d52)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e13 ?s)) (at start (d7)) (at start (d32)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e14 ?s)) (at start (d33)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e15 ?s)) (at start (d5)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e16 ?s)) (at start (d4)) (at start (d19)) (at start (d53)) (at start (d60)) (at start (d65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (e17 ?s)) (at start (d21)) (at start (d42)) (at start (d45)) (at start (d46)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e18 ?s)) (at start (d20)) (at start (d31)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e19 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (e20 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e21 ?s)) (at start (d16)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e22 ?s)) (at start (d3)) (at start (d24)) (at start (d45)) (at start (d52)) (at start (d67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e23 ?s)) (at start (d19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e24 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e25 ?s)) (at start (d18)) (at start (d23)) (at start (d69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e26 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e27 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (e28 ?s)) (at start (d11)) (at start (d55)) (at start (d61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (e29 ?s)) (at start (d6)) (at start (d32)) (at start (d41)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e30 ?s)) (at start (d19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e31 ?s)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e32 ?s)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e33 ?s)) (at start (d34)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e34 ?s)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e35 ?s)) (at start (d27)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36
  :parameters (?s - step) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (e36 ?s)) (at start (d1)) (at start (d5)) (at start (d8)) (at start (d10)) (at start (d53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e37 ?s)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e38 ?s)) (at start (d5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e39 ?s)) (at start (d53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e40 ?s)) (at start (d19)) (at start (d62)) (at start (d66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e41 ?s)) (at start (d13)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (e42 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (e43 ?s)) (at start (d4)) (at start (d9)) (at start (d12)) (at start (d21)) (at start (d35)) (at start (d44)) (at start (d69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e44 ?s)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e45 ?s)) (at start (d39)) (at start (d53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e46 ?s)) (at start (d5)) (at start (d6)) (at start (d20)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e47 ?s)) (at start (d3)) (at start (d69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (e48 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (e49 ?s)) (at start (d33)) (at start (d54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e50 ?s)) (at start (d8)) (at start (d11)) (at start (d22)) (at start (d24)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
 (:durative-action step51
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e51 ?s)) (at start (d1)) (at start (d26)) (at start (d27)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))
 (:durative-action step52
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (e52 ?s)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))
 (:durative-action step53
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (e53 ?s)) (at start (d4)) (at start (d52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))
 (:durative-action step54
  :parameters (?s - step) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (e54 ?s)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))
 (:durative-action step55
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (e55 ?s)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))
 (:durative-action step56
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e56 ?s)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))
 (:durative-action step57
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (e57 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))
 (:durative-action step58
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e58 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))
 (:durative-action step59
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e59 ?s)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))
 (:durative-action step60
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e60 ?s)) (at start (d31)) (at start (d42)) (at start (d53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d60))))
 (:durative-action step61
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (e61 ?s)) (at start (d10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d61))))
 (:durative-action step62
  :parameters (?s - step) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (e62 ?s)) (at start (d5)) (at start (d8)) (at start (d45)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d62))))
 (:durative-action step63
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (e63 ?s)) (at start (d23)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d63))))
 (:durative-action step64
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (e64 ?s)) (at start (d2)) (at start (d5)) (at start (d6)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d64))))
 (:durative-action step65
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (e65 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d65))))
 (:durative-action step66
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (e66 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d66))))
 (:durative-action step67
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (e67 ?s)) (at start (d60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d67))))
 (:durative-action step68
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (e68 ?s)) (at start (d30)) (at start (d56)) (at start (d67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d68))))
 (:durative-action step69
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (e69 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d69))))
 (:durative-action step70
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (e70 ?s)) (at start (d2)) (at start (d17)) (at start (d36)) (at start (d53)) (at start (d66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d70))))
)