(define (domain ceviche)
  (:requirements :durative-actions)
  (:predicates
    (sharpen_knife_pending)
    (sharpen_knife_done)
    (plate_cevice_pending)
    (plate_cevice_done)
    (marinate_fish_pending)
    (marinate_fish_done)
    (garnish_pending)
    (garnish_done)
    (juice_citrus_pending)
    (juice_citrus_done)
    (cube_fish_pending)
    (cube_fish_done)
    (boil_sides_pending)
    (boil_sides_done)
    (chill_juice_pending)
    (chill_juice_done)
    (toss_onions_pending)
    (toss_onions_done)
    (clean_fish_pending)
    (clean_fish_done)
  )

  (:durative-action sharpen_knife
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (sharpen_knife_pending))
    :effect (and (at start (not (sharpen_knife_pending))) (at end (sharpen_knife_done)))
  )

  (:durative-action plate_cevice
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (plate_cevice_pending)) (at start (boil_sides_done)) (at start (toss_onions_done)))
    :effect (and (at start (not (plate_cevice_pending))) (at end (plate_cevice_done)))
  )

  (:durative-action marinate_fish
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (marinate_fish_pending)) (at start (cube_fish_done)))
    :effect (and (at start (not (marinate_fish_pending))) (at end (marinate_fish_done)))
  )

  (:durative-action garnish
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (garnish_pending)) (at start (marinate_fish_done)))
    :effect (and (at start (not (garnish_pending))) (at end (garnish_done)))
  )

  (:durative-action juice_citrus
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (juice_citrus_pending))
    :effect (and (at start (not (juice_citrus_pending))) (at end (juice_citrus_done)))
  )

  (:durative-action cube_fish
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (cube_fish_pending)) (at start (juice_citrus_done)) (at start (chill_juice_done)))
    :effect (and (at start (not (cube_fish_pending))) (at end (cube_fish_done)))
  )

  (:durative-action boil_sides
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (boil_sides_pending))
    :effect (and (at start (not (boil_sides_pending))) (at end (boil_sides_done)))
  )

  (:durative-action chill_juice
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (chill_juice_pending)) (at start (juice_citrus_done)))
    :effect (and (at start (not (chill_juice_pending))) (at end (chill_juice_done)))
  )

  (:durative-action toss_onions
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (toss_onions_pending)) (at start (clean_fish_done)))
    :effect (and (at start (not (toss_onions_pending))) (at end (toss_onions_done)))
  )

  (:durative-action clean_fish
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (clean_fish_pending)) (at start (sharpen_knife_done)) (at start (boil_sides_done)))
    :effect (and (at start (not (clean_fish_pending))) (at end (clean_fish_done)))
  )
)
