(define (domain enjoy_outdoors)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (map_purchased)
    (jacket_packed)
    (photo_taken)
    (parks_researched)
    (trail_selected)
    (weather_checked)
    (tent_set_up)
    (sunscreen_applied)
    (power_bank_charged)
    (cash_withdrawn)
    (stove_packed)
    (hydration_filled)
    (trail_mix_bought)
    (boots_cleaned)
    (route_highlighted)
    (ignition_tested)
    (campsite_reserved)
    (first_aid_organized)
    (poles_inspected)
    (water_bladder_placed)
    (park_pass_renewed)
    (weekend_decided)
    (gps_downloaded)
    (weight_verified)
    (compass_calibrated)
    (contact_list_laminated)
    (tire_pressure_checked)
    (bandages_purchased)
    (fuel_canister_bought)
    (boots_waterproofed)
    (sunglasses_packed)
    (backpack_bought)
    (cookware_packed)
    (phone_os_updated)
    (pole_baskets_tightened)
    (poles_bought)
    (uphill_hike_started)
    (reviews_read)
    (friends_invited)
    (arrived_at_trailhead)
  )

  (:durative-action do_step1
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (cash_withdrawn)) (at start (park_pass_renewed)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (map_purchased)))
  )

  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (weather_checked)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (jacket_packed)))
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (map_purchased)) (at start (parks_researched)) (at start (trail_selected)) (at start (cash_withdrawn)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (bandages_purchased)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (photo_taken)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (weekend_decided)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (parks_researched)))
  )

  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (map_purchased)) (at start (parks_researched)) (at start (cash_withdrawn)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (bandages_purchased)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (trail_selected)))
  )

  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (weather_checked)))
  )

  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)) (at start (map_purchased)) (at start (parks_researched)) (at start (trail_selected)) (at start (cash_withdrawn)) (at start (stove_packed)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (tire_pressure_checked)) (at start (bandages_purchased)) (at start (backpack_bought)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (tent_set_up)))
  )

  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (weather_checked)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (sunscreen_applied)))
  )

  (:durative-action do_step9
    :duration (= ?duration 14400)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (power_bank_charged)))
  )

  (:durative-action do_step10
    :duration (= ?duration 600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (cash_withdrawn)))
  )

  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (map_purchased)) (at start (parks_researched)) (at start (trail_selected)) (at start (cash_withdrawn)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (bandages_purchased)) (at start (backpack_bought)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (stove_packed)))
  )

  (:durative-action do_step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (jacket_packed)) (at start (weather_checked)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (hydration_filled)))
  )

  (:durative-action do_step13
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step13)) (at start (boots_cleaned)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (trail_mix_bought)))
  )

  (:durative-action do_step14
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step14)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (boots_cleaned)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (map_purchased)) (at start (cash_withdrawn)) (at start (boots_cleaned)) (at start (park_pass_renewed)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (route_highlighted)))
  )

  (:durative-action do_step16
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (map_purchased)) (at start (parks_researched)) (at start (trail_selected)) (at start (cash_withdrawn)) (at start (stove_packed)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (bandages_purchased)) (at start (backpack_bought)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (ignition_tested)))
  )

  (:durative-action do_step17
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step17)) (at start (map_purchased)) (at start (cash_withdrawn)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (bandages_purchased)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (campsite_reserved)))
  )

  (:durative-action do_step18
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step18)) (at start (map_purchased)) (at start (cash_withdrawn)) (at start (park_pass_renewed)) (at start (bandages_purchased)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (first_aid_organized)))
  )

  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (poles_bought)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (poles_inspected)))
  )

  (:durative-action do_step20
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (jacket_packed)) (at start (weather_checked)) (at start (hydration_filled)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (water_bladder_placed)))
  )

  (:durative-action do_step21
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step21)) (at start (cash_withdrawn)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (park_pass_renewed)))
  )

  (:durative-action do_step22
    :duration (= ?duration 172800)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (weekend_decided)))
  )

  (:durative-action do_step23
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (gps_downloaded)))
  )

  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (map_purchased)) (at start (jacket_packed)) (at start (weather_checked)) (at start (cash_withdrawn)) (at start (hydration_filled)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (first_aid_organized)) (at start (poles_inspected)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (bandages_purchased)) (at start (backpack_bought)) (at start (phone_os_updated)) (at start (poles_bought)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (weight_verified)))
  )

  (:durative-action do_step25
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step25)) (at start (power_bank_charged)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (compass_calibrated)))
  )

  (:durative-action do_step26
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step26)) (at start (map_purchased)) (at start (cash_withdrawn)) (at start (park_pass_renewed)) (at start (bandages_purchased)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (contact_list_laminated)))
  )

  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (weekend_decided)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (tire_pressure_checked)))
  )

  (:durative-action do_step28
    :duration (= ?duration 1800)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (bandages_purchased)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step29)) (at start (map_purchased)) (at start (parks_researched)) (at start (trail_selected)) (at start (cash_withdrawn)) (at start (stove_packed)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (ignition_tested)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (bandages_purchased)) (at start (backpack_bought)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (fuel_canister_bought)))
  )

  (:durative-action do_step30
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (boots_cleaned)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (boots_waterproofed)))
  )

  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step31)) (at start (weather_checked)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (sunglasses_packed)))
  )

  (:durative-action do_step32
    :duration (= ?duration 3600)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (backpack_bought)))
  )

  (:durative-action do_step33
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (map_purchased)) (at start (parks_researched)) (at start (trail_selected)) (at start (cash_withdrawn)) (at start (stove_packed)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (bandages_purchased)) (at start (backpack_bought)) (at start (phone_os_updated)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (cookware_packed)))
  )

  (:durative-action do_step34
    :duration (= ?duration 2400)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (phone_os_updated)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (poles_bought)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (pole_baskets_tightened)))
  )

  (:durative-action do_step36
    :duration (= ?duration 2700)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (poles_bought)))
  )

  (:durative-action do_step37
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step37)) (at start (map_purchased)) (at start (jacket_packed)) (at start (parks_researched)) (at start (trail_selected)) (at start (weather_checked)) (at start (cash_withdrawn)) (at start (stove_packed)) (at start (hydration_filled)) (at start (trail_mix_bought)) (at start (boots_cleaned)) (at start (campsite_reserved)) (at start (first_aid_organized)) (at start (poles_inspected)) (at start (park_pass_renewed)) (at start (weekend_decided)) (at start (gps_downloaded)) (at start (weight_verified)) (at start (bandages_purchased)) (at start (backpack_bought)) (at start (phone_os_updated)) (at start (poles_bought)) (at start (arrived_at_trailhead)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (uphill_hike_started)))
  )

  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step38)) (at start (parks_researched)) (at start (weekend_decided)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (reviews_read)))
  )

  (:durative-action do_step39
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step39)) (at start (weekend_decided)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (friends_invited)))
  )

  (:durative-action do_step40
    :duration (= ?duration 10800)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (arrived_at_trailhead)))
  )
)