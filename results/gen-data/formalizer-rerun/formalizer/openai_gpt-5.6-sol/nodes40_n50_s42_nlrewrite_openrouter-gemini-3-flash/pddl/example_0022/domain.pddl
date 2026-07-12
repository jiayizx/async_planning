; The reported /dev/loop8 failure is an Apptainer/container runtime error, not a PDDL parser error.
; It must be fixed in the planner host by restoring/configuring loop devices or using a non-loop image mode.
; The earlier PDDL also had a separate modeling issue: step1...step40 were referenced as undeclared
; domain constants inside actions. This version parameterizes each action and uses a step-specific
; pending predicate, ensuring that each action can complete only its corresponding problem object.
(define (domain herb-measurement)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_done ?s - step)
    (p1 ?s - step) (p2 ?s - step) (p3 ?s - step) (p4 ?s - step)
    (p5 ?s - step) (p6 ?s - step) (p7 ?s - step) (p8 ?s - step)
    (p9 ?s - step) (p10 ?s - step) (p11 ?s - step) (p12 ?s - step)
    (p13 ?s - step) (p14 ?s - step) (p15 ?s - step) (p16 ?s - step)
    (p17 ?s - step) (p18 ?s - step) (p19 ?s - step) (p20 ?s - step)
    (p21 ?s - step) (p22 ?s - step) (p23 ?s - step) (p24 ?s - step)
    (p25 ?s - step) (p26 ?s - step) (p27 ?s - step) (p28 ?s - step)
    (p29 ?s - step) (p30 ?s - step) (p31 ?s - step) (p32 ?s - step)
    (p33 ?s - step) (p34 ?s - step) (p35 ?s - step) (p36 ?s - step)
    (p37 ?s - step) (p38 ?s - step) (p39 ?s - step) (p40 ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40))

  (:durative-action a1
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (p1 ?s)) (at start (d5)))
    :effect (and (at start (not (p1 ?s))) (at end (step_done ?s)) (at end (d1))))
  (:durative-action a2
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (p2 ?s))
    :effect (and (at start (not (p2 ?s))) (at end (step_done ?s)) (at end (d2))))
  (:durative-action a3
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (p3 ?s)) (at start (d1)))
    :effect (and (at start (not (p3 ?s))) (at end (step_done ?s)) (at end (d3))))
  (:durative-action a4
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (p4 ?s)) (at start (d15)) (at start (d26)))
    :effect (and (at start (not (p4 ?s))) (at end (step_done ?s)) (at end (d4))))
  (:durative-action a5
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (p5 ?s))
    :effect (and (at start (not (p5 ?s))) (at end (step_done ?s)) (at end (d5))))
  (:durative-action a6
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (p6 ?s))
    :effect (and (at start (not (p6 ?s))) (at end (step_done ?s)) (at end (d6))))
  (:durative-action a7
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (p7 ?s)) (at start (d6)) (at start (d10)) (at start (d28)))
    :effect (and (at start (not (p7 ?s))) (at end (step_done ?s)) (at end (d7))))
  (:durative-action a8
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (p8 ?s)) (at start (d6)))
    :effect (and (at start (not (p8 ?s))) (at end (step_done ?s)) (at end (d8))))
  (:durative-action a9
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (p9 ?s)) (at start (d1)) (at start (d15)) (at start (d39)))
    :effect (and (at start (not (p9 ?s))) (at end (step_done ?s)) (at end (d9))))
  (:durative-action a10
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (at start (p10 ?s))
    :effect (and (at start (not (p10 ?s))) (at end (step_done ?s)) (at end (d10))))
  (:durative-action a11
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (p11 ?s)) (at start (d18)) (at start (d38)))
    :effect (and (at start (not (p11 ?s))) (at end (step_done ?s)) (at end (d11))))
  (:durative-action a12
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (p12 ?s)) (at start (d7)) (at start (d13)) (at start (d39)))
    :effect (and (at start (not (p12 ?s))) (at end (step_done ?s)) (at end (d12))))
  (:durative-action a13
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (p13 ?s)) (at start (d20)) (at start (d25)))
    :effect (and (at start (not (p13 ?s))) (at end (step_done ?s)) (at end (d13))))
  (:durative-action a14
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (p14 ?s)) (at start (d8)) (at start (d40)))
    :effect (and (at start (not (p14 ?s))) (at end (step_done ?s)) (at end (d14))))
  (:durative-action a15
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (p15 ?s))
    :effect (and (at start (not (p15 ?s))) (at end (step_done ?s)) (at end (d15))))
  (:durative-action a16
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (p16 ?s)) (at start (d31)) (at start (d39)))
    :effect (and (at start (not (p16 ?s))) (at end (step_done ?s)) (at end (d16))))
  (:durative-action a17
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (p17 ?s)) (at start (d6)) (at start (d38)))
    :effect (and (at start (not (p17 ?s))) (at end (step_done ?s)) (at end (d17))))
  (:durative-action a18
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (p18 ?s)) (at start (d4)))
    :effect (and (at start (not (p18 ?s))) (at end (step_done ?s)) (at end (d18))))
  (:durative-action a19
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (p19 ?s)) (at start (d2)) (at start (d8)) (at start (d24)))
    :effect (and (at start (not (p19 ?s))) (at end (step_done ?s)) (at end (d19))))
  (:durative-action a20
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (at start (p20 ?s))
    :effect (and (at start (not (p20 ?s))) (at end (step_done ?s)) (at end (d20))))
  (:durative-action a21
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (p21 ?s)) (at start (d10)) (at start (d13)))
    :effect (and (at start (not (p21 ?s))) (at end (step_done ?s)) (at end (d21))))
  (:durative-action a22
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (p22 ?s)) (at start (d2)))
    :effect (and (at start (not (p22 ?s))) (at end (step_done ?s)) (at end (d22))))
  (:durative-action a23
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (p23 ?s)) (at start (d21)) (at start (d25)) (at start (d33)))
    :effect (and (at start (not (p23 ?s))) (at end (step_done ?s)) (at end (d23))))
  (:durative-action a24
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (p24 ?s)) (at start (d2)) (at start (d22)))
    :effect (and (at start (not (p24 ?s))) (at end (step_done ?s)) (at end (d24))))
  (:durative-action a25
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (p25 ?s))
    :effect (and (at start (not (p25 ?s))) (at end (step_done ?s)) (at end (d25))))
  (:durative-action a26
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (p26 ?s))
    :effect (and (at start (not (p26 ?s))) (at end (step_done ?s)) (at end (d26))))
  (:durative-action a27
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (p27 ?s)) (at start (d24)) (at start (d26)) (at start (d30)) (at start (d36)))
    :effect (and (at start (not (p27 ?s))) (at end (step_done ?s)) (at end (d27))))
  (:durative-action a28
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (at start (p28 ?s))
    :effect (and (at start (not (p28 ?s))) (at end (step_done ?s)) (at end (d28))))
  (:durative-action a29
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (p29 ?s)) (at start (d28)))
    :effect (and (at start (not (p29 ?s))) (at end (step_done ?s)) (at end (d29))))
  (:durative-action a30
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (at start (p30 ?s))
    :effect (and (at start (not (p30 ?s))) (at end (step_done ?s)) (at end (d30))))
  (:durative-action a31
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (p31 ?s)) (at start (d3)) (at start (d14)) (at start (d20)))
    :effect (and (at start (not (p31 ?s))) (at end (step_done ?s)) (at end (d31))))
  (:durative-action a32
    :parameters (?s - step) :duration (= ?duration 360)
    :condition (and (at start (p32 ?s)) (at start (d3)) (at start (d31)))
    :effect (and (at start (not (p32 ?s))) (at end (step_done ?s)) (at end (d32))))
  (:durative-action a33
    :parameters (?s - step) :duration (= ?duration 43200)
    :condition (and (at start (p33 ?s)) (at start (d4)))
    :effect (and (at start (not (p33 ?s))) (at end (step_done ?s)) (at end (d33))))
  (:durative-action a34
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (p34 ?s)) (at start (d9)) (at start (d10)) (at start (d16)) (at start (d30)))
    :effect (and (at start (not (p34 ?s))) (at end (step_done ?s)) (at end (d34))))
  (:durative-action a35
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (p35 ?s)) (at start (d37)))
    :effect (and (at start (not (p35 ?s))) (at end (step_done ?s)) (at end (d35))))
  (:durative-action a36
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (at start (p36 ?s))
    :effect (and (at start (not (p36 ?s))) (at end (step_done ?s)) (at end (d36))))
  (:durative-action a37
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (p37 ?s)) (at start (d39)))
    :effect (and (at start (not (p37 ?s))) (at end (step_done ?s)) (at end (d37))))
  (:durative-action a38
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (p38 ?s))
    :effect (and (at start (not (p38 ?s))) (at end (step_done ?s)) (at end (d38))))
  (:durative-action a39
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (p39 ?s))
    :effect (and (at start (not (p39 ?s))) (at end (step_done ?s)) (at end (d39))))
  (:durative-action a40
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (p40 ?s)) (at start (d19)))
    :effect (and (at start (not (p40 ?s))) (at end (step_done ?s)) (at end (d40))))
)