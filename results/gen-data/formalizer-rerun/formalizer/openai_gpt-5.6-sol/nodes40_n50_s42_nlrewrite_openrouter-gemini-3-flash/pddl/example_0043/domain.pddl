(define (domain round-braid)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (for-step-1 ?s - step) (for-step-2 ?s - step) (for-step-3 ?s - step) (for-step-4 ?s - step)
    (for-step-5 ?s - step) (for-step-6 ?s - step) (for-step-7 ?s - step) (for-step-8 ?s - step)
    (for-step-9 ?s - step) (for-step-10 ?s - step) (for-step-11 ?s - step) (for-step-12 ?s - step)
    (for-step-13 ?s - step) (for-step-14 ?s - step) (for-step-15 ?s - step) (for-step-16 ?s - step)
    (for-step-17 ?s - step) (for-step-18 ?s - step) (for-step-19 ?s - step) (for-step-20 ?s - step)
    (for-step-21 ?s - step) (for-step-22 ?s - step) (for-step-23 ?s - step) (for-step-24 ?s - step)
    (for-step-25 ?s - step) (for-step-26 ?s - step) (for-step-27 ?s - step) (for-step-28 ?s - step)
    (for-step-29 ?s - step) (for-step-30 ?s - step) (for-step-31 ?s - step) (for-step-32 ?s - step)
    (for-step-33 ?s - step) (for-step-34 ?s - step) (for-step-35 ?s - step) (for-step-36 ?s - step)
    (for-step-37 ?s - step) (for-step-38 ?s - step) (for-step-39 ?s - step) (for-step-40 ?s - step)
    (done-1) (done-2) (done-3) (done-4) (done-5) (done-6) (done-7) (done-8)
    (done-9) (done-10) (done-11) (done-12) (done-13) (done-14) (done-15) (done-16)
    (done-17) (done-18) (done-19) (done-20) (done-21) (done-22) (done-23) (done-24)
    (done-25) (done-26) (done-27) (done-28) (done-29) (done-30) (done-31) (done-32)
    (done-33) (done-34) (done-35) (done-36) (done-37) (done-38) (done-39) (done-40)
  )

  (:durative-action apply-finishing-wax
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s)) (at start (for-step-1 ?s)) (at start (done-22)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-1))))

  (:durative-action measure-final-length
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step-pending ?s)) (at start (for-step-2 ?s)) (at start (done-27)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-2))))

  (:durative-action select-end-cap
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step-pending ?s)) (at start (for-step-3 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-3))))

  (:durative-action prepare-jewelry-adhesive
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step-pending ?s)) (at start (for-step-4 ?s)) (at start (done-39)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-4))))

  (:durative-action organize-workspace
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step-pending ?s)) (at start (for-step-5 ?s)) (at start (done-31)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-5))))

  (:durative-action cut-cords
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step-pending ?s)) (at start (for-step-6 ?s)) (at start (done-13)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-6))))

  (:durative-action group-cords
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step-pending ?s)) (at start (for-step-7 ?s)) (at start (done-19)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-7))))

  (:durative-action burnish-edges
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step-pending ?s)) (at start (for-step-8 ?s)) (at start (done-17)) (at start (done-34)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-8))))

  (:durative-action attach-weight
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step-pending ?s)) (at start (for-step-9 ?s)) (at start (done-7)) (at start (done-35)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-9))))

  (:durative-action thread-centering-disk
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step-pending ?s)) (at start (for-step-10 ?s)) (at start (done-28)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-10))))

  (:durative-action choose-cord-colors
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending ?s)) (at start (for-step-11 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-11))))

  (:durative-action untangle-spools
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step-pending ?s)) (at start (for-step-12 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-12))))

  (:durative-action unroll-yardage
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step-pending ?s)) (at start (for-step-13 ?s)) (at start (done-11)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-13))))

  (:durative-action begin-weaving
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending ?s)) (at start (for-step-14 ?s)) (at start (done-16)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-14))))

  (:durative-action trim-fringe
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step-pending ?s)) (at start (for-step-15 ?s)) (at start (done-14)) (at start (done-27)) (at start (done-39)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-15))))

  (:durative-action secure-starting-knot
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step-pending ?s)) (at start (for-step-16 ?s)) (at start (done-3)) (at start (done-4)) (at start (done-33)) (at start (done-39)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-16))))

  (:durative-action inspect-cords
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s)) (at start (for-step-17 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-17))))

  (:durative-action soak-cords
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending ?s)) (at start (for-step-18 ?s)) (at start (done-11)) (at start (done-17)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-18))))

  (:durative-action bind-cord-tops
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step-pending ?s)) (at start (for-step-19 ?s)) (at start (done-6)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-19))))

  (:durative-action arrange-radial-pattern
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s)) (at start (for-step-20 ?s)) (at start (done-7)) (at start (done-12)) (at start (done-17)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-20))))

  (:durative-action tighten-weave-tension
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step-pending ?s)) (at start (for-step-21 ?s)) (at start (done-16)) (at start (done-40)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-21))))

  (:durative-action taper-cord-ends
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step-pending ?s)) (at start (for-step-22 ?s)) (at start (done-6)) (at start (done-32)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-22))))

  (:durative-action light-candle
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step-pending ?s)) (at start (for-step-23 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-23))))

  (:durative-action label-cord-positions
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step-pending ?s)) (at start (for-step-24 ?s)) (at start (done-7)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-24))))

  (:durative-action complete-final-round
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step-pending ?s)) (at start (for-step-25 ?s)) (at start (done-14)) (at start (done-21)) (at start (done-23)) (at start (done-29)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-25))))

  (:durative-action buff-braid
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step-pending ?s)) (at start (for-step-26 ?s)) (at start (done-34)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-26))))

  (:durative-action cross-left-strand
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step-pending ?s)) (at start (for-step-27 ?s)) (at start (done-7)) (at start (done-20)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-27))))

  (:durative-action adjust-disk-tension
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step-pending ?s)) (at start (for-step-28 ?s)) (at start (done-36)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-28))))

  (:durative-action wipe-moisture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s)) (at start (for-step-29 ?s)) (at start (done-7)) (at start (done-18)) (at start (done-31)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-29))))

  (:durative-action dry-and-settle
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step-pending ?s)) (at start (for-step-30 ?s)) (at start (done-17)) (at start (done-27)) (at start (done-37)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-30))))

  (:durative-action clean-surface
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step-pending ?s)) (at start (for-step-31 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-31))))

  (:durative-action sharpen-shears
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step-pending ?s)) (at start (for-step-32 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-32))))

  (:durative-action position-starting-slots
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s)) (at start (for-step-33 ?s)) (at start (done-10)) (at start (done-24)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-33))))

  (:durative-action check-consistency
    :parameters (?s - step)
    :duration (= ?duration 540)
    :condition (and (at start (step-pending ?s)) (at start (for-step-34 ?s)) (at start (done-6)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-34))))

  (:durative-action calibrate-weight
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step-pending ?s)) (at start (for-step-35 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-35))))

  (:durative-action check-numbering
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step-pending ?s)) (at start (for-step-36 ?s)) (at start (done-24)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-36))))

  (:durative-action rotate-disk
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step-pending ?s)) (at start (for-step-37 ?s)) (at start (done-6)) (at start (done-10)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-37))))

  (:durative-action prepare-storage-bag
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step-pending ?s)) (at start (for-step-38 ?s)) (at start (done-12)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-38))))

  (:durative-action mix-epoxy
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s)) (at start (for-step-39 ?s)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-39))))

  (:durative-action measure-circumference
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step-pending ?s)) (at start (for-step-40 ?s)) (at start (done-2)) (at start (done-12)))
    :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (done-40))))
)