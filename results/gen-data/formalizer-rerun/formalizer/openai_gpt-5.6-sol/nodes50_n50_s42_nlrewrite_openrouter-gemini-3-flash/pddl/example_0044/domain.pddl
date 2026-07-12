(define (domain hot-flash-workplace)
 (:requirements :durative-actions :typing)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
 (:predicates
  (step_pending ?x - step) (step_done ?x - step)
  (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
  (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
  (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
  (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
  (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50))

 (:durative-action a1
  :parameters (?x - t1) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s22)) (at start (s28)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
 (:durative-action a2
  :parameters (?x - t2) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s25)) (at start (s28)) (at start (s50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
 (:durative-action a3
  :parameters (?x - t3) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s6)) (at start (s40)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
 (:durative-action a4
  :parameters (?x - t4) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s15)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
 (:durative-action a5
  :parameters (?x - t5) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?x)) (at start (s30)) (at start (s31)) (at start (s34)) (at start (s41)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
 (:durative-action a6
  :parameters (?x - t6) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s8)) (at start (s15)) (at start (s21)) (at start (s29)) (at start (s39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
 (:durative-action a7
  :parameters (?x - t7) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
 (:durative-action a8
  :parameters (?x - t8) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s4)) (at start (s14)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
 (:durative-action a9
  :parameters (?x - t9) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s4)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
 (:durative-action a10
  :parameters (?x - t10) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
 (:durative-action a11
  :parameters (?x - t11) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s6)) (at start (s7)) (at start (s46)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
 (:durative-action a12
  :parameters (?x - t12) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?x)) (at start (s25)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
 (:durative-action a13
  :parameters (?x - t13) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s42)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
 (:durative-action a14
  :parameters (?x - t14) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (s4)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
 (:durative-action a15
  :parameters (?x - t15) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
 (:durative-action a16
  :parameters (?x - t16) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s26)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
 (:durative-action a17
  :parameters (?x - t17) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s10)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
 (:durative-action a18
  :parameters (?x - t18) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s13)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
 (:durative-action a19
  :parameters (?x - t19) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s37)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
 (:durative-action a20
  :parameters (?x - t20) :duration (= ?duration 900)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
 (:durative-action a21
  :parameters (?x - t21) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (s43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
 (:durative-action a22
  :parameters (?x - t22) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s30)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22))))
 (:durative-action a23
  :parameters (?x - t23) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s28)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
 (:durative-action a24
  :parameters (?x - t24) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s9)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
 (:durative-action a25
  :parameters (?x - t25) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s10)) (at start (s28)) (at start (s33)) (at start (s41)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
 (:durative-action a26
  :parameters (?x - t26) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s18)) (at start (s33)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
 (:durative-action a27
  :parameters (?x - t27) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (s13)) (at start (s24)) (at start (s25)) (at start (s39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
 (:durative-action a28
  :parameters (?x - t28) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
 (:durative-action a29
  :parameters (?x - t29) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s31)) (at start (s38)) (at start (s43)) (at start (s45)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
 (:durative-action a30
  :parameters (?x - t30) :duration (= ?duration 1800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
 (:durative-action a31
  :parameters (?x - t31) :duration (= ?duration 1200)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
 (:durative-action a32
  :parameters (?x - t32) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s36)) (at start (s38)) (at start (s41)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
 (:durative-action a33
  :parameters (?x - t33) :duration (= ?duration 1500)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
 (:durative-action a34
  :parameters (?x - t34) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
 (:durative-action a35
  :parameters (?x - t35) :duration (= ?duration 2400)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
 (:durative-action a36
  :parameters (?x - t36) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s17)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
 (:durative-action a37
  :parameters (?x - t37) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s4)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
 (:durative-action a38
  :parameters (?x - t38) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s34)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
 (:durative-action a39
  :parameters (?x - t39) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
 (:durative-action a40
  :parameters (?x - t40) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s13)) (at start (s20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
 (:durative-action a41
  :parameters (?x - t41) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s10)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s41))))
 (:durative-action a42
  :parameters (?x - t42) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s42))))
 (:durative-action a43
  :parameters (?x - t43) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s1)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s43))))
 (:durative-action a44
  :parameters (?x - t44) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (s16)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s44))))
 (:durative-action a45
  :parameters (?x - t45) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s7)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s45))))
 (:durative-action a46
  :parameters (?x - t46) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s1)) (at start (s3)) (at start (s41)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s46))))
 (:durative-action a47
  :parameters (?x - t47) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s19)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s47))))
 (:durative-action a48
  :parameters (?x - t48) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s14)) (at start (s35)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s48))))
 (:durative-action a49
  :parameters (?x - t49) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s33)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s49))))
 (:durative-action a50
  :parameters (?x - t50) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s5)) (at start (s20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s50))))
)