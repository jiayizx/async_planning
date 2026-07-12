(define (domain rubber-band-ball)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (slot1 ?s - step) (slot2 ?s - step) (slot3 ?s - step) (slot4 ?s - step) (slot5 ?s - step)
  (slot6 ?s - step) (slot7 ?s - step) (slot8 ?s - step) (slot9 ?s - step) (slot10 ?s - step)
  (slot11 ?s - step) (slot12 ?s - step) (slot13 ?s - step) (slot14 ?s - step) (slot15 ?s - step)
  (slot16 ?s - step) (slot17 ?s - step) (slot18 ?s - step) (slot19 ?s - step) (slot20 ?s - step)
  (slot21 ?s - step) (slot22 ?s - step) (slot23 ?s - step) (slot24 ?s - step) (slot25 ?s - step)
  (slot26 ?s - step) (slot27 ?s - step) (slot28 ?s - step) (slot29 ?s - step) (slot30 ?s - step)
  (slot31 ?s - step) (slot32 ?s - step) (slot33 ?s - step) (slot34 ?s - step) (slot35 ?s - step)
  (slot36 ?s - step) (slot37 ?s - step) (slot38 ?s - step) (slot39 ?s - step) (slot40 ?s - step)
  (slot41 ?s - step) (slot42 ?s - step) (slot43 ?s - step) (slot44 ?s - step) (slot45 ?s - step)
  (slot46 ?s - step) (slot47 ?s - step) (slot48 ?s - step) (slot49 ?s - step) (slot50 ?s - step)
  (slot51 ?s - step) (slot52 ?s - step) (slot53 ?s - step) (slot54 ?s - step) (slot55 ?s - step)
  (slot56 ?s - step) (slot57 ?s - step) (slot58 ?s - step) (slot59 ?s - step) (slot60 ?s - step)
  (slot61 ?s - step) (slot62 ?s - step) (slot63 ?s - step) (slot64 ?s - step) (slot65 ?s - step)
  (slot66 ?s - step) (slot67 ?s - step) (slot68 ?s - step) (slot69 ?s - step) (slot70 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69)
  (ball_displayed)
 )

 (:durative-action do_step1
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot1 ?s)) (at start (step_pending ?s)) (at start (d21)) (at start (d44)) (at start (d65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action do_step2
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot2 ?s)) (at start (step_pending ?s)) (at start (d4)) (at start (d21)) (at start (d32)) (at start (d64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action do_step3
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot3 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action do_step4
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot4 ?s)) (at start (step_pending ?s)) (at start (d29)) (at start (d48)) (at start (d59)) (at start (d61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action do_step5
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (slot5 ?s)) (at start (step_pending ?s)) (at start (d53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action do_step6
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (slot6 ?s)) (at start (step_pending ?s)) (at start (d17)) (at start (d47)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action do_step7
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot7 ?s)) (at start (step_pending ?s)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action do_step8
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot8 ?s)) (at start (step_pending ?s)) (at start (d12)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action do_step9
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot9 ?s)) (at start (step_pending ?s)) (at start (d10)) (at start (d26)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action do_step10
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (slot10 ?s)) (at start (step_pending ?s)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action do_step11
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot11 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action do_step12
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot12 ?s)) (at start (step_pending ?s)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action do_step13
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (slot13 ?s)) (at start (step_pending ?s)) (at start (d34)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action do_step14
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (slot14 ?s)) (at start (step_pending ?s)) (at start (d13)) (at start (d28)) (at start (d58)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action do_step15
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot15 ?s)) (at start (step_pending ?s)) (at start (d12)) (at start (d27)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action do_step16
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (slot16 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action do_step17
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot17 ?s)) (at start (step_pending ?s)) (at start (d34)) (at start (d48)) (at start (d49)) (at start (d56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action do_step18
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot18 ?s)) (at start (step_pending ?s)) (at start (d11)) (at start (d62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action do_step19
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot19 ?s)) (at start (step_pending ?s)) (at start (d1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action do_step20
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot20 ?s)) (at start (step_pending ?s)) (at start (d22)) (at start (d48)) (at start (d58)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action do_step21
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot21 ?s)) (at start (step_pending ?s)) (at start (d11)) (at start (d66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action do_step22
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (slot22 ?s)) (at start (step_pending ?s)) (at start (d6)) (at start (d15)) (at start (d17)) (at start (d31)) (at start (d34)) (at start (d56)) (at start (d58)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action do_step23
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot23 ?s)) (at start (step_pending ?s)) (at start (d58)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action do_step24
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot24 ?s)) (at start (step_pending ?s)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action do_step25
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (slot25 ?s)) (at start (step_pending ?s)) (at start (d24)) (at start (d39)) (at start (d40)) (at start (d69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action do_step26
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot26 ?s)) (at start (step_pending ?s)) (at start (d4)) (at start (d23)) (at start (d30)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action do_step27
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (slot27 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action do_step28
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot28 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action do_step29
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot29 ?s)) (at start (step_pending ?s)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action do_step30
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot30 ?s)) (at start (step_pending ?s)) (at start (d10)) (at start (d12)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action do_step31
  :parameters (?s - step) :duration (= ?duration 420)
  :condition (and (at start (slot31 ?s)) (at start (step_pending ?s)) (at start (d2)) (at start (d9)) (at start (d15)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action do_step32
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot32 ?s)) (at start (step_pending ?s)) (at start (d40)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action do_step33
  :parameters (?s - step) :duration (= ?duration 540)
  :condition (and (at start (slot33 ?s)) (at start (step_pending ?s)) (at start (d5)) (at start (d27)) (at start (d48)) (at start (d51)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action do_step34
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (slot34 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action do_step35
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot35 ?s)) (at start (step_pending ?s)) (at start (d10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action do_step36
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot36 ?s)) (at start (step_pending ?s)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action do_step37
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot37 ?s)) (at start (step_pending ?s)) (at start (d13)) (at start (d30)) (at start (d60)) (at start (d63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action do_step38
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot38 ?s)) (at start (step_pending ?s)) (at start (d28)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action do_step39
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (slot39 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action do_step40
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot40 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action do_step41
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot41 ?s)) (at start (step_pending ?s)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action do_step42
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot42 ?s)) (at start (step_pending ?s)) (at start (d28)) (at start (d39)) (at start (d43)) (at start (d51)) (at start (d61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action do_step43
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot43 ?s)) (at start (step_pending ?s)) (at start (d10)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action do_step44
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (slot44 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action do_step45
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot45 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action do_step46
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot46 ?s)) (at start (step_pending ?s)) (at start (d69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action do_step47
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot47 ?s)) (at start (step_pending ?s)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action do_step48
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot48 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action do_step49
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot49 ?s)) (at start (step_pending ?s)) (at start (d16)) (at start (d36)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action do_step50
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot50 ?s)) (at start (step_pending ?s)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
 (:durative-action do_step51
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot51 ?s)) (at start (step_pending ?s)) (at start (d9)) (at start (d11)) (at start (d48)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))
 (:durative-action do_step52
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot52 ?s)) (at start (step_pending ?s)) (at start (d2)) (at start (d48)) (at start (d60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))
 (:durative-action do_step53
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot53 ?s)) (at start (step_pending ?s)) (at start (d2)) (at start (d35)) (at start (d50)) (at start (d68)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))
 (:durative-action do_step54
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (slot54 ?s)) (at start (step_pending ?s)) (at start (d50)) (at start (d56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))
 (:durative-action do_step55
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot55 ?s)) (at start (step_pending ?s)) (at start (d16)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))
 (:durative-action do_step56
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot56 ?s)) (at start (step_pending ?s)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))
 (:durative-action do_step57
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot57 ?s)) (at start (step_pending ?s)) (at start (d25)) (at start (d34)) (at start (d36)) (at start (d61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))
 (:durative-action do_step58
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot58 ?s)) (at start (step_pending ?s)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))
 (:durative-action do_step59
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (slot59 ?s)) (at start (step_pending ?s)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))
 (:durative-action do_step60
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot60 ?s)) (at start (step_pending ?s)) (at start (d7)) (at start (d10)) (at start (d21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d60))))
 (:durative-action do_step61
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot61 ?s)) (at start (step_pending ?s)) (at start (d10)) (at start (d28)) (at start (d39)) (at start (d44)) (at start (d45)) (at start (d64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d61))))
 (:durative-action do_step62
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot62 ?s)) (at start (step_pending ?s)) (at start (d9)) (at start (d32)) (at start (d39)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d62))))
 (:durative-action do_step63
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (slot63 ?s)) (at start (step_pending ?s)) (at start (d16)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d63))))
 (:durative-action do_step64
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot64 ?s)) (at start (step_pending ?s)) (at start (d10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d64))))
 (:durative-action do_step65
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot65 ?s)) (at start (step_pending ?s)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d65))))
 (:durative-action do_step66
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot66 ?s)) (at start (step_pending ?s)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d66))))
 (:durative-action do_step67
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot67 ?s)) (at start (step_pending ?s)) (at start (d13)) (at start (d17)) (at start (d33)) (at start (d43)) (at start (d48)) (at start (d64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d67))))
 (:durative-action do_step68
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot68 ?s)) (at start (step_pending ?s)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d68))))
 (:durative-action do_step69
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot69 ?s)) (at start (step_pending ?s)) (at start (d13)) (at start (d40)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d69))))
 (:durative-action do_step70
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot70 ?s)) (at start (step_pending ?s)) (at start (d3)) (at start (d23)) (at start (d61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ball_displayed))))
)