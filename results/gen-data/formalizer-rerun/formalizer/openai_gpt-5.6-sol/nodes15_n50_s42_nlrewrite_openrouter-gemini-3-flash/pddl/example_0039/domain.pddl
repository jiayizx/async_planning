(define (domain tow-cars)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (safety_chains_attached)
    (dispatch_received)
    (trip_log_closed)
    (truck_positioned)
    (damage_inspected)
    (wheel_straps_secured)
    (area_cleared)
    (truck_inspected)
    (vehicle_verified)
    (car_winched)
    (beacon_activated)
    (bed_locks_engaged)
    (vehicle_delivered)
    (driver_information_gathered)
    (transmission_neutralized)
  )

  (:durative-action attach_safety_chains
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (truck_inspected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (safety_chains_attached))
    )
  )

  (:durative-action receive_dispatch_call
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dispatch_received))
    )
  )

  (:durative-action complete_trip_log
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (vehicle_delivered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trip_log_closed))
    )
  )

  (:durative-action position_flatbed_truck
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (area_cleared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (truck_positioned))
    )
  )

  (:durative-action inspect_car_damage
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (dispatch_received))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (damage_inspected))
    )
  )

  (:durative-action secure_wheel_straps
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and
      (at start (step_pending ?s))
      (at start (vehicle_verified))
      (at start (driver_information_gathered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wheel_straps_secured))
    )
  )

  (:durative-action clear_area
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (area_cleared))
    )
  )

  (:durative-action inspect_tow_truck
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (truck_inspected))
    )
  )

  (:durative-action verify_vehicle
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (dispatch_received))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vehicle_verified))
    )
  )

  (:durative-action winch_car
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and
      (at start (step_pending ?s))
      (at start (damage_inspected))
      (at start (transmission_neutralized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (car_winched))
    )
  )

  (:durative-action activate_beacon
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (safety_chains_attached))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (beacon_activated))
    )
  )

  (:durative-action engage_bed_locks
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (dispatch_received))
      (at start (damage_inspected))
      (at start (car_winched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bed_locks_engaged))
    )
  )

  (:durative-action drive_to_impound_lot
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (wheel_straps_secured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vehicle_delivered))
    )
  )

  (:durative-action gather_driver_information
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (driver_information_gathered))
    )
  )

  (:durative-action neutralize_transmission
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (dispatch_received))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (transmission_neutralized))
    )
  )
)