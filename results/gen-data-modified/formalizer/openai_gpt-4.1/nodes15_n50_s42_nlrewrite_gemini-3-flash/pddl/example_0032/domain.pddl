(define (domain grill_asparagus)
  (:requirements :durative-actions)
  (:predicates
    (arrange_spears_pending)
    (arrange_spears_done)
    (preheat_grill_pending)
    (preheat_grill_done)
    (grill_asparagus_pending)
    (grill_asparagus_done)
    (toss_spears_pending)
    (toss_spears_done)
    (buy_asparagus_pending)
    (buy_asparagus_done)
    (garnish_lemon_pending)
    (garnish_lemon_done)
    (store_crisper_pending)
    (store_crisper_done)
    (clean_grates_pending)
    (clean_grates_done)
    (remove_from_heat_pending)
    (remove_from_heat_done)
    (trim_woody_ends_pending)
    (trim_woody_ends_done)
    (wash_asparagus_pending)
    (wash_asparagus_done)
    (pat_dry_pending)
    (pat_dry_done)
    (place_on_grill_pending)
    (place_on_grill_done)
    (whisk_balsamic_pending)
    (whisk_balsamic_done)
    (turn_spears_pending)
    (turn_spears_done)
  )

  (:durative-action arrange_spears
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (arrange_spears_pending)) (at start (grill_asparagus_done)) (at start (turn_spears_done)))
    :effect (and (at start (not (arrange_spears_pending))) (at end (arrange_spears_done)))
  )

  (:durative-action preheat_grill
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (preheat_grill_pending)) (at start (clean_grates_done)))
    :effect (and (at start (not (preheat_grill_pending))) (at end (preheat_grill_done)))
  )

  (:durative-action grill_asparagus
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (grill_asparagus_pending)) (at start (toss_spears_done)))
    :effect (and (at start (not (grill_asparagus_pending))) (at end (grill_asparagus_done)))
  )

  (:durative-action toss_spears
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (toss_spears_pending)) (at start (trim_woody_ends_done)))
    :effect (and (at start (not (toss_spears_pending))) (at end (toss_spears_done)))
  )

  (:durative-action buy_asparagus
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (buy_asparagus_pending))
    :effect (and (at start (not (buy_asparagus_pending))) (at end (buy_asparagus_done)))
  )

  (:durative-action garnish_lemon
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (garnish_lemon_pending)) (at start (remove_from_heat_done)))
    :effect (and (at start (not (garnish_lemon_pending))) (at end (garnish_lemon_done)))
  )

  (:durative-action store_crisper
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (store_crisper_pending)) (at start (buy_asparagus_done)))
    :effect (and (at start (not (store_crisper_pending))) (at end (store_crisper_done)))
  )

  (:durative-action clean_grates
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (clean_grates_pending))
    :effect (and (at start (not (clean_grates_pending))) (at end (clean_grates_done)))
  )

  (:durative-action remove_from_heat
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (remove_from_heat_pending)) (at start (place_on_grill_done)))
    :effect (and (at start (not (remove_from_heat_pending))) (at end (remove_from_heat_done)))
  )

  (:durative-action trim_woody_ends
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (trim_woody_ends_pending)) (at start (wash_asparagus_done)) (at start (pat_dry_done)))
    :effect (and (at start (not (trim_woody_ends_pending))) (at end (trim_woody_ends_done)))
  )

  (:durative-action wash_asparagus
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (wash_asparagus_pending)) (at start (buy_asparagus_done)))
    :effect (and (at start (not (wash_asparagus_pending))) (at end (wash_asparagus_done)))
  )

  (:durative-action pat_dry
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pat_dry_pending)) (at start (buy_asparagus_done)))
    :effect (and (at start (not (pat_dry_pending))) (at end (pat_dry_done)))
  )

  (:durative-action place_on_grill
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (place_on_grill_pending)) (at start (preheat_grill_done)) (at start (toss_spears_done)))
    :effect (and (at start (not (place_on_grill_pending))) (at end (place_on_grill_done)))
  )

  (:durative-action whisk_balsamic
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (whisk_balsamic_pending)) (at start (pat_dry_done)))
    :effect (and (at start (not (whisk_balsamic_pending))) (at end (whisk_balsamic_done)))
  )

  (:durative-action turn_spears
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (turn_spears_pending)) (at start (grill_asparagus_done)))
    :effect (and (at start (not (turn_spears_pending))) (at end (turn_spears_done)))
  )
)
