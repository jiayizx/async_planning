(define (domain wonton-wrappers)
  (:requirements :typing :durative-actions)
  (:types
    step
    s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15
    s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30))

  (:durative-action sift-flour
    :parameters (?s - s1)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))

  (:durative-action measure-water
    :parameters (?s - s2)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (d22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))

  (:durative-action beat-eggs
    :parameters (?s - s3)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))

  (:durative-action whisk-salt-into-eggs
    :parameters (?s - s4)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (d3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))

  (:durative-action clean-countertop
    :parameters (?s - s5)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))

  (:durative-action create-flour-well
    :parameters (?s - s6)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))

  (:durative-action wipe-rolling-pin
    :parameters (?s - s7)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))

  (:durative-action form-dough-ball
    :parameters (?s - s8)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d19)) (at start (d20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))

  (:durative-action pour-egg-mixture
    :parameters (?s - s9)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))

  (:durative-action locate-plastic-wrap
    :parameters (?s - s10)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))

  (:durative-action clear-dining-table
    :parameters (?s - s11)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))

  (:durative-action find-dough-cutter
    :parameters (?s - s12)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))

  (:durative-action mix-until-frothy
    :parameters (?s - s13)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (d4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))

  (:durative-action add-water
    :parameters (?s - s14)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))

  (:durative-action sharpen-knife
    :parameters (?s - s15)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))

  (:durative-action measure-cornstarch
    :parameters (?s - s16)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))

  (:durative-action set-knife-aside
    :parameters (?s - s17)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (d15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))

  (:durative-action wrap-dough-ball
    :parameters (?s - s18)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))

  (:durative-action combine-ingredients
    :parameters (?s - s19)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))

  (:durative-action dust-work-surface
    :parameters (?s - s20)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))

  (:durative-action knead-dough
    :parameters (?s - s21)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))

  (:durative-action check-water-temperature
    :parameters (?s - s22)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))

  (:durative-action bag-wrappers
    :parameters (?s - s23)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))

  (:durative-action sterilize-cutter
    :parameters (?s - s24)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (d12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))

  (:durative-action lay-parchment
    :parameters (?s - s25)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (d11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))

  (:durative-action rest-dough
    :parameters (?s - s26)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))

  (:durative-action prepare-damp-cloth
    :parameters (?s - s27)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))

  (:durative-action cut-dough-squares
    :parameters (?s - s28)
    :duration (= ?duration 720)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))

  (:durative-action roll-dough-thin
    :parameters (?s - s29)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d14)) (at start (d27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))

  (:durative-action sanitize-preparation-area
    :parameters (?s - s30)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
)