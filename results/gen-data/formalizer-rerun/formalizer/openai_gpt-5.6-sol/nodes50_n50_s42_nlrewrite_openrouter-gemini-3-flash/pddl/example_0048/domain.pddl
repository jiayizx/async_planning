(define (domain salon)
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
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

 (:durative-action step1-design-layout
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (d15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2-grand-opening
  :parameters (?s - step) :duration (= ?duration 21600)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)) (at start (d16)) (at start (d23)) (at start (d46)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3-order-chairs
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (d1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4-install-plumbing
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5-launch-booking
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (d37)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6-finalize-handbook
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (d24)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7-research-zoning
  :parameters (?s - step) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8-sign-lease
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9-safety-inspection
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (d4)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10-purchase-inventory
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (d30)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11-hire-stylists
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (d1)) (at start (d25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12-submit-blueprints
  :parameters (?s - step) :duration (= ?duration 2592000)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13-business-license
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14-install-lighting
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15-secure-loan
  :parameters (?s - step) :duration (= ?duration 2592000)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (d13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16-cosmetology-license
  :parameters (?s - step) :duration (= ?duration 5184000)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)) (at start (d7)) (at start (d24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17-design-logo
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18-setup-reception-pos
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19-install-workstations
  :parameters (?s - step) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (d1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20-order-towels
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21-staff-product-training
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (d25)) (at start (d41)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22-print-menus
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)) (at start (d38)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23-liability-insurance
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (d13)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24-contract-construction
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25-interview-receptionists
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26-install-flooring
  :parameters (?s - step) :duration (= ?duration 432000)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (d8)) (at start (d41)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27-paint-interior
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28-install-hvac
  :parameters (?s - step) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (d4)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29-business-plan
  :parameters (?s - step) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30-distributor-accounts
  :parameters (?s - step) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31-research-marketing
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32-assign-shifts
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)) (at start (d11)) (at start (d25)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33-setup-breakroom
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (d18)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34-select-software
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35-order-signage
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)) (at start (d9)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36-connect-sinks
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (d4)) (at start (d14)) (at start (d19)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37-social-media
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38-hire-photographer
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39-stock-shelves
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (d10)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40-market-research
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41-brand-identity
  :parameters (?s - step) :duration (= ?duration 432000)
  :condition (and (at start (step_pending ?s)) (at start (is41 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42-digital-phone
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is42 ?s)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43-dress-code
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is43 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44-final-walkthrough
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is44 ?s)) (at start (d3)) (at start (d26)) (at start (d27)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45-business-cards
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is45 ?s)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46-hire-cleaning
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is46 ?s)) (at start (d29)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47-purchase-wash-linens
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?s)) (at start (is47 ?s)) (at start (d16)) (at start (d20)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48-build-reception-counter
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is48 ?s)) (at start (d1)) (at start (d13)) (at start (d25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49-install-cameras
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is49 ?s)) (at start (d24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50-soft-opening
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is50 ?s)) (at start (d9)) (at start (d17)) (at start (d19)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
)