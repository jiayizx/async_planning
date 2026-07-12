(define (domain walk-living-room)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
  (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
  (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
  (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
  (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50)
  (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
  (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
  (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
  (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
  (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
  (book_put_down) (hallway_checked) (thermostat_adjusted) (runner_straightened) (slippers_located)
  (gate_opened) (nightlight_on) (dog_toys_picked_up) (cat_stepped_over) (vacuum_unplugged)
  (wool_socks_on) (bedroom_door_closed) (slippers_on) (mail_moved) (living_room_entrance_reached)
  (vacuum_cord_coiled) (bathroom_light_checked) (closet_door_closed) (laundry_basket_navigated) (toys_basketed)
  (bedside_lamp_off) (living_room_carpet_reached) (stood_up) (rug_edges_smoothed) (window_locks_checked)
  (storage_closet_passed) (floorboard_avoided) (phone_charging) (doorway_arch_passed) (mirror_checked)
  (floor_transition_felt) (painting_adjusted) (main_living_area_entered) (gate_latch_unlocked) (laundry_room_passed)
  (wall_inspected) (fish_greeted) (robot_vacuum_dodged) (socks_pulled_up) (switch_cleaned)
  (clock_checked) (laundry_basket_stored) (coaster_grabbed) (hallway_light_off) (coaster_placed)
  (shoe_moved) (lint_removed) (sofa_approached) (laptop_closed) (hallway_approached))

 (:durative-action step1
  :parameters () :duration (= ?duration 5)
  :condition (at start (pending1))
  :effect (and (at start (not (pending1))) (at end (done1)) (at end (book_put_down))))
 (:durative-action step2
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending2)) (at start (vacuum_unplugged)) (at start (laundry_room_passed)))
  :effect (and (at start (not (pending2))) (at end (done2)) (at end (hallway_checked))))
 (:durative-action step3
  :parameters () :duration (= ?duration 20)
  :condition (and (at start (pending3)) (at start (runner_straightened)))
  :effect (and (at start (not (pending3))) (at end (done3)) (at end (thermostat_adjusted))))
 (:durative-action step4
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending4)) (at start (phone_charging)) (at start (laptop_closed)))
  :effect (and (at start (not (pending4))) (at end (done4)) (at end (runner_straightened))))
 (:durative-action step5
  :parameters () :duration (= ?duration 120)
  :condition (at start (pending5))
  :effect (and (at start (not (pending5))) (at end (done5)) (at end (slippers_located))))
 (:durative-action step6
  :parameters () :duration (= ?duration 15)
  :condition (and (at start (pending6)) (at start (wool_socks_on)) (at start (gate_latch_unlocked)))
  :effect (and (at start (not (pending6))) (at end (done6)) (at end (gate_opened))))
 (:durative-action step7
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending7)) (at start (dog_toys_picked_up)) (at start (bedside_lamp_off)))
  :effect (and (at start (not (pending7))) (at end (done7)) (at end (nightlight_on))))
 (:durative-action step8
  :parameters () :duration (= ?duration 60)
  :condition (at start (pending8))
  :effect (and (at start (not (pending8))) (at end (done8)) (at end (dog_toys_picked_up))))
 (:durative-action step9
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending9)) (at start (wool_socks_on)) (at start (hallway_approached)))
  :effect (and (at start (not (pending9))) (at end (done9)) (at end (cat_stepped_over))))
 (:durative-action step10
  :parameters () :duration (= ?duration 15)
  :condition (at start (pending10))
  :effect (and (at start (not (pending10))) (at end (done10)) (at end (vacuum_unplugged))))
 (:durative-action step11
  :parameters () :duration (= ?duration 45)
  :condition (at start (pending11))
  :effect (and (at start (not (pending11))) (at end (done11)) (at end (wool_socks_on))))
 (:durative-action step12
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending12)) (at start (hallway_checked)) (at start (vacuum_cord_coiled)) (at start (clock_checked)))
  :effect (and (at start (not (pending12))) (at end (done12)) (at end (bedroom_door_closed))))
 (:durative-action step13
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending13)) (at start (slippers_located)))
  :effect (and (at start (not (pending13))) (at end (done13)) (at end (slippers_on))))
 (:durative-action step14
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending14)) (at start (phone_charging)))
  :effect (and (at start (not (pending14))) (at end (done14)) (at end (mail_moved))))
 (:durative-action step15
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending15)) (at start (laundry_basket_navigated)) (at start (stood_up)) (at start (phone_charging)) (at start (doorway_arch_passed)) (at start (wall_inspected)))
  :effect (and (at start (not (pending15))) (at end (done15)) (at end (living_room_entrance_reached))))
 (:durative-action step16
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending16)) (at start (vacuum_unplugged)))
  :effect (and (at start (not (pending16))) (at end (done16)) (at end (vacuum_cord_coiled))))
 (:durative-action step17
  :parameters () :duration (= ?duration 5)
  :condition (at start (pending17))
  :effect (and (at start (not (pending17))) (at end (done17)) (at end (bathroom_light_checked))))
 (:durative-action step18
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending18)) (at start (storage_closet_passed)))
  :effect (and (at start (not (pending18))) (at end (done18)) (at end (closet_door_closed))))
 (:durative-action step19
  :parameters () :duration (= ?duration 15)
  :condition (and (at start (pending19)) (at start (vacuum_cord_coiled)) (at start (bedside_lamp_off)))
  :effect (and (at start (not (pending19))) (at end (done19)) (at end (laundry_basket_navigated))))
 (:durative-action step20
  :parameters () :duration (= ?duration 45)
  :condition (and (at start (pending20)) (at start (dog_toys_picked_up)) (at start (closet_door_closed)))
  :effect (and (at start (not (pending20))) (at end (done20)) (at end (toys_basketed))))
 (:durative-action step21
  :parameters () :duration (= ?duration 5)
  :condition (at start (pending21))
  :effect (and (at start (not (pending21))) (at end (done21)) (at end (bedside_lamp_off))))
 (:durative-action step22
  :parameters () :duration (= ?duration 2)
  :condition (and (at start (pending22)) (at start (cat_stepped_over)) (at start (laundry_basket_navigated)) (at start (floorboard_avoided)) (at start (sofa_approached)) (at start (hallway_approached)))
  :effect (and (at start (not (pending22))) (at end (done22)) (at end (living_room_carpet_reached))))
 (:durative-action step23
  :parameters () :duration (= ?duration 3)
  :condition (and (at start (pending23)) (at start (book_put_down)) (at start (slippers_on)))
  :effect (and (at start (not (pending23))) (at end (done23)) (at end (stood_up))))
 (:durative-action step24
  :parameters () :duration (= ?duration 15)
  :condition (and (at start (pending24)) (at start (shoe_moved)))
  :effect (and (at start (not (pending24))) (at end (done24)) (at end (rug_edges_smoothed))))
 (:durative-action step25
  :parameters () :duration (= ?duration 60)
  :condition (at start (pending25))
  :effect (and (at start (not (pending25))) (at end (done25)) (at end (window_locks_checked))))
 (:durative-action step26
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending26)) (at start (gate_opened)) (at start (cat_stepped_over)) (at start (mail_moved)))
  :effect (and (at start (not (pending26))) (at end (done26)) (at end (storage_closet_passed))))
 (:durative-action step27
  :parameters () :duration (= ?duration 5)
  :condition (at start (pending27))
  :effect (and (at start (not (pending27))) (at end (done27)) (at end (floorboard_avoided))))
 (:durative-action step28
  :parameters () :duration (= ?duration 10)
  :condition (at start (pending28))
  :effect (and (at start (not (pending28))) (at end (done28)) (at end (phone_charging))))
 (:durative-action step29
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending29)) (at start (bedside_lamp_off)) (at start (laundry_room_passed)) (at start (fish_greeted)) (at start (coaster_grabbed)))
  :effect (and (at start (not (pending29))) (at end (done29)) (at end (doorway_arch_passed))))
 (:durative-action step30
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending30)) (at start (bathroom_light_checked)) (at start (hallway_light_off)))
  :effect (and (at start (not (pending30))) (at end (done30)) (at end (mirror_checked))))
 (:durative-action step31
  :parameters () :duration (= ?duration 2)
  :condition (and (at start (pending31)) (at start (hallway_checked)) (at start (doorway_arch_passed)) (at start (clock_checked)) (at start (lint_removed)))
  :effect (and (at start (not (pending31))) (at end (done31)) (at end (floor_transition_felt))))
 (:durative-action step32
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (pending32)) (at start (switch_cleaned)))
  :effect (and (at start (not (pending32))) (at end (done32)) (at end (painting_adjusted))))
 (:durative-action step33
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending33)) (at start (gate_opened)) (at start (mirror_checked)) (at start (floor_transition_felt)))
  :effect (and (at start (not (pending33))) (at end (done33)) (at end (main_living_area_entered))))
 (:durative-action step34
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending34)) (at start (hallway_approached)))
  :effect (and (at start (not (pending34))) (at end (done34)) (at end (gate_latch_unlocked))))
 (:durative-action step35
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending35)) (at start (laundry_basket_navigated)))
  :effect (and (at start (not (pending35))) (at end (done35)) (at end (laundry_room_passed))))
 (:durative-action step36
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending36)) (at start (painting_adjusted)))
  :effect (and (at start (not (pending36))) (at end (done36)) (at end (wall_inspected))))
 (:durative-action step37
  :parameters () :duration (= ?duration 15)
  :condition (and (at start (pending37)) (at start (lint_removed)))
  :effect (and (at start (not (pending37))) (at end (done37)) (at end (fish_greeted))))
 (:durative-action step38
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending38)) (at start (vacuum_cord_coiled)) (at start (laundry_basket_navigated)) (at start (coaster_grabbed)))
  :effect (and (at start (not (pending38))) (at end (done38)) (at end (robot_vacuum_dodged))))
 (:durative-action step39
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending39)) (at start (wool_socks_on)))
  :effect (and (at start (not (pending39))) (at end (done39)) (at end (socks_pulled_up))))
 (:durative-action step40
  :parameters () :duration (= ?duration 20)
  :condition (and (at start (pending40)) (at start (nightlight_on)) (at start (laptop_closed)))
  :effect (and (at start (not (pending40))) (at end (done40)) (at end (switch_cleaned))))
 (:durative-action step41
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending41)) (at start (window_locks_checked)) (at start (wall_inspected)) (at start (hallway_light_off)) (at start (lint_removed)))
  :effect (and (at start (not (pending41))) (at end (done41)) (at end (clock_checked))))
 (:durative-action step42
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending42)) (at start (closet_door_closed)) (at start (rug_edges_smoothed)) (at start (laptop_closed)))
  :effect (and (at start (not (pending42))) (at end (done42)) (at end (laundry_basket_stored))))
 (:durative-action step43
  :parameters () :duration (= ?duration 10)
  :condition (at start (pending43))
  :effect (and (at start (not (pending43))) (at end (done43)) (at end (coaster_grabbed))))
 (:durative-action step44
  :parameters () :duration (= ?duration 5)
  :condition (at start (pending44))
  :effect (and (at start (not (pending44))) (at end (done44)) (at end (hallway_light_off))))
 (:durative-action step45
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending45)) (at start (floorboard_avoided)) (at start (coaster_grabbed)))
  :effect (and (at start (not (pending45))) (at end (done45)) (at end (coaster_placed))))
 (:durative-action step46
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending46)) (at start (runner_straightened)))
  :effect (and (at start (not (pending46))) (at end (done46)) (at end (shoe_moved))))
 (:durative-action step47
  :parameters () :duration (= ?duration 5)
  :condition (and (at start (pending47)) (at start (slippers_on)))
  :effect (and (at start (not (pending47))) (at end (done47)) (at end (lint_removed))))
 (:durative-action step48
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (pending48)) (at start (dog_toys_picked_up)) (at start (floorboard_avoided)) (at start (hallway_light_off)) (at start (shoe_moved)))
  :effect (and (at start (not (pending48))) (at end (done48)) (at end (sofa_approached))))
 (:durative-action step49
  :parameters () :duration (= ?duration 10)
  :condition (at start (pending49))
  :effect (and (at start (not (pending49))) (at end (done49)) (at end (laptop_closed))))
 (:durative-action step50
  :parameters () :duration (= ?duration 15)
  :condition (and (at start (pending50)) (at start (hallway_checked)) (at start (slippers_located)) (at start (bathroom_light_checked)) (at start (bedside_lamp_off)))
  :effect (and (at start (not (pending50))) (at end (done50)) (at end (hallway_approached))))
)