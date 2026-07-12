(define (domain walk-to-couch)
 (:requirements :typing :durative-actions)
 (:types step - object s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (sem1) (sem2) (sem3) (sem4) (sem5) (sem6) (sem7) (sem8) (sem9) (sem10)
  (sem11) (sem12) (sem13) (sem14) (sem15) (sem16) (sem17) (sem18) (sem19) (sem20)
  (sem21) (sem22) (sem23) (sem24) (sem25) (sem26) (sem27) (sem28) (sem29) (sem30)
  (sem31) (sem32) (sem33) (sem34) (sem35) (sem36) (sem37) (sem38) (sem39) (sem40)
  (sem41) (sem42) (sem43) (sem44) (sem45) (sem46) (sem47) (sem48) (sem49) (sem50)
  (sem51) (sem52) (sem53) (sem54) (sem55) (sem56) (sem57) (sem58) (sem59) (sem60)
  (sem61) (sem62) (sem63) (sem64) (sem65) (sem66) (sem67) (sem68) (sem69) (sem70))

 (:durative-action do-step1
  :parameters (?s - s1) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem1))))
 (:durative-action do-step2
  :parameters (?s - s2) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem16)) (at start (sem56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem2))))
 (:durative-action do-step3
  :parameters (?s - s3) :duration (= ?duration 3)
  :condition (and (at start (step_pending ?s)) (at start (sem27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem3))))
 (:durative-action do-step4
  :parameters (?s - s4) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem9)) (at start (sem46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem4))))
 (:durative-action do-step5
  :parameters (?s - s5) :duration (= ?duration 1)
  :condition (and (at start (step_pending ?s)) (at start (sem48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem5))))
 (:durative-action do-step6
  :parameters (?s - s6) :duration (= ?duration 4)
  :condition (and (at start (step_pending ?s)) (at start (sem69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem6))))
 (:durative-action do-step7
  :parameters (?s - s7) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (sem14)) (at start (sem25)) (at start (sem34)) (at start (sem40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem7))))
 (:durative-action do-step8
  :parameters (?s - s8) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (sem53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem8))))
 (:durative-action do-step9
  :parameters (?s - s9) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem40)) (at start (sem57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem9))))
 (:durative-action do-step10
  :parameters (?s - s10) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem9)) (at start (sem12)) (at start (sem33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem10))))
 (:durative-action do-step11
  :parameters (?s - s11) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (sem35)) (at start (sem45)) (at start (sem61)) (at start (sem65)) (at start (sem70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem11))))
 (:durative-action do-step12
  :parameters (?s - s12) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (sem16)) (at start (sem17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem12))))
 (:durative-action do-step13
  :parameters (?s - s13) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem6)) (at start (sem20)) (at start (sem32)) (at start (sem51)) (at start (sem53)) (at start (sem63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem13))))
 (:durative-action do-step14
  :parameters (?s - s14) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (sem50)) (at start (sem59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem14))))
 (:durative-action do-step15
  :parameters (?s - s15) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem43)) (at start (sem54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem15))))
 (:durative-action do-step16
  :parameters (?s - s16) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem16))))
 (:durative-action do-step17
  :parameters (?s - s17) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem17))))
 (:durative-action do-step18
  :parameters (?s - s18) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem18))))
 (:durative-action do-step19
  :parameters (?s - s19) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem27)) (at start (sem32)) (at start (sem43)) (at start (sem45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem19))))
 (:durative-action do-step20
  :parameters (?s - s20) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (sem15)) (at start (sem47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem20))))
 (:durative-action do-step21
  :parameters (?s - s21) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem44)) (at start (sem53)) (at start (sem61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem21))))
 (:durative-action do-step22
  :parameters (?s - s22) :duration (= ?duration 3)
  :condition (and (at start (step_pending ?s)) (at start (sem48)) (at start (sem49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem22))))
 (:durative-action do-step23
  :parameters (?s - s23) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem1)) (at start (sem12)) (at start (sem53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem23))))
 (:durative-action do-step24
  :parameters (?s - s24) :duration (= ?duration 4)
  :condition (and (at start (step_pending ?s)) (at start (sem46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem24))))
 (:durative-action do-step25
  :parameters (?s - s25) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (sem35)) (at start (sem37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem25))))
 (:durative-action do-step26
  :parameters (?s - s26) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem41)) (at start (sem56)) (at start (sem64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem26))))
 (:durative-action do-step27
  :parameters (?s - s27) :duration (= ?duration 8)
  :condition (and (at start (step_pending ?s)) (at start (sem16)) (at start (sem29)) (at start (sem31)) (at start (sem38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem27))))
 (:durative-action do-step28
  :parameters (?s - s28) :duration (= ?duration 1)
  :condition (and (at start (step_pending ?s)) (at start (sem12)) (at start (sem48)) (at start (sem53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem28))))
 (:durative-action do-step29
  :parameters (?s - s29) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem29))))
 (:durative-action do-step30
  :parameters (?s - s30) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (sem11)) (at start (sem50)) (at start (sem55)) (at start (sem64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem30))))
 (:durative-action do-step31
  :parameters (?s - s31) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem31))))
 (:durative-action do-step32
  :parameters (?s - s32) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem15)) (at start (sem26)) (at start (sem38)) (at start (sem40)) (at start (sem44)) (at start (sem45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem32))))
 (:durative-action do-step33
  :parameters (?s - s33) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (sem31)) (at start (sem40)) (at start (sem46)) (at start (sem70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem33))))
 (:durative-action do-step34
  :parameters (?s - s34) :duration (= ?duration 40)
  :condition (and (at start (step_pending ?s)) (at start (sem49)) (at start (sem70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem34))))
 (:durative-action do-step35
  :parameters (?s - s35) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem1)) (at start (sem32)) (at start (sem65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem35))))
 (:durative-action do-step36
  :parameters (?s - s36) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (sem4)) (at start (sem38)) (at start (sem47)) (at start (sem48)) (at start (sem54)) (at start (sem67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem36))))
 (:durative-action do-step37
  :parameters (?s - s37) :duration (= ?duration 25)
  :condition (and (at start (step_pending ?s)) (at start (sem33)) (at start (sem67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem37))))
 (:durative-action do-step38
  :parameters (?s - s38) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem41)) (at start (sem48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem38))))
 (:durative-action do-step39
  :parameters (?s - s39) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (sem69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem39))))
 (:durative-action do-step40
  :parameters (?s - s40) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem40))))
 (:durative-action do-step41
  :parameters (?s - s41) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (sem18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem41))))
 (:durative-action do-step42
  :parameters (?s - s42) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (sem31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem42))))
 (:durative-action do-step43
  :parameters (?s - s43) :duration (= ?duration 12)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem43))))
 (:durative-action do-step44
  :parameters (?s - s44) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem44))))
 (:durative-action do-step45
  :parameters (?s - s45) :duration (= ?duration 3)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem45))))
 (:durative-action do-step46
  :parameters (?s - s46) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem46))))
 (:durative-action do-step47
  :parameters (?s - s47) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (sem33)) (at start (sem48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem47))))
 (:durative-action do-step48
  :parameters (?s - s48) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem48))))
 (:durative-action do-step49
  :parameters (?s - s49) :duration (= ?duration 8)
  :condition (and (at start (step_pending ?s)) (at start (sem1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem49))))
 (:durative-action do-step50
  :parameters (?s - s50) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (sem40)) (at start (sem44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem50))))
 (:durative-action do-step51
  :parameters (?s - s51) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem22)) (at start (sem54)) (at start (sem69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem51))))
 (:durative-action do-step52
  :parameters (?s - s52) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem22)) (at start (sem57)) (at start (sem60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem52))))
 (:durative-action do-step53
  :parameters (?s - s53) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem53))))
 (:durative-action do-step54
  :parameters (?s - s54) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (sem41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem54))))
 (:durative-action do-step55
  :parameters (?s - s55) :duration (= ?duration 40)
  :condition (and (at start (step_pending ?s)) (at start (sem35)) (at start (sem37)) (at start (sem38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem55))))
 (:durative-action do-step56
  :parameters (?s - s56) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem56))))
 (:durative-action do-step57
  :parameters (?s - s57) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem1)) (at start (sem44)) (at start (sem48)) (at start (sem60)) (at start (sem62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem57))))
 (:durative-action do-step58
  :parameters (?s - s58) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem39)) (at start (sem49)) (at start (sem64)) (at start (sem70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem58))))
 (:durative-action do-step59
  :parameters (?s - s59) :duration (= ?duration 1)
  :condition (and (at start (step_pending ?s)) (at start (sem18)) (at start (sem28)) (at start (sem33)) (at start (sem51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem59))))
 (:durative-action do-step60
  :parameters (?s - s60) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem60))))
 (:durative-action do-step61
  :parameters (?s - s61) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem43)) (at start (sem50)) (at start (sem70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem61))))
 (:durative-action do-step62
  :parameters (?s - s62) :duration (= ?duration 3)
  :condition (and (at start (step_pending ?s)) (at start (sem23)) (at start (sem60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem62))))
 (:durative-action do-step63
  :parameters (?s - s63) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sem34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem63))))
 (:durative-action do-step64
  :parameters (?s - s64) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (sem57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem64))))
 (:durative-action do-step65
  :parameters (?s - s65) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem65))))
 (:durative-action do-step66
  :parameters (?s - s66) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem12)) (at start (sem59)) (at start (sem61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem66))))
 (:durative-action do-step67
  :parameters (?s - s67) :duration (= ?duration 3)
  :condition (and (at start (step_pending ?s)) (at start (sem26)) (at start (sem53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem67))))
 (:durative-action do-step68
  :parameters (?s - s68) :duration (= ?duration 2)
  :condition (and (at start (step_pending ?s)) (at start (sem57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem68))))
 (:durative-action do-step69
  :parameters (?s - s69) :duration (= ?duration 4)
  :condition (and (at start (step_pending ?s)) (at start (sem12)) (at start (sem31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem69))))
 (:durative-action do-step70
  :parameters (?s - s70) :duration (= ?duration 25)
  :condition (and (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sem70))))
)