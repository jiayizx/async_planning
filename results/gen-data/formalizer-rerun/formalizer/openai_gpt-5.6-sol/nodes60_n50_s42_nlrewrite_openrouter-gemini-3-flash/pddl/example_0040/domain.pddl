(define (domain hanging-planters)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (id1 ?s - step) (id2 ?s - step) (id3 ?s - step) (id4 ?s - step) (id5 ?s - step)
    (id6 ?s - step) (id7 ?s - step) (id8 ?s - step) (id9 ?s - step) (id10 ?s - step)
    (id11 ?s - step) (id12 ?s - step) (id13 ?s - step) (id14 ?s - step) (id15 ?s - step)
    (id16 ?s - step) (id17 ?s - step) (id18 ?s - step) (id19 ?s - step) (id20 ?s - step)
    (id21 ?s - step) (id22 ?s - step) (id23 ?s - step) (id24 ?s - step) (id25 ?s - step)
    (id26 ?s - step) (id27 ?s - step) (id28 ?s - step) (id29 ?s - step) (id30 ?s - step)
    (id31 ?s - step) (id32 ?s - step) (id33 ?s - step) (id34 ?s - step) (id35 ?s - step)
    (id36 ?s - step) (id37 ?s - step) (id38 ?s - step) (id39 ?s - step) (id40 ?s - step)
    (id41 ?s - step) (id42 ?s - step) (id43 ?s - step) (id44 ?s - step) (id45 ?s - step)
    (id46 ?s - step) (id47 ?s - step) (id48 ?s - step) (id49 ?s - step) (id50 ?s - step)
    (id51 ?s - step) (id52 ?s - step) (id53 ?s - step) (id54 ?s - step) (id55 ?s - step)
    (id56 ?s - step) (id57 ?s - step) (id58 ?s - step) (id59 ?s - step) (id60 ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
    (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60))

  (:durative-action do_step1
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (id1 ?x)) (at start (s32)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
  (:durative-action do_step2
    :parameters (?x - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?x)) (at start (id2 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
  (:durative-action do_step3
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id3 ?x)) (at start (s2)) (at start (s34)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
  (:durative-action do_step4
    :parameters (?x - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?x)) (at start (id4 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
  (:durative-action do_step5
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id5 ?x)) (at start (s31)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
  (:durative-action do_step6
    :parameters (?x - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?x)) (at start (id6 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
  (:durative-action do_step7
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id7 ?x)) (at start (s32)) (at start (s60)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
  (:durative-action do_step8
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id8 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
  (:durative-action do_step9
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id9 ?x)) (at start (s4)) (at start (s20)) (at start (s37)) (at start (s53)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
  (:durative-action do_step10
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id10 ?x)) (at start (s8)) (at start (s26)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
  (:durative-action do_step11
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id11 ?x)) (at start (s19)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
  (:durative-action do_step12
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (id12 ?x)) (at start (s4)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
  (:durative-action do_step13
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id13 ?x)) (at start (s15)) (at start (s30)) (at start (s43)) (at start (s48)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
  (:durative-action do_step14
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id14 ?x)) (at start (s2)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
  (:durative-action do_step15
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (id15 ?x)) (at start (s21)) (at start (s34)) (at start (s44)) (at start (s54)) (at start (s57)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
  (:durative-action do_step16
    :parameters (?x - step) :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?x)) (at start (id16 ?x)) (at start (s2)) (at start (s19)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
  (:durative-action do_step17
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id17 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
  (:durative-action do_step18
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id18 ?x)) (at start (s39)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
  (:durative-action do_step19
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id19 ?x)) (at start (s25)) (at start (s26)) (at start (s49)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
  (:durative-action do_step20
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id20 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
  (:durative-action do_step21
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id21 ?x)) (at start (s11)) (at start (s14)) (at start (s20)) (at start (s23)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
  (:durative-action do_step22
    :parameters (?x - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?x)) (at start (id22 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22))))
  (:durative-action do_step23
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (id23 ?x)) (at start (s6)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
  (:durative-action do_step24
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id24 ?x)) (at start (s17)) (at start (s25)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
  (:durative-action do_step25
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id25 ?x)) (at start (s2)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
  (:durative-action do_step26
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id26 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
  (:durative-action do_step27
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id27 ?x)) (at start (s10)) (at start (s17)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
  (:durative-action do_step28
    :parameters (?x - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?x)) (at start (id28 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
  (:durative-action do_step29
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id29 ?x)) (at start (s35)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
  (:durative-action do_step30
    :parameters (?x - step) :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?x)) (at start (id30 ?x)) (at start (s3)) (at start (s24)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
  (:durative-action do_step31
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id31 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
  (:durative-action do_step32
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id32 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
  (:durative-action do_step33
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id33 ?x)) (at start (s12)) (at start (s22)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
  (:durative-action do_step34
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id34 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
  (:durative-action do_step35
    :parameters (?x - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?x)) (at start (id35 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
  (:durative-action do_step36
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id36 ?x)) (at start (s40)) (at start (s46)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
  (:durative-action do_step37
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (id37 ?x)) (at start (s12)) (at start (s22)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
  (:durative-action do_step38
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id38 ?x)) (at start (s17)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
  (:durative-action do_step39
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id39 ?x)) (at start (s14)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
  (:durative-action do_step40
    :parameters (?x - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?x)) (at start (id40 ?x)) (at start (s6)) (at start (s42)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
  (:durative-action do_step41
    :parameters (?x - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?x)) (at start (id41 ?x)) (at start (s4)) (at start (s5)) (at start (s23)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s41))))
  (:durative-action do_step42
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id42 ?x)) (at start (s51)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s42))))
  (:durative-action do_step43
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id43 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s43))))
  (:durative-action do_step44
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id44 ?x)) (at start (s45)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s44))))
  (:durative-action do_step45
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id45 ?x)) (at start (s26)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s45))))
  (:durative-action do_step46
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (id46 ?x)) (at start (s10)) (at start (s30)) (at start (s35)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s46))))
  (:durative-action do_step47
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id47 ?x)) (at start (s5)) (at start (s45)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s47))))
  (:durative-action do_step48
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id48 ?x)) (at start (s29)) (at start (s51)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s48))))
  (:durative-action do_step49
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id49 ?x)) (at start (s26)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s49))))
  (:durative-action do_step50
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id50 ?x)) (at start (s4)) (at start (s24)) (at start (s28)) (at start (s37)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s50))))
  (:durative-action do_step51
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id51 ?x)) (at start (s4)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s51))))
  (:durative-action do_step52
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id52 ?x)) (at start (s11)) (at start (s27)) (at start (s32)) (at start (s48)) (at start (s56)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s52))))
  (:durative-action do_step53
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (id53 ?x)) (at start (s16)) (at start (s17)) (at start (s30)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s53))))
  (:durative-action do_step54
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id54 ?x)) (at start (s23)) (at start (s28)) (at start (s37)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s54))))
  (:durative-action do_step55
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (id55 ?x)) (at start (s12)) (at start (s17)) (at start (s27)) (at start (s37)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s55))))
  (:durative-action do_step56
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (id56 ?x)) (at start (s3)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s56))))
  (:durative-action do_step57
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id57 ?x)) (at start (s2)) (at start (s4)) (at start (s23)) (at start (s27)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s57))))
  (:durative-action do_step58
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (id58 ?x)) (at start (s21)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s58))))
  (:durative-action do_step59
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (id59 ?x)) (at start (s26)) (at start (s37)) (at start (s44)) (at start (s55)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s59))))
  (:durative-action do_step60
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (id60 ?x)) (at start (s21)) (at start (s30)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s60))))
)