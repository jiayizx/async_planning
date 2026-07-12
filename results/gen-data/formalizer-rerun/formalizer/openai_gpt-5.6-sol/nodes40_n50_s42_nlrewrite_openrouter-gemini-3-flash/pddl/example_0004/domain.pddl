(define (domain clean-jet)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
    t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
    t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
    t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40))

  (:durative-action remove-engine-inlet-covers
    :parameters (?s - t1)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))

  (:durative-action apply-degreaser-to-landing-gear
    :parameters (?s - t2)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))

  (:durative-action hand-scrub-vertical-stabilizer
    :parameters (?s - t3)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))

  (:durative-action polish-cockpit-canopy
    :parameters (?s - t4)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))

  (:durative-action position-mobile-scaffolding
    :parameters (?s - t5)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))

  (:durative-action power-wash-wheel-wells
    :parameters (?s - t6)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))

  (:durative-action mix-aviation-soap
    :parameters (?s - t7)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))

  (:durative-action rinse-fuselage
    :parameters (?s - t8)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (d24)) (at start (d33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))

  (:durative-action spray-wings-and-flaps
    :parameters (?s - t9)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))

  (:durative-action inspect-for-oil-leaks
    :parameters (?s - t10)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))

  (:durative-action tape-static-ports-and-sensors
    :parameters (?s - t11)
    :duration (= ?duration 1500)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))

  (:durative-action scrub-fuselage-underside
    :parameters (?s - t12)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))

  (:durative-action apply-corrosion-inhibitor
    :parameters (?s - t13)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (d17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))

  (:durative-action document-pre-wash-state
    :parameters (?s - t14)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d10)) (at start (d11)) (at start (d13)) (at start (d15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))

  (:durative-action disconnect-ground-power
    :parameters (?s - t15)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))

  (:durative-action steam-clean-brakes
    :parameters (?s - t16)
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))

  (:durative-action wipe-engine-cowlings
    :parameters (?s - t17)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (d10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))

  (:durative-action scrub-aircraft-belly
    :parameters (?s - t18)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))

  (:durative-action clear-runway-work-area
    :parameters (?s - t19)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))

  (:durative-action apply-leading-edge-wax
    :parameters (?s - t20)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))

  (:durative-action remove-sensor-tape
    :parameters (?s - t21)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d19)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))

  (:durative-action detail-nose-cone
    :parameters (?s - t22)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))

  (:durative-action prepare-high-pressure-water
    :parameters (?s - t23)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))

  (:durative-action set-up-reclamation-mats
    :parameters (?s - t24)
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending ?s)) (at start (d33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))

  (:durative-action clean-navigation-lights
    :parameters (?s - t25)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))

  (:durative-action degrease-hydraulic-lines
    :parameters (?s - t26)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))

  (:durative-action check-pitot-covers
    :parameters (?s - t27)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))

  (:durative-action wash-horizontal-stabilizers
    :parameters (?s - t28)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))

  (:durative-action tow-to-drying-hangar
    :parameters (?s - t29)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d18)) (at start (d19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))

  (:durative-action blow-dry-rivets-and-seams
    :parameters (?s - t30)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d22)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))

  (:durative-action buff-exterior-paint
    :parameters (?s - t31)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d29)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))

  (:durative-action inspect-upper-wing-surfaces
    :parameters (?s - t32)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))

  (:durative-action clear-hangar-equipment
    :parameters (?s - t33)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))

  (:durative-action seal-passenger-door-seams
    :parameters (?s - t34)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))

  (:durative-action lubricate-landing-gear-struts
    :parameters (?s - t35)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))

  (:durative-action apply-tail-anti-icing-fluid
    :parameters (?s - t36)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))

  (:durative-action conduct-safety-walk-around
    :parameters (?s - t37)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))

  (:durative-action inspect-landing-gear-bay
    :parameters (?s - t38)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d22)) (at start (d35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))

  (:durative-action reinstall-engine-covers
    :parameters (?s - t39)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d28)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))

  (:durative-action sign-cleaning-logbook
    :parameters (?s - t40)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
)