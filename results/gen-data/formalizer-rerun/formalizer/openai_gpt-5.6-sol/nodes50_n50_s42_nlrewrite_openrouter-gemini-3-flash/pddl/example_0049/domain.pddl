(define (domain obtain-book-name)
 (:requirements :typing :durative-actions)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49)
  (book_name_finalized))

 (:durative-action step1_recall_plot
  :parameters (?s - t1) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2_search_library_database
  :parameters (?s - t2) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d17)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3_message_professor
  :parameters (?s - t3) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4_scroll_goodreads
  :parameters (?s - t4) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d37)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5_confirm_with_collector
  :parameters (?s - t5) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6_check_bibliography
  :parameters (?s - t6) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d25)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7_browse_rare_book_forum
  :parameters (?s - t7) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d17)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8_visit_bookstore
  :parameters (?s - t8) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9_post_subreddit_description
  :parameters (?s - t9) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10_review_reading_journals
  :parameters (?s - t10) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d17)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11_verify_isbn
  :parameters (?s - t11) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d14)) (at start (d24)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12_cross_reference_author
  :parameters (?s - t12) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (d22)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13_search_cover_art
  :parameters (?s - t13) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14_locate_library_receipt
  :parameters (?s - t14) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15_read_forum_replies
  :parameters (?s - t15) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16_ask_childhood_friend
  :parameters (?s - t16) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17_organize_story_fragments
  :parameters (?s - t17) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18_scan_similar_book
  :parameters (?s - t18) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19_check_wiki_mentions
  :parameters (?s - t19) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d29)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20_search_storage_unit
  :parameters (?s - t20) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (d14)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21_find_school_supply_box
  :parameters (?s - t21) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22_draft_character_names
  :parameters (?s - t22) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d17)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23_email_genre_specialist
  :parameters (?s - t23) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d22)) (at start (d26)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24_search_old_emails
  :parameters (?s - t24) :duration (= ?duration 2700)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25_consult_librarian
  :parameters (?s - t25) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d26)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26_review_award_winners
  :parameters (?s - t26) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27_create_identification_account
  :parameters (?s - t27) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28_search_illustrator_portfolio
  :parameters (?s - t28) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29_examine_bookshelf_photo
  :parameters (?s - t29) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30_check_university_catalog
  :parameters (?s - t30) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d26)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31_post_facebook_query
  :parameters (?s - t31) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d16)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32_search_old_magazines
  :parameters (?s - t32) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33_search_description_in_french
  :parameters (?s - t33) :duration (= ?duration 2700)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34_check_amazon_recommendations
  :parameters (?s - t34) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35_search_defunct_imprint
  :parameters (?s - t35) :duration (= ?duration 3000)
  :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36_review_1990s_catalog
  :parameters (?s - t36) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37_map_book_setting
  :parameters (?s - t37) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38_verify_publication_year
  :parameters (?s - t38) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d28)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39_record_remembered_ending
  :parameters (?s - t39) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40_read_lost_media_blog
  :parameters (?s - t40) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41_contact_podcast
  :parameters (?s - t41) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42_narrow_to_publisher
  :parameters (?s - t42) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d15)) (at start (d17)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43_order_potential_match
  :parameters (?s - t43) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44_brainstorm
  :parameters (?s - t44) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45_search_specific_quote
  :parameters (?s - t45) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46_review_book_fair_program
  :parameters (?s - t46) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47_check_school_curriculum
  :parameters (?s - t47) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48_ask_discord_collectors
  :parameters (?s - t48) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d39)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49_check_blurb_database
  :parameters (?s - t49) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50_finalize_book_name
  :parameters (?s - t50) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (book_name_finalized))))
)