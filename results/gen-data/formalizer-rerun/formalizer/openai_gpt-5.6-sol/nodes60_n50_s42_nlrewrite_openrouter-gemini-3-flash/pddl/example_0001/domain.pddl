(define (domain horse-ownership)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step)
  (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (horse_owned) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
 )

 (:durative-action step1-build-fence
  :parameters () :duration (= ?duration 604800)
  :condition (and (at start (step_pending step1)) (at start (d8)))
  :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (d1))))

 (:durative-action step2-research-zoning
  :parameters () :duration (= ?duration 259200)
  :condition (at start (step_pending step2))
  :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (d2))))

 (:durative-action step3-interview-veterinarians
  :parameters () :duration (= ?duration 14400)
  :condition (and (at start (step_pending step3)) (at start (d46)))
  :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (d3))))

 (:durative-action step4-buy-trailer
  :parameters () :duration (= ?duration 172800)
  :condition (and (at start (step_pending step4)) (at start (d39)))
  :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (d4))))

 (:durative-action step5-schedule-wellness-checkup
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (step_pending step5)) (at start (d50)) (at start (d51)))
  :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (d5))))

 (:durative-action step6-select-hay-supplier
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step6)) (at start (d41)) (at start (d42)))
  :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (d6))))

 (:durative-action step7-purchase-manure-spreader
  :parameters () :duration (= ?duration 86400)
  :condition (and (at start (step_pending step7)) (at start (d28)))
  :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (d7))))

 (:durative-action step8-clear-land
  :parameters () :duration (= ?duration 345600)
  :condition (and (at start (step_pending step8)) (at start (d2)) (at start (d24)))
  :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (d8))))

 (:durative-action step9-purchase-grooming-supplies
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step9)) (at start (d23)) (at start (d25)) (at start (d42)) (at start (d52)))
  :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (d9))))

 (:durative-action step10-install-watering-system
  :parameters () :duration (= ?duration 18000)
  :condition (and (at start (step_pending step10)) (at start (d11)) (at start (d14)) (at start (d40)) (at start (d42)))
  :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (d10))))

 (:durative-action step11-order-hay
  :parameters () :duration (= ?duration 259200)
  :condition (and (at start (step_pending step11)) (at start (d6)) (at start (d23)))
  :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (d11))))

 (:durative-action step12-buy-first-aid-kit
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step12)) (at start (d28)) (at start (d29)) (at start (d58)))
  :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (d12))))

 (:durative-action step13-stock-fly-spray
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step13)) (at start (d59)))
  :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (d13))))

 (:durative-action step14-install-rubber-mats
  :parameters () :duration (= ?duration 14400)
  :condition (and (at start (step_pending step14)) (at start (d28)) (at start (d40)))
  :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (d14))))

 (:durative-action step15-attend-safety-course
  :parameters () :duration (= ?duration 86400)
  :condition (at start (step_pending step15))
  :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (d15))))

 (:durative-action step16-purchase-saddle-bridle
  :parameters () :duration (= ?duration 10800)
  :condition (and (at start (step_pending step16)) (at start (d15)) (at start (d19)) (at start (d39)))
  :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (d16))))

 (:durative-action step17-select-farrier
  :parameters () :duration (= ?duration 172800)
  :condition (and (at start (step_pending step17)) (at start (d6)))
  :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (d17))))

 (:durative-action step18-buy-lead-rope-halter
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (step_pending step18)) (at start (d9)) (at start (d24)))
  :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (d18))))

 (:durative-action step19-measure-horse
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step19)) (at start (d29)))
  :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (d19))))

 (:durative-action step20-draft-budget
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step20)) (at start (d2)) (at start (d42)))
  :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (d20))))

 (:durative-action step21-clean-oil-tack
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step21)) (at start (d16)))
  :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (d21))))

 (:durative-action step22-find-breeders-rescues
  :parameters () :duration (= ?duration 604800)
  :condition (and (at start (step_pending step22)) (at start (d46)))
  :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (d22))))

 (:durative-action step23-determine-breed-temperament
  :parameters () :duration (= ?duration 432000)
  :condition (at start (step_pending step23))
  :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (d23))))

 (:durative-action step24-secure-financing
  :parameters () :duration (= ?duration 5184000)
  :condition (at start (step_pending step24))
  :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (d24))))

 (:durative-action step25-visit-horses
  :parameters () :duration (= ?duration 345600)
  :condition (and (at start (step_pending step25)) (at start (d23)))
  :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (d25))))

 (:durative-action step26-order-nameplate
  :parameters () :duration (= ?duration 604800)
  :condition (and (at start (step_pending step26)) (at start (d27)))
  :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (d26))))

 (:durative-action step27-name-horse
  :parameters () :duration (= ?duration 3600)
  :condition (at start (step_pending step27))
  :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (d27))))

 (:durative-action step28-construct-run-in-shelter
  :parameters () :duration (= ?duration 432000)
  :condition (and (at start (step_pending step28)) (at start (d29)))
  :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (d28))))

 (:durative-action step29-evaluate-drainage
  :parameters () :duration (= ?duration 172800)
  :condition (at start (step_pending step29))
  :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (d29))))

 (:durative-action step30-stain-seal-fence
  :parameters () :duration (= ?duration 259200)
  :condition (and (at start (step_pending step30)) (at start (d1)))
  :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (d30))))

 (:durative-action step31-create-emergency-savings
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step31)) (at start (d24)))
  :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (d31))))

 (:durative-action step32-purchase-winter-blanket
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step32)) (at start (d41)) (at start (d56)))
  :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (d32))))

 (:durative-action step33-finalize-purchase-contract
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step33)) (at start (d40)) (at start (d41)) (at start (d55)) (at start (d59)) (at start (d60)))
  :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (d33))))

 (:durative-action step34-arrange-transportation
  :parameters () :duration (= ?duration 10800)
  :condition (and (at start (step_pending step34)) (at start (d48)))
  :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (d34))))

 (:durative-action step35-bring-horse-home
  :parameters () :duration (= ?duration 14400)
  :condition (and (at start (step_pending step35)) (at start (d8)) (at start (d11)) (at start (d26)) (at start (d30)) (at start (d33)) (at start (d60)))
  :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (horse_owned))))

 (:durative-action step36-buy-rain-sheet
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step36)) (at start (d32)))
  :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (d36))))

 (:durative-action step37-take-insurance-photos
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step37)) (at start (d16)))
  :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (d37))))

 (:durative-action step38-schedule-farrier-trimming
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step38)) (at start (d17)) (at start (d51)))
  :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (d38))))

 (:durative-action step39-test-towing-vehicles
  :parameters () :duration (= ?duration 86400)
  :condition (at start (step_pending step39))
  :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (d39))))

 (:durative-action step40-build-tack-room
  :parameters () :duration (= ?duration 345600)
  :condition (and (at start (step_pending step40)) (at start (d17)) (at start (d24)) (at start (d25)) (at start (d43)))
  :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (d40))))

 (:durative-action step41-purchase-grain-supplements
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step41)) (at start (d3)) (at start (d51)) (at start (d57)))
  :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (d41))))

 (:durative-action step42-read-equine-books
  :parameters () :duration (= ?duration 604800)
  :condition (at start (step_pending step42))
  :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (d42))))

 (:durative-action step43-buy-tractor
  :parameters () :duration (= ?duration 259200)
  :condition (and (at start (step_pending step43)) (at start (d7)) (at start (d8)))
  :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (d43))))

 (:durative-action step44-establish-shoeing-schedule
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (step_pending step44)) (at start (d38)))
  :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (d44))))

 (:durative-action step45-find-riding-instructor
  :parameters () :duration (= ?duration 10800)
  :condition (and (at start (step_pending step45)) (at start (d17)) (at start (d23)) (at start (d42)))
  :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (d45))))

 (:durative-action step46-consult-land-expert
  :parameters () :duration (= ?duration 14400)
  :condition (at start (step_pending step46))
  :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (d46))))

 (:durative-action step47-establish-emergency-clinic
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (step_pending step47)) (at start (d3)))
  :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (d47))))

 (:durative-action step48-purchase-mounting-block
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step48)) (at start (d9)) (at start (d16)) (at start (d25)) (at start (d26)) (at start (d60)))
  :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (d48))))

 (:durative-action step49-file-transfer-papers
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step49)) (at start (d50)))
  :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (d49))))

 (:durative-action step50-purchase-insurance
  :parameters () :duration (= ?duration 259200)
  :condition (and (at start (step_pending step50)) (at start (d17)) (at start (d47)) (at start (d56)))
  :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (d50))))

 (:durative-action step51-set-up-feed-bin
  :parameters () :duration (= ?duration 10800)
  :condition (and (at start (step_pending step51)) (at start (d3)))
  :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (d51))))

 (:durative-action step52-purchase-muck-tools
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (step_pending step52)) (at start (d24)) (at start (d42)))
  :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (d52))))

 (:durative-action step53-install-barn-lighting
  :parameters () :duration (= ?duration 21600)
  :condition (and (at start (step_pending step53)) (at start (d6)) (at start (d40)) (at start (d56)))
  :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (d53))))

 (:durative-action step54-prepurchase-vet-exam
  :parameters () :duration (= ?duration 14400)
  :condition (and (at start (step_pending step54)) (at start (d22)))
  :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (d54))))

 (:durative-action step55-buy-shipping-boots
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step55)) (at start (d26)) (at start (d42)) (at start (d52)))
  :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (d55))))

 (:durative-action step56-install-security-camera
  :parameters () :duration (= ?duration 14400)
  :condition (at start (step_pending step56))
  :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (d56))))

 (:durative-action step57-research-bedding
  :parameters () :duration (= ?duration 10800)
  :condition (at start (step_pending step57))
  :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (d57))))

 (:durative-action step58-buy-medical-instruments
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step58)) (at start (d21)))
  :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (d58))))

 (:durative-action step59-install-salt-lick-holder
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step59)) (at start (d28)) (at start (d31)) (at start (d46)))
  :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (d59))))

 (:durative-action step60-clean-disinfect-stable
  :parameters () :duration (= ?duration 18000)
  :condition (and (at start (step_pending step60)) (at start (d3)) (at start (d37)) (at start (d41)))
  :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (d60))))
)