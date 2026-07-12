(define (domain grape-protection)
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
  (is51 ?s - step) (is52 ?s - step) (is53 ?s - step) (is54 ?s - step) (is55 ?s - step)
  (is56 ?s - step) (is57 ?s - step) (is58 ?s - step) (is59 ?s - step) (is60 ?s - step)
  (c1) (c2) (c3) (c4) (c5) (c6) (c7) (c8) (c9) (c10)
  (c11) (c12) (c13) (c14) (c15) (c16) (c17) (c18) (c19) (c20)
  (c21) (c22) (c23) (c24) (c25) (c26) (c27) (c28) (c29) (c30)
  (c31) (c32) (c33) (c34) (c35) (c36) (c37) (c38) (c39) (c40)
  (c41) (c42) (c43) (c44) (c45) (c46) (c47) (c48) (c49) (c50)
  (c51) (c52) (c53) (c54) (c55) (c56) (c57) (c58) (c59) (c60))

 (:durative-action step1
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (c34)) (at start (c35)) (at start (c46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c1))))
 (:durative-action step2
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c2))))
 (:durative-action step3
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (c27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c3))))
 (:durative-action step4
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (c28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c4))))
 (:durative-action step5
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c5))))
 (:durative-action step6
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (c54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c6))))
 (:durative-action step7
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)) (at start (c16)) (at start (c60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c7))))
 (:durative-action step8
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c8))))
 (:durative-action step9
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (c41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c9))))
 (:durative-action step10
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c10))))
 (:durative-action step11
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (c45)) (at start (c56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c11))))
 (:durative-action step12
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (c31)) (at start (c43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c12))))
 (:durative-action step13
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (c1)) (at start (c29)) (at start (c38)) (at start (c54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c13))))
 (:durative-action step14
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (c27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c14))))
 (:durative-action step15
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (c26)) (at start (c29)) (at start (c31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c15))))
 (:durative-action step16
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c16))))
 (:durative-action step17
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c17))))
 (:durative-action step18
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)) (at start (c5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c18))))
 (:durative-action step19
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (c54)) (at start (c55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c19))))
 (:durative-action step20
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)) (at start (c6)) (at start (c17)) (at start (c55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c20))))
 (:durative-action step21
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (c19)) (at start (c41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c21))))
 (:durative-action step22
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)) (at start (c3)) (at start (c33)) (at start (c38)) (at start (c41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c22))))
 (:durative-action step23
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (c43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c23))))
 (:durative-action step24
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (c28)) (at start (c58)) (at start (c59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c24))))
 (:durative-action step25
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (c43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c25))))
 (:durative-action step26
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (c3)) (at start (c35)) (at start (c41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c26))))
 (:durative-action step27
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (c16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c27))))
 (:durative-action step28
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (c40)) (at start (c53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c28))))
 (:durative-action step29
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c29))))
 (:durative-action step30
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (c40)) (at start (c54)) (at start (c59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c30))))
 (:durative-action step31
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)) (at start (c41)) (at start (c42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c31))))
 (:durative-action step32
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)) (at start (c30)) (at start (c50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c32))))
 (:durative-action step33
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (c8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c33))))
 (:durative-action step34
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)) (at start (c41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c34))))
 (:durative-action step35
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)) (at start (c16)) (at start (c47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c35))))
 (:durative-action step36
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (c41)) (at start (c53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c36))))
 (:durative-action step37
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (c23)) (at start (c43)) (at start (c46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c37))))
 (:durative-action step38
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)) (at start (c3)) (at start (c11)) (at start (c39)) (at start (c49)) (at start (c51)) (at start (c54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c38))))
 (:durative-action step39
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (c43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c39))))
 (:durative-action step40
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)) (at start (c8)) (at start (c17)) (at start (c45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c40))))
 (:durative-action step41
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is41 ?s)) (at start (c43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c41))))
 (:durative-action step42
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is42 ?s)) (at start (c5)) (at start (c10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c42))))
 (:durative-action step43
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is43 ?s)) (at start (c2)) (at start (c10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c43))))
 (:durative-action step44
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is44 ?s)) (at start (c23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c44))))
 (:durative-action step45
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is45 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c45))))
 (:durative-action step46
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is46 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c46))))
 (:durative-action step47
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is47 ?s)) (at start (c27)) (at start (c40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c47))))
 (:durative-action step48
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is48 ?s)) (at start (c9)) (at start (c22)) (at start (c43)) (at start (c55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c48))))
 (:durative-action step49
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is49 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c49))))
 (:durative-action step50
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is50 ?s)) (at start (c51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c50))))
 (:durative-action step51
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is51 ?s)) (at start (c9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c51))))
 (:durative-action step52
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is52 ?s)) (at start (c2)) (at start (c46)) (at start (c51)) (at start (c56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c52))))
 (:durative-action step53
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is53 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c53))))
 (:durative-action step54
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is54 ?s)) (at start (c23)) (at start (c26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c54))))
 (:durative-action step55
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is55 ?s)) (at start (c46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c55))))
 (:durative-action step56
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is56 ?s)) (at start (c9)) (at start (c16)) (at start (c18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c56))))
 (:durative-action step57
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is57 ?s)) (at start (c4)) (at start (c34)) (at start (c35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c57))))
 (:durative-action step58
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is58 ?s)) (at start (c49)) (at start (c60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c58))))
 (:durative-action step59
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is59 ?s)) (at start (c8)) (at start (c25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c59))))
 (:durative-action step60
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is60 ?s)) (at start (c8)) (at start (c44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c60))))
)