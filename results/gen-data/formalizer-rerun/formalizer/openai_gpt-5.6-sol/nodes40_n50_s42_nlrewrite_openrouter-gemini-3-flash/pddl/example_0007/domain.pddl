(define (domain vanilla-scent)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (slot1 ?s - step) (slot2 ?s - step) (slot3 ?s - step) (slot4 ?s - step)
    (slot5 ?s - step) (slot6 ?s - step) (slot7 ?s - step) (slot8 ?s - step)
    (slot9 ?s - step) (slot10 ?s - step) (slot11 ?s - step) (slot12 ?s - step)
    (slot13 ?s - step) (slot14 ?s - step) (slot15 ?s - step) (slot16 ?s - step)
    (slot17 ?s - step) (slot18 ?s - step) (slot19 ?s - step) (slot20 ?s - step)
    (slot21 ?s - step) (slot22 ?s - step) (slot23 ?s - step) (slot24 ?s - step)
    (slot25 ?s - step) (slot26 ?s - step) (slot27 ?s - step) (slot28 ?s - step)
    (slot29 ?s - step) (slot30 ?s - step) (slot31 ?s - step) (slot32 ?s - step)
    (slot33 ?s - step) (slot34 ?s - step) (slot35 ?s - step) (slot36 ?s - step)
    (slot37 ?s - step) (slot38 ?s - step) (slot39 ?s - step) (slot40 ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  )

  (:durative-action sterilize-jars
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (slot1 ?s)) (at start (p21)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

  (:durative-action label-scent-bottles
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot2 ?s)) (at start (p8)) (at start (p16)) (at start (p29)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

  (:durative-action slice-vanilla-beans
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot3 ?s)) (at start (p9)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

  (:durative-action measure-alcohol-base
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot4 ?s)) (at start (p20)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

  (:durative-action combine-extract-and-carrier-oil
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot5 ?s)) (at start (p1)) (at start (p6)) (at start (p15)) (at start (p31)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

  (:durative-action research-bean-varieties
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (slot6 ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

  (:durative-action filter-final-mixture
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (slot7 ?s)) (at start (p23)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

  (:durative-action order-dropper-bottles
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot8 ?s)) (at start (p11)) (at start (p25)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

  (:durative-action purchase-vanilla-beans
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot9 ?s)) (at start (p18)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))

  (:durative-action wash-workspace-surfaces
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot10 ?s)) (at start (p1)) (at start (p9)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

  (:durative-action receive-bottle-delivery
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (slot11 ?s)) (at start (p22)) (at start (p26)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

  (:durative-action inventory-supplies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (slot12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

  (:durative-action print-ingredient-labels
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot13 ?s)) (at start (p21)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

  (:durative-action calibrate-scale
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot14 ?s)) (at start (p20)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

  (:durative-action prepare-dark-storage
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (slot15 ?s)) (at start (p9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

  (:durative-action sanitize-beakers
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot16 ?s)) (at start (p4)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

  (:durative-action organize-botanical-library
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot17 ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

  (:durative-action set-project-budget
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

  (:durative-action submerge-beans-in-alcohol
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot19 ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

  (:durative-action select-carrier-oil
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (slot20 ?s)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

  (:durative-action clear-workbench
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot21 ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

  (:durative-action compare-supplier-prices
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot22 ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

  (:durative-action sharpen-paring-knife
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot23 ?s)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

  (:durative-action rinse-graduated-cylinders
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

  (:durative-action design-scent-logo
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (slot25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

  (:durative-action sweep-laboratory-floor
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (slot26 ?s)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

  (:durative-action read-vendor-reviews
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (slot27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

  (:durative-action macerate-beans-in-dark
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (slot28 ?s)) (at start (p19)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

  (:durative-action source-organic-fixatives
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (slot29 ?s)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

  (:durative-action clean-cutting-board
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))

  (:durative-action decant-extract
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slot31 ?s)) (at start (p8)) (at start (p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))

  (:durative-action write-scent-recipe
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot32 ?s)) (at start (p6)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))

  (:durative-action assemble-packaging-boxes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot33 ?s)) (at start (p21)) (at start (p25)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))

  (:durative-action check-mail-for-catalogs
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (slot34 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))

  (:durative-action prepare-shipping-station
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (slot35 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))

  (:durative-action research-safety-guidelines
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (slot36 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))

  (:durative-action purchase-carrier-oil
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (slot37 ?s)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))

  (:durative-action plug-in-task-lighting
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (slot38 ?s)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))

  (:durative-action apply-packaging-labels
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (slot39 ?s)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))

  (:durative-action wash-amber-bottles
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (slot40 ?s)) (at start (p8)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
)