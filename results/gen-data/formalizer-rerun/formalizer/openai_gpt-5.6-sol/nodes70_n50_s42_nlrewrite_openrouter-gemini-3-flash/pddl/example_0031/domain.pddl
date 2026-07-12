(define (domain store-protection)
 (:requirements :typing :durative-actions)
 (:types step step1-type step2-type step3-type step4-type step5-type step6-type step7-type step8-type step9-type step10-type step11-type step12-type step13-type step14-type step15-type step16-type step17-type step18-type step19-type step20-type step21-type step22-type step23-type step24-type step25-type step26-type step27-type step28-type step29-type step30-type step31-type step32-type step33-type step34-type step35-type step36-type step37-type step38-type step39-type step40-type step41-type step42-type step43-type step44-type step45-type step46-type step47-type step48-type step49-type step50-type step51-type step52-type step53-type step54-type step55-type step56-type step57-type step58-type step59-type step60-type step61-type step62-type step63-type step64-type step65-type step66-type step67-type step68-type step69-type step70-type - step)
 (:predicates
  (step-pending ?s - step) (step-done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69) (d70))
 (:durative-action execute-step1
  :parameters (?s - step1-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d11)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d1))))
 (:durative-action execute-step2
  :parameters (?s - step2-type) :duration (= ?duration 10800)
  :condition (and (at start (step-pending ?s)) (at start (d1)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d2))))
 (:durative-action execute-step3
  :parameters (?s - step3-type) :duration (= ?duration 86400)
  :condition (and (at start (step-pending ?s)) (at start (d2)) (at start (d53)) (at start (d54)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d3))))
 (:durative-action execute-step4
  :parameters (?s - step4-type) :duration (= ?duration 14400)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d4))))
 (:durative-action execute-step5
  :parameters (?s - step5-type) :duration (= ?duration 172800)
  :condition (and (at start (step-pending ?s)) (at start (d11)) (at start (d20)) (at start (d41)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d5))))
 (:durative-action execute-step6
  :parameters (?s - step6-type) :duration (= ?duration 604800)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d6))))
 (:durative-action execute-step7
  :parameters (?s - step7-type) :duration (= ?duration 18000)
  :condition (and (at start (step-pending ?s)) (at start (d6)) (at start (d12)) (at start (d29)) (at start (d41)) (at start (d65)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d7))))
 (:durative-action execute-step8
  :parameters (?s - step8-type) :duration (= ?duration 345600)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d8))))
 (:durative-action execute-step9
  :parameters (?s - step9-type) :duration (= ?duration 10800)
  :condition (and (at start (step-pending ?s)) (at start (d18)) (at start (d53)) (at start (d61)) (at start (d69)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d9))))
 (:durative-action execute-step10
  :parameters (?s - step10-type) :duration (= ?duration 21600)
  :condition (and (at start (step-pending ?s)) (at start (d27)) (at start (d40)) (at start (d47)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d10))))
 (:durative-action execute-step11
  :parameters (?s - step11-type) :duration (= ?duration 86400)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d11))))
 (:durative-action execute-step12
  :parameters (?s - step12-type) :duration (= ?duration 10800)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d12))))
 (:durative-action execute-step13
  :parameters (?s - step13-type) :duration (= ?duration 3600)
  :condition (and (at start (step-pending ?s)) (at start (d16)) (at start (d49)) (at start (d53)) (at start (d56)) (at start (d61)) (at start (d65)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d13))))
 (:durative-action execute-step14
  :parameters (?s - step14-type) :duration (= ?duration 1814400)
  :condition (and (at start (step-pending ?s)) (at start (d2)) (at start (d6)) (at start (d11)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d14))))
 (:durative-action execute-step15
  :parameters (?s - step15-type) :duration (= ?duration 7200)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d15))))
 (:durative-action execute-step16
  :parameters (?s - step16-type) :duration (= ?duration 14400)
  :condition (and (at start (step-pending ?s)) (at start (d4)) (at start (d18)) (at start (d22)) (at start (d27)) (at start (d33)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d16))))
 (:durative-action execute-step17
  :parameters (?s - step17-type) :duration (= ?duration 28800)
  :condition (and (at start (step-pending ?s)) (at start (d11)) (at start (d16)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d17))))
 (:durative-action execute-step18
  :parameters (?s - step18-type) :duration (= ?duration 1209600)
  :condition (and (at start (step-pending ?s)) (at start (d46)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d18))))
 (:durative-action execute-step19
  :parameters (?s - step19-type) :duration (= ?duration 14400)
  :condition (and (at start (step-pending ?s)) (at start (d6)) (at start (d11)) (at start (d37)) (at start (d41)) (at start (d70)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d19))))
 (:durative-action execute-step20
  :parameters (?s - step20-type) :duration (= ?duration 86400)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d20))))
 (:durative-action execute-step21
  :parameters (?s - step21-type) :duration (= ?duration 1800)
  :condition (and (at start (step-pending ?s)) (at start (d2)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d21))))
 (:durative-action execute-step22
  :parameters (?s - step22-type) :duration (= ?duration 7200)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d22))))
 (:durative-action execute-step23
  :parameters (?s - step23-type) :duration (= ?duration 3600)
  :condition (and (at start (step-pending ?s)) (at start (d47)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d23))))
 (:durative-action execute-step24
  :parameters (?s - step24-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d6)) (at start (d40)) (at start (d58)) (at start (d59)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d24))))
 (:durative-action execute-step25
  :parameters (?s - step25-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d16)) (at start (d33)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d25))))
 (:durative-action execute-step26
  :parameters (?s - step26-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d10)) (at start (d20)) (at start (d70)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d26))))
 (:durative-action execute-step27
  :parameters (?s - step27-type) :duration (= ?duration 432000)
  :condition (and (at start (step-pending ?s)) (at start (d62)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d27))))
 (:durative-action execute-step28
  :parameters (?s - step28-type) :duration (= ?duration 604800)
  :condition (and (at start (step-pending ?s)) (at start (d11)) (at start (d14)) (at start (d18)) (at start (d45)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d28))))
 (:durative-action execute-step29
  :parameters (?s - step29-type) :duration (= ?duration 14400)
  :condition (and (at start (step-pending ?s)) (at start (d27)) (at start (d54)) (at start (d68)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d29))))
 (:durative-action execute-step30
  :parameters (?s - step30-type) :duration (= ?duration 10800)
  :condition (and (at start (step-pending ?s)) (at start (d21)) (at start (d34)) (at start (d70)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d30))))
 (:durative-action execute-step31
  :parameters (?s - step31-type) :duration (= ?duration 172800)
  :condition (and (at start (step-pending ?s)) (at start (d37)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d31))))
 (:durative-action execute-step32
  :parameters (?s - step32-type) :duration (= ?duration 604800)
  :condition (and (at start (step-pending ?s)) (at start (d6)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d32))))
 (:durative-action execute-step33
  :parameters (?s - step33-type) :duration (= ?duration 10800)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d33))))
 (:durative-action execute-step34
  :parameters (?s - step34-type) :duration (= ?duration 86400)
  :condition (and (at start (step-pending ?s)) (at start (d23)) (at start (d27)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d34))))
 (:durative-action execute-step35
  :parameters (?s - step35-type) :duration (= ?duration 18000)
  :condition (and (at start (step-pending ?s)) (at start (d50)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d35))))
 (:durative-action execute-step36
  :parameters (?s - step36-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d3)) (at start (d35)) (at start (d40)) (at start (d65)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d36))))
 (:durative-action execute-step37
  :parameters (?s - step37-type) :duration (= ?duration 86400)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d37))))
 (:durative-action execute-step38
  :parameters (?s - step38-type) :duration (= ?duration 3600)
  :condition (and (at start (step-pending ?s)) (at start (d13)) (at start (d34)) (at start (d59)) (at start (d66)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d38))))
 (:durative-action execute-step39
  :parameters (?s - step39-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d53)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d39))))
 (:durative-action execute-step40
  :parameters (?s - step40-type) :duration (= ?duration 21600)
  :condition (and (at start (step-pending ?s)) (at start (d27)) (at start (d55)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d40))))
 (:durative-action execute-step41
  :parameters (?s - step41-type) :duration (= ?duration 10800)
  :condition (and (at start (step-pending ?s)) (at start (d44)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d41))))
 (:durative-action execute-step42
  :parameters (?s - step42-type) :duration (= ?duration 14400)
  :condition (and (at start (step-pending ?s)) (at start (d3)) (at start (d25)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d42))))
 (:durative-action execute-step43
  :parameters (?s - step43-type) :duration (= ?duration 3600)
  :condition (and (at start (step-pending ?s)) (at start (d24)) (at start (d61)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d43))))
 (:durative-action execute-step44
  :parameters (?s - step44-type) :duration (= ?duration 172800)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d44))))
 (:durative-action execute-step45
  :parameters (?s - step45-type) :duration (= ?duration 14400)
  :condition (and (at start (step-pending ?s)) (at start (d6)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d45))))
 (:durative-action execute-step46
  :parameters (?s - step46-type) :duration (= ?duration 604800)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d46))))
 (:durative-action execute-step47
  :parameters (?s - step47-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d16)) (at start (d35)) (at start (d70)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d47))))
 (:durative-action execute-step48
  :parameters (?s - step48-type) :duration (= ?duration 10800)
  :condition (and (at start (step-pending ?s)) (at start (d15)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d48))))
 (:durative-action execute-step49
  :parameters (?s - step49-type) :duration (= ?duration 18000)
  :condition (and (at start (step-pending ?s)) (at start (d48)) (at start (d56)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d49))))
 (:durative-action execute-step50
  :parameters (?s - step50-type) :duration (= ?duration 14400)
  :condition (and (at start (step-pending ?s)) (at start (d37)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d50))))
 (:durative-action execute-step51
  :parameters (?s - step51-type) :duration (= ?duration 1800)
  :condition (and (at start (step-pending ?s)) (at start (d26)) (at start (d58)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d51))))
 (:durative-action execute-step52
  :parameters (?s - step52-type) :duration (= ?duration 3600)
  :condition (and (at start (step-pending ?s)) (at start (d2)) (at start (d62)) (at start (d65)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d52))))
 (:durative-action execute-step53
  :parameters (?s - step53-type) :duration (= ?duration 21600)
  :condition (and (at start (step-pending ?s)) (at start (d31)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d53))))
 (:durative-action execute-step54
  :parameters (?s - step54-type) :duration (= ?duration 21600)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d54))))
 (:durative-action execute-step55
  :parameters (?s - step55-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d11)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d55))))
 (:durative-action execute-step56
  :parameters (?s - step56-type) :duration (= ?duration 7200)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d56))))
 (:durative-action execute-step57
  :parameters (?s - step57-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d33)) (at start (d50)) (at start (d61)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d57))))
 (:durative-action execute-step58
  :parameters (?s - step58-type) :duration (= ?duration 3600)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d58))))
 (:durative-action execute-step59
  :parameters (?s - step59-type) :duration (= ?duration 10800)
  :condition (and (at start (step-pending ?s)) (at start (d66)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d59))))
 (:durative-action execute-step60
  :parameters (?s - step60-type) :duration (= ?duration 172800)
  :condition (and (at start (step-pending ?s)) (at start (d8)) (at start (d65)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d60))))
 (:durative-action execute-step61
  :parameters (?s - step61-type) :duration (= ?duration 10800)
  :condition (and (at start (step-pending ?s)) (at start (d4)) (at start (d55)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d61))))
 (:durative-action execute-step62
  :parameters (?s - step62-type) :duration (= ?duration 86400)
  :condition (and (at start (step-pending ?s)) (at start (d2)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d62))))
 (:durative-action execute-step63
  :parameters (?s - step63-type) :duration (= ?duration 86400)
  :condition (and (at start (step-pending ?s)) (at start (d57)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d63))))
 (:durative-action execute-step64
  :parameters (?s - step64-type) :duration (= ?duration 7200)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d64))))
 (:durative-action execute-step65
  :parameters (?s - step65-type) :duration (= ?duration 14400)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d65))))
 (:durative-action execute-step66
  :parameters (?s - step66-type) :duration (= ?duration 3600)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d66))))
 (:durative-action execute-step67
  :parameters (?s - step67-type) :duration (= ?duration 7200)
  :condition (and (at start (step-pending ?s)) (at start (d2)) (at start (d13)) (at start (d64)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d67))))
 (:durative-action execute-step68
  :parameters (?s - step68-type) :duration (= ?duration 10800)
  :condition (at start (step-pending ?s))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d68))))
 (:durative-action execute-step69
  :parameters (?s - step69-type) :duration (= ?duration 3600)
  :condition (and (at start (step-pending ?s)) (at start (d10)) (at start (d20)) (at start (d25)) (at start (d46)) (at start (d66)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d69))))
 (:durative-action execute-step70
  :parameters (?s - step70-type) :duration (= ?duration 14400)
  :condition (and (at start (step-pending ?s)) (at start (d35)))
  :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (d70))))
)