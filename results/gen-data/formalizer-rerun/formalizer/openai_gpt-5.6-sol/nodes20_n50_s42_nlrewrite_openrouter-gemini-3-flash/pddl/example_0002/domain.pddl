(define (domain wear-red-dress)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dress_removed_from_bag)
    (perfume_applied)
    (red_heels_on)
    (skirt_ironed)
    (jewelry_selected)
    (lace_sleeves_steamed)
    (mirror_set_up)
    (evening_makeup_applied)
    (iron_and_steamer_heated)
    (vanity_cleaned)
    (shower_completed)
    (dress_cooled)
    (makeup_kit_organized)
    (fabric_inspected)
    (gold_jewelry_fastened)
    (hair_styled)
    (final_look_checked)
    (dress_retrieved)
    (red_dress_on)
    (hosiery_on)
  )

  (:durative-action remove-dress-from-bag
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (dress_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dress_removed_from_bag))))

  (:durative-action apply-perfume
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (shower_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (perfume_applied))))

  (:durative-action put-on-red-heels
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (gold_jewelry_fastened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (red_heels_on))))

  (:durative-action iron-skirt
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (iron_and_steamer_heated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (skirt_ironed))))

  (:durative-action select-jewelry
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jewelry_selected))))

  (:durative-action steam-lace-sleeves
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (skirt_ironed))
      (at start (iron_and_steamer_heated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lace_sleeves_steamed))))

  (:durative-action set-up-mirror
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (vanity_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mirror_set_up))))

  (:durative-action apply-evening-makeup
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (mirror_set_up)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (evening_makeup_applied))))

  (:durative-action heat-iron-and-steamer
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (iron_and_steamer_heated))))

  (:durative-action clean-vanity
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (makeup_kit_organized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vanity_cleaned))))

  (:durative-action take-shower
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shower_completed))))

  (:durative-action cool-dress
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (fabric_inspected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dress_cooled))))

  (:durative-action organize-makeup-kit
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (iron_and_steamer_heated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (makeup_kit_organized))))

  (:durative-action inspect-fabric
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (dress_removed_from_bag))
      (at start (iron_and_steamer_heated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fabric_inspected))))

  (:durative-action fasten-gold-jewelry
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (jewelry_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gold_jewelry_fastened))))

  (:durative-action style-hair
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending ?s))
      (at start (evening_makeup_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hair_styled))))

  (:durative-action check-final-look
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (hosiery_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (final_look_checked))))

  (:durative-action retrieve-dress
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dress_retrieved))))

  (:durative-action put-on-red-dress
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (perfume_applied))
      (at start (shower_completed))
      (at start (dress_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (red_dress_on))))

  (:durative-action put-on-hosiery
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (shower_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hosiery_on))))
)