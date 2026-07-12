(define (domain beef-tongue)
 (:requirements :durative-actions :typing)
 (:types step)
 (:predicates
  (pending ?s - step) (step_done ?s - step)
  (slot1 ?s - step) (slot2 ?s - step) (slot3 ?s - step) (slot4 ?s - step)
  (slot5 ?s - step) (slot6 ?s - step) (slot7 ?s - step) (slot8 ?s - step)
  (slot9 ?s - step) (slot10 ?s - step) (slot11 ?s - step) (slot12 ?s - step)
  (slot13 ?s - step) (slot14 ?s - step) (slot15 ?s - step) (slot16 ?s - step)
  (slot17 ?s - step) (slot18 ?s - step) (slot19 ?s - step) (slot20 ?s - step)
  (slot21 ?s - step) (slot22 ?s - step) (slot23 ?s - step) (slot24 ?s - step)
  (slot25 ?s - step) (slot26 ?s - step) (slot27 ?s - step) (slot28 ?s - step)
  (slot29 ?s - step) (slot30 ?s - step) (slot31 ?s - step) (slot32 ?s - step)
  (slot33 ?s - step) (slot34 ?s - step) (slot35 ?s - step) (slot36 ?s - step)
  (slot37 ?s - step) (slot38 ?s - step) (slot39 ?s - step) (slot40 ?s - step)
  (slot41 ?s - step) (slot42 ?s - step) (slot43 ?s - step) (slot44 ?s - step)
  (slot45 ?s - step) (slot46 ?s - step) (slot47 ?s - step) (slot48 ?s - step)
  (slot49 ?s - step) (slot50 ?s - step) (slot51 ?s - step) (slot52 ?s - step)
  (slot53 ?s - step) (slot54 ?s - step) (slot55 ?s - step) (slot56 ?s - step)
  (slot57 ?s - step) (slot58 ?s - step) (slot59 ?s - step) (slot60 ?s - step)
  (slot61 ?s - step) (slot62 ?s - step) (slot63 ?s - step) (slot64 ?s - step)
  (slot65 ?s - step) (slot66 ?s - step) (slot67 ?s - step) (slot68 ?s - step)
  (slot69 ?s - step) (slot70 ?s - step) (slot71 ?s - step) (slot72 ?s - step)
  (slot73 ?s - step) (slot74 ?s - step) (slot75 ?s - step) (slot76 ?s - step)
  (slot77 ?s - step) (slot78 ?s - step) (slot79 ?s - step) (slot80 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69) (d70)
  (d71) (d72) (d73) (d74) (d75) (d76) (d77) (d78) (d79)
  (dish-presented)
 )

 (:durative-action step1
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot1 ?s)) (at start (d78)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (slot2 ?s)) (at start (d11)) (at start (d41)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot3 ?s)) (at start (d7)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (slot4 ?s)) (at start (d11)) (at start (d21)) (at start (d37)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot5 ?s)) (at start (d25)) (at start (d41)) (at start (d61)) (at start (d63)) (at start (d72)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot6 ?s)) (at start (d17)) (at start (d19)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot7 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot8 ?s)) (at start (d25)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot9 ?s)) (at start (d40)) (at start (d56)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (slot10 ?s)) (at start (d16)) (at start (d19)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (pending ?s)) (at start (slot11 ?s)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot12 ?s)) (at start (d16)) (at start (d30)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot13 ?s)) (at start (d7)) (at start (d16)) (at start (d46)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (pending ?s)) (at start (slot14 ?s)) (at start (d5)) (at start (d77)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (pending ?s)) (at start (slot15 ?s)) (at start (d12)) (at start (d51)) (at start (d69)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot16 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot17 ?s)) (at start (d12)) (at start (d13)) (at start (d37)) (at start (d48)) (at start (d72)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot18 ?s)) (at start (d11)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (pending ?s)) (at start (slot19 ?s)) (at start (d13)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot20 ?s)) (at start (d12)) (at start (d33)) (at start (d57)) (at start (d67)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (pending ?s)) (at start (slot21 ?s)) (at start (d11)) (at start (d19)) (at start (d24)) (at start (d33)) (at start (d47)) (at start (d63)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot22 ?s)) (at start (d8)) (at start (d31)) (at start (d32)) (at start (d44)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (slot23 ?s)) (at start (d1)) (at start (d13)) (at start (d26)) (at start (d76)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot24 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (pending ?s)) (at start (slot25 ?s)) (at start (d46)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (pending ?s)) (at start (slot26 ?s)) (at start (d36)) (at start (d40)) (at start (d58)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot27 ?s)) (at start (d54)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (pending ?s)) (at start (slot28 ?s)) (at start (d10)) (at start (d63)) (at start (d74)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot29 ?s)) (at start (d20)) (at start (d31)) (at start (d63)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot30 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (pending ?s)) (at start (slot31 ?s)) (at start (d35)) (at start (d52)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot32 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot33 ?s)) (at start (d55)) (at start (d57)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot34 ?s)) (at start (d12)) (at start (d16)) (at start (d31)) (at start (d77)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot35 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (slot36 ?s)) (at start (d7)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot37 ?s)) (at start (d32)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (slot38 ?s)) (at start (d5)) (at start (d26)) (at start (d42)) (at start (d72)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot39 ?s)) (at start (d2)) (at start (d11)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot40 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (pending ?s)) (at start (slot41 ?s)) (at start (d42)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot42 ?s)) (at start (d11)) (at start (d37)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot43 ?s)) (at start (d28)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (pending ?s)) (at start (slot44 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot45 ?s)) (at start (d26)) (at start (d52)) (at start (d78)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot46 ?s)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot47 ?s)) (at start (d40)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot48 ?s)) (at start (d28)) (at start (d40)) (at start (d58)) (at start (d61)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot49 ?s)) (at start (d17)) (at start (d48)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot50 ?s)) (at start (d12)) (at start (d41)) (at start (d63)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d50))))
 (:durative-action step51
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot51 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d51))))
 (:durative-action step52
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (pending ?s)) (at start (slot52 ?s)) (at start (d11)) (at start (d32)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d52))))
 (:durative-action step53
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (slot53 ?s)) (at start (d29)) (at start (d37)) (at start (d41)) (at start (d42)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d53))))
 (:durative-action step54
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot54 ?s)) (at start (d51)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d54))))
 (:durative-action step55
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (pending ?s)) (at start (slot55 ?s)) (at start (d19)) (at start (d40)) (at start (d69)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d55))))
 (:durative-action step56
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (pending ?s)) (at start (slot56 ?s)) (at start (d58)) (at start (d66)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d56))))
 (:durative-action step57
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot57 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d57))))
 (:durative-action step58
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (pending ?s)) (at start (slot58 ?s)) (at start (d28)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d58))))
 (:durative-action step59
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot59 ?s)) (at start (d11)) (at start (d44)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d59))))
 (:durative-action step60
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (pending ?s)) (at start (slot60 ?s)) (at start (d28)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d60))))
 (:durative-action step61
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot61 ?s)) (at start (d10)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d61))))
 (:durative-action step62
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (pending ?s)) (at start (slot62 ?s)) (at start (d5)) (at start (d52)) (at start (d74)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d62))))
 (:durative-action step63
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot63 ?s)) (at start (d8)) (at start (d10)) (at start (d57)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d63))))
 (:durative-action step64
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot64 ?s)) (at start (d7)) (at start (d78)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d64))))
 (:durative-action step65
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot65 ?s)) (at start (d24)) (at start (d37)) (at start (d54)) (at start (d69)) (at start (d79)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d65))))
 (:durative-action step66
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (pending ?s)) (at start (slot66 ?s)) (at start (d11)) (at start (d29)) (at start (d31)) (at start (d41)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d66))))
 (:durative-action step67
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (pending ?s)) (at start (slot67 ?s)) (at start (d13)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d67))))
 (:durative-action step68
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot68 ?s)) (at start (d15)) (at start (d61)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d68))))
 (:durative-action step69
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (pending ?s)) (at start (slot69 ?s)) (at start (d41)) (at start (d46)) (at start (d57)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d69))))
 (:durative-action step70
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (pending ?s)) (at start (slot70 ?s)) (at start (d33)) (at start (d56)) (at start (d63)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d70))))
 (:durative-action step71
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot71 ?s)) (at start (d2)) (at start (d27)) (at start (d35)) (at start (d47)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d71))))
 (:durative-action step72
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot72 ?s)) (at start (d63)) (at start (d73)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d72))))
 (:durative-action step73
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot73 ?s)) (at start (d24)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d73))))
 (:durative-action step74
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (pending ?s)) (at start (slot74 ?s)) (at start (d7)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d74))))
 (:durative-action step75
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (pending ?s)) (at start (slot75 ?s)) (at start (d2)) (at start (d38)) (at start (d44)) (at start (d64)) (at start (d76)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d75))))
 (:durative-action step76
  :parameters (?s - step) :duration (= ?duration 43200)
  :condition (and (at start (pending ?s)) (at start (slot76 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d76))))
 (:durative-action step77
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot77 ?s)) (at start (d46)) (at start (d74)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d77))))
 (:durative-action step78
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot78 ?s)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d78))))
 (:durative-action step79
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (pending ?s)) (at start (slot79 ?s)) (at start (d19)) (at start (d29)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (d79))))
 (:durative-action step80
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (pending ?s)) (at start (slot80 ?s)) (at start (d38)) (at start (d41)) (at start (d67)))
  :effect (and (at start (not (pending ?s))) (at end (step_done ?s)) (at end (dish-presented))))
)