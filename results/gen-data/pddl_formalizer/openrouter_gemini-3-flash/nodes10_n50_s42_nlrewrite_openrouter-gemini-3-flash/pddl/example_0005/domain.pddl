(define (domain wear_gloves_to_bed)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gloves_located)     ; Step 2
    (gloves_retrieved)   ; Step 10
    (hands_washed)       ; Step 7
    (gloves_checked)     ; Step 3
    (sheets_turned_down) ; Step 4
    (water_placed)       ; Step 6
    (panel_navigated)    ; Step 9
    (temp_set)           ; Step 5
    (cream_applied)      ; Step 1
    (gloves_worn)        ; Step 8
  )

  ;; Step 2: Locate gloves
  (:durative-action locate_gloves
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_located)))
  )

  ;; Step 10: Retrieve gloves (Requires Step 2)
  (:durative-action retrieve_gloves
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (gloves_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_retrieved)))
  )

  ;; Step 7: Wash hands
  (:durative-action wash_hands
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_washed)))
  )

  ;; Step 3: Check gloves (Requires Step 2 and Step 7)
  (:durative-action check_gloves
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (gloves_located)) (at start (hands_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_checked)))
  )

  ;; Step 4: Turn down sheets
  (:durative-action turn_down_sheets
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sheets_turned_down)))
  )

  ;; Step 6: Place water (Requires Step 4)
  (:durative-action place_water
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (sheets_turned_down)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_placed)))
  )

  ;; Step 9: Navigate panel
  (:durative-action navigate_panel
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (panel_navigated)))
  )

  ;; Step 5: Set temperature (Requires Step 9)
  (:durative-action set_temp
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (panel_navigated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (temp_set)))
  )

  ;; Step 1: Apply cream (Requires Step 10)
  (:durative-action apply_cream
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (gloves_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_applied)))
  )

  ;; Step 8: Wear gloves (Requires Step 1)
  (:durative-action wear_gloves
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (cream_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_worn)))
  )
)