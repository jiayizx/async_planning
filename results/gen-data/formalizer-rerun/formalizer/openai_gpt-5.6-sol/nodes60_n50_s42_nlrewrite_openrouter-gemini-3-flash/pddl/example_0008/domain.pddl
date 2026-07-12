(define (domain tea-enrichment)
 (:requirements :typing :durative-actions)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 - step)
 (:predicates
  (step_pending ?x - step) (step_done ?x - step)
  (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
  (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
  (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
  (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
  (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
  (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60))

 (:durative-action sieve-dried-leaves
  :parameters (?x - t1) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s11)) (at start (s43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
 (:durative-action collect-used-bags
  :parameters (?x - t2) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
 (:durative-action empty-leaves-into-bowl
  :parameters (?x - t3) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s17)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
 (:durative-action add-epsom-salts
  :parameters (?x - t4) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s17)) (at start (s26)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
 (:durative-action transfer-to-fermentation-bin
  :parameters (?x - t5) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s25)) (at start (s30)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
 (:durative-action label-container
  :parameters (?x - t6) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s8)) (at start (s12)) (at start (s15)) (at start (s21)) (at start (s39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
 (:durative-action check-moisture
  :parameters (?x - t7) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?x)) (at start (s32)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
 (:durative-action sterilize-jars
  :parameters (?x - t8) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s22)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
 (:durative-action research-soil-ph
  :parameters (?x - t9) :duration (= ?duration 1800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
 (:durative-action mix-into-topsoil
  :parameters (?x - t10) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s4)) (at start (s19)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
 (:durative-action spread-on-baking-sheet
  :parameters (?x - t11) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
 (:durative-action gather-tools
  :parameters (?x - t12) :duration (= ?duration 600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
 (:durative-action clean-countertop
  :parameters (?x - t13) :duration (= ?duration 900)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
 (:durative-action record-batch-number
  :parameters (?x - t14) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s12)) (at start (s28)) (at start (s47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
 (:durative-action rinse-tea-bag-mesh
  :parameters (?x - t15) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
 (:durative-action analyze-nutrients
  :parameters (?x - t16) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
 (:durative-action boil-kettle
  :parameters (?x - t17) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
 (:durative-action prepare-drainage-layer
  :parameters (?x - t18) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s12)) (at start (s22)) (at start (s30)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
 (:durative-action wash-hands
  :parameters (?x - t19) :duration (= ?duration 180)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
 (:durative-action place-sheet-in-window
  :parameters (?x - t20) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (s21)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
 (:durative-action cut-open-bags
  :parameters (?x - t21) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s3)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
 (:durative-action clear-shed-space
  :parameters (?x - t22) :duration (= ?duration 1800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22))))
 (:durative-action measure-vegetable-scraps
  :parameters (?x - t23) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s38)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
 (:durative-action water-plants
  :parameters (?x - t24) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s33)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
 (:durative-action remove-staples-and-strings
  :parameters (?x - t25) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s2)) (at start (s12)) (at start (s28)) (at start (s34)) (at start (s48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
 (:durative-action grind-dried-mixture
  :parameters (?x - t26) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s59)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
 (:durative-action add-crushed-eggshells
  :parameters (?x - t27) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s3)) (at start (s32)) (at start (s40)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
 (:durative-action buy-potting-soil
  :parameters (?x - t28) :duration (= ?duration 2700)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
 (:durative-action apply-powder-to-ferns
  :parameters (?x - t29) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s4)) (at start (s37)) (at start (s51)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
 (:durative-action find-muslin-cloth
  :parameters (?x - t30) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
 (:durative-action wipe-drying-tray
  :parameters (?x - t31) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s8)) (at start (s11)) (at start (s13)) (at start (s35)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
 (:durative-action separate-tea-bags
  :parameters (?x - t32) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s2)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
 (:durative-action check-weather
  :parameters (?x - t33) :duration (= ?duration 120)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
 (:durative-action squeeze-excess-liquid
  :parameters (?x - t34) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s33)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
 (:durative-action inspect-for-mold
  :parameters (?x - t35) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
 (:durative-action fetch-rainwater
  :parameters (?x - t36) :duration (= ?duration 600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
 (:durative-action mix-powder-with-soil
  :parameters (?x - t37) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s4)) (at start (s13)) (at start (s20)) (at start (s47)) (at start (s55)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
 (:durative-action collect-eggshells
  :parameters (?x - t38) :duration (= ?duration 300)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
 (:durative-action wash-mixing-bowl
  :parameters (?x - t39) :duration (= ?duration 600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
 (:durative-action pulverize-eggshells
  :parameters (?x - t40) :duration (= ?duration 900)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
 (:durative-action seal-storage-jars
  :parameters (?x - t41) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s8)) (at start (s21)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s41))))
 (:durative-action soak-tea-bags
  :parameters (?x - t42) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s17)) (at start (s22)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s42))))
 (:durative-action dehydrate-tea-leaves
  :parameters (?x - t43) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?x)) (at start (s12)) (at start (s39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s43))))
 (:durative-action cover-bowl
  :parameters (?x - t44) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s30)) (at start (s34)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s44))))
 (:durative-action add-seaweed-extract
  :parameters (?x - t45) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (s3)) (at start (s5)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s45))))
 (:durative-action stir-fermentation-mixture
  :parameters (?x - t46) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s5)) (at start (s44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s46))))
 (:durative-action air-dry-leaves
  :parameters (?x - t47) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?x)) (at start (s16)) (at start (s21)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s47))))
 (:durative-action sift-plastic-mesh
  :parameters (?x - t48) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s18)) (at start (s36)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s48))))
 (:durative-action test-soil-nitrogen
  :parameters (?x - t49) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s32)) (at start (s54)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s49))))
 (:durative-action consult-composting-guide
  :parameters (?x - t50) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (s9)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s50))))
 (:durative-action weigh-product
  :parameters (?x - t51) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s16)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s51))))
 (:durative-action clean-scissors
  :parameters (?x - t52) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s12)) (at start (s21)) (at start (s34)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s52))))
 (:durative-action compost-paper-bags
  :parameters (?x - t53) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?x)) (at start (s3)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s53))))
 (:durative-action dilute-with-rainwater
  :parameters (?x - t54) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s36)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s54))))
 (:durative-action combine-leaves-and-scraps
  :parameters (?x - t55) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s7)) (at start (s23)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s55))))
 (:durative-action store-bin-in-dark
  :parameters (?x - t56) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s5)) (at start (s7)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s56))))
 (:durative-action photograph-plants
  :parameters (?x - t57) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (s49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s57))))
 (:durative-action sanitize-workspace
  :parameters (?x - t58) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (s8)) (at start (s15)) (at start (s17)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s58))))
 (:durative-action leave-bags-in-sun
  :parameters (?x - t59) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?x)) (at start (s35)) (at start (s58)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s59))))
 (:durative-action dispose-waste
  :parameters (?x - t60) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (s19)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s60))))
)