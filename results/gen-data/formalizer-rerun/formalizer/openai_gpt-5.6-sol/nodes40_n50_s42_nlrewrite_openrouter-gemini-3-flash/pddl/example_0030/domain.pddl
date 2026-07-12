(define (domain fried-parsley)
 (:requirements :durative-actions :typing)
 (:types
  step
  step1-type step2-type step3-type step4-type step5-type step6-type step7-type step8-type step9-type step10-type
  step11-type step12-type step13-type step14-type step15-type step16-type step17-type step18-type step19-type step20-type
  step21-type step22-type step23-type step24-type step25-type step26-type step27-type step28-type step29-type step30-type
  step31-type step32-type step33-type step34-type step35-type step36-type step37-type step38-type step39-type step40-type - step)
 (:predicates
  (step_pending ?s - step)
  (step_done ?s - step)
  (washed) (rack_ready) (leaves_checked) (dish_garnished) (patted_dry)
  (stove_cleaned) (oil_disposed) (parsley_seasoned) (removed_from_oil)
  (thermometer_located) (oil_poured) (flame_adjusted) (stems_trimmed)
  (sprigs_separated) (thermometer_calibrated) (parsley_spun) (sprigs_organized)
  (roots_composted) (parsley_bought) (air_dried) (oil_heated) (lined_plate_ready)
  (fan_on) (droplets_checked) (bone_dry) (bowl_prepared) (thermometer_clipped)
  (test_sprig_fried) (parsley_laid_out) (workspace_cleared) (equipment_arranged)
  (sprigs_in_dry_bowl) (timer_ready) (parsley_dropped) (parsley_fried)
  (parsley_drained) (oil_level_checked) (parsley_cooled) (counters_cleaned)
  (parsley_on_plate))

 (:durative-action wash-parsley
  :parameters (?s - step1-type)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (parsley_bought)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (washed))))

 (:durative-action set-out-rack
  :parameters (?s - step2-type)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rack_ready))))

 (:durative-action check-leaves
  :parameters (?s - step3-type)
  :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leaves_checked))))

 (:durative-action garnish-dish
  :parameters (?s - step4-type)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (leaves_checked)) (at start (parsley_drained)) (at start (counters_cleaned)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dish_garnished))))

 (:durative-action pat-parsley-dry
  :parameters (?s - step5-type)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (washed)) (at start (parsley_bought)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patted_dry))))

 (:durative-action clean-stove
  :parameters (?s - step6-type)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (fan_on)) (at start (workspace_cleared)) (at start (timer_ready)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stove_cleaned))))

 (:durative-action dispose-oil
  :parameters (?s - step7-type)
  :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (leaves_checked)) (at start (parsley_on_plate)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_disposed))))

 (:durative-action season-parsley
  :parameters (?s - step8-type)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (removed_from_oil)) (at start (bowl_prepared)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_seasoned))))

 (:durative-action remove-from-oil
  :parameters (?s - step9-type)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (lined_plate_ready)) (at start (parsley_on_plate)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (removed_from_oil))))

 (:durative-action locate-thermometer
  :parameters (?s - step10-type)
  :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thermometer_located))))

 (:durative-action pour-oil
  :parameters (?s - step11-type)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_poured))))

 (:durative-action adjust-flame
  :parameters (?s - step12-type)
  :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (oil_heated)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flame_adjusted))))

 (:durative-action trim-stems
  :parameters (?s - step13-type)
  :duration (= ?duration 240)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stems_trimmed))))

 (:durative-action separate-sprigs
  :parameters (?s - step14-type)
  :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (patted_dry)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sprigs_separated))))

 (:durative-action calibrate-thermometer
  :parameters (?s - step15-type)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (lined_plate_ready)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thermometer_calibrated))))

 (:durative-action spin-parsley
  :parameters (?s - step16-type)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (washed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_spun))))

 (:durative-action organize-sprigs
  :parameters (?s - step17-type)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (stems_trimmed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sprigs_organized))))

 (:durative-action compost-roots
  :parameters (?s - step18-type)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (parsley_bought)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (roots_composted))))

 (:durative-action buy-parsley
  :parameters (?s - step19-type)
  :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_bought))))

 (:durative-action air-dry-parsley
  :parameters (?s - step20-type)
  :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (patted_dry)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (air_dried))))

 (:durative-action heat-oil
  :parameters (?s - step21-type)
  :duration (= ?duration 720)
  :condition (and (at start (step_pending ?s)) (at start (oil_poured)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_heated))))

 (:durative-action prepare-lined-plate
  :parameters (?s - step22-type)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (parsley_dropped)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lined_plate_ready))))

 (:durative-action turn-on-fan
  :parameters (?s - step23-type)
  :duration (= ?duration 10)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fan_on))))

 (:durative-action check-droplets
  :parameters (?s - step24-type)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (stems_trimmed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (droplets_checked))))

 (:durative-action ensure-bone-dry
  :parameters (?s - step25-type)
  :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (patted_dry)) (at start (stems_trimmed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bone_dry))))

 (:durative-action prepare-bowl
  :parameters (?s - step26-type)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (timer_ready)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_prepared))))

 (:durative-action clip-thermometer
  :parameters (?s - step27-type)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (thermometer_located)) (at start (thermometer_calibrated)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thermometer_clipped))))

 (:durative-action test-sprig
  :parameters (?s - step28-type)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (rack_ready)) (at start (bone_dry)) (at start (parsley_fried)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (test_sprig_fried))))

 (:durative-action lay-out-parsley
  :parameters (?s - step29-type)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (parsley_spun)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_laid_out))))

 (:durative-action clear-workspace
  :parameters (?s - step30-type)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (leaves_checked)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared))))

 (:durative-action arrange-equipment
  :parameters (?s - step31-type)
  :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (leaves_checked)) (at start (lined_plate_ready)) (at start (test_sprig_fried)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_arranged))))

 (:durative-action transfer-to-dry-bowl
  :parameters (?s - step32-type)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (parsley_laid_out)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sprigs_in_dry_bowl))))

 (:durative-action set-out-timer
  :parameters (?s - step33-type)
  :duration (= ?duration 30)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (timer_ready))))

 (:durative-action drop-parsley
  :parameters (?s - step34-type)
  :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (sprigs_in_dry_bowl)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_dropped))))

 (:durative-action fry-parsley
  :parameters (?s - step35-type)
  :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (rack_ready)) (at start (leaves_checked)) (at start (bone_dry)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_fried))))

 (:durative-action drain-parsley
  :parameters (?s - step36-type)
  :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (parsley_fried)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_drained))))

 (:durative-action check-oil-level
  :parameters (?s - step37-type)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (oil_poured)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_level_checked))))

 (:durative-action cool-parsley
  :parameters (?s - step38-type)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (leaves_checked)) (at start (parsley_drained)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_cooled))))

 (:durative-action wipe-counters
  :parameters (?s - step39-type)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (fan_on)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counters_cleaned))))

 (:durative-action transfer-to-plate
  :parameters (?s - step40-type)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (parsley_fried)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parsley_on_plate))))
)