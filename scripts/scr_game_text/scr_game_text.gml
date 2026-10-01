// scr_text_shake(23, 28); -> Shake the letters between (and indcluding) x and y
// scr_text_color(23, 28, color, color, color, color); -> Turn the letters between (and indcluding) x and y different colors
// scr_text_face_spr(LEFT, spr_noelle_left_happy); -> Turning a sprite a direction (4-directional only)
// scr_obj_spawn_after_textbox(obj_desscircle, 680, 215, "Instances"); -> Spawning an object after the full textbox is done
// scr_obj_sprite_after_textbox(obj_dess, spr_dess_intro_body, false, snd_appear, 0.7); -> Sprite animation after textbox is done
// scr_obj_sprite_after_textbox_delayed(obj_dess, spr_dess_drool, true, 60); -> Same as above, but with a delay
// scr_text_speaker_shake(.5, 1); -> Shake the speaker during the line of text
// scr_text_cutoff_slow(11, 11, 0.1); -> Slows down the text, and cuts it off at letter x

/// @param text_id
function scr_game_text(_text_id)
{
	switch (_text_id)
	{
		case "self_1":
			scr_text("* How Do You Like Your Smoothie", "queen", 13);
			scr_text("* It's good...", "lancer", 0);
		break;
		
		case "self_2":
			scr_text("* You've Barely Touched It", "queen", 11);
			scr_text("* ...", "lancer", 6);
		break;
		
		case "self_3":
			scr_text("* Girldad?", "lancer", 7);
			scr_text("* Yes Dearie", "queen", 1);
			scr_text("* Why... would he do that?", "lancer", 11);
			scr_text("* Because Your Dad Is A Bad Guy", "queen", 10);
			scr_text("* Or So He Proclaims", "queen", 0);
			scr_text("* But I don't want him to just be the bad guy.", "lancer", 5);
			scr_text("* I want him to be my dad...", "lancer", 10);
			scr_text("* You're supposed to trust your family.", "lancer", 11);
			scr_text("* I trust you, I hope you trust me...", "lancer", 12);
			scr_text("* How Can I Not You're A Little Bouncy Dude", "queen", 25);
			scr_text("* ...", "lancer", 5);
			scr_text("* So why is it so hard to trust him?", "lancer", 10);
			scr_text("* He Clearly Struggles With Keeping Promises", "queen", 11);
			scr_text("* ...", "queen", 4);
				scr_obj_sprite_on_page(obj_queen, spr_queen_wine_right_unhappy, false);
			scr_text("* I'm Sorry You Have To: Deal With This", "queen", 3);
			scr_text("* If It Makes You Feel Any Better, I Don't Have A Dad", "queen", 5);
			scr_text("* I Kinda Just", "queen", 4);
			scr_text("* Existed|* Or Something", "queen", 0);
			scr_text("* Even If Your Dad Sucks", "queen", 15);
				scr_text_secondary("Which He Really Does", "queen", 13);
			scr_text("* At Least You Have A Parental Figure In Your Life", "queen", 10);
				scr_obj_sprite_on_page(obj_queen, spr_queen_wine_right, false);
			scr_text("* I know, I just...", "lancer", 4);
			scr_text("* I want him to act like my parental figure too.|* Not just be it.", "lancer", 12);
			scr_text("* That's A Valid Request", "queen", 30);
			scr_text("* Unfortunately Your Dad Does Not Seem Very Interested In The Whole Family Ordeal", "queen", 11);
			scr_text("* ...", "lancer", 11);
			scr_text("* Do you think... Is someone gonna get hurt?", "lancer", 7);
			scr_text("* I Wouldn't Be Surprised Based On Your Dad And Susie's Personalities", "queen", 15);
			scr_text("* Hopefully Ralsei Can Pacify Him, But If He Can't Then", "queen", 2);
			scr_text("* Uh", "queen", 3);
				scr_obj_sprite_on_page(obj_queen, spr_queen_wine_right_unhappy, false);
			scr_text("* ...", "queen", 5);
			scr_text("* Let Me Buy You Another Drink", "queen", 1);
				scr_obj_sprite_on_page(obj_queen, spr_queen_wine_right, false);
			scr_text("* ...", "lancer", 10);
		break;
		
		case "self_4":
			scr_fade_warp_with_music(rm_empty, 240, sng_empty);
		break;
		
		case "self_5":
			scr_snd_after_textbox(snd_phone_ring, 1);
		break;
		
		case "self_6":
			scr_text("* Where are you?", "king", , , , true);
			scr_text("* ...", "king", , , , true);
			scr_text("* No, I am not rushing you, but", "king", , , , true);
				scr_text_cutoff_skip(31);
			scr_text("* ...", "king", , , , true);
			scr_text("* What?", "king", , , , true);
			scr_text("* ...", "king", , , , true);
			scr_text("* But that's not possible!", "king", , , , true);
			scr_text("* He was locked up", "king", , , , true);
				scr_text_cutoff_skip(18);
			scr_text("* ...", "king", , , , true);
			scr_text("* I am sorry.|* Please forgive me.", "king", , , , true);
			scr_text("* I...", "king", , , , true);
			scr_text("* Hey!!!", "susie", , , , true);
			scr_text("* ...", "king", , , , true);
			scr_text("* I must go.", "king", , , , true);
			scr_text("* I hope to see you soon.", "king", , , , true);
			scr_text("* (Click...)", "empty");
		break;
		
		case "self_7":
			scr_fade_warp_with_music(rm_one, 240, sng_empty);
		break;
		
		case "self_8":
			scr_queue_movement_group_after_textbox([
				   { obj: obj_susie, sprite: spr_susie_walk_right_neutral, loop: true, dx: 4, dy: 0, speed: .8, duration: 75 },
				   { obj: obj_ralsei, sprite: spr_ralsei_walk_right_neutral, loop: true, dx: 4, dy: 0, speed: .8, duration: 75 }
			]);
		break;
		
		case "self_9":
			scr_text("* Where do you think you're going???", "susie");
			scr_text("* I'm right where I need to be, Lightner.", "king");
			scr_text("* King, please just go back to your cell.", "ralsei");
			scr_text("* Even if not that, at least stay in the castle a bit longer", "ralsei");
				scr_text_cutoff_skip(60);
			scr_text("* I am done following your rules, Prince.", "king");
			scr_text("* Your kingdom has nothing to offer me.", "king");
			scr_text("* Not even an ex-royalty package.", "king");
			scr_text("* You think this is a joke?", "susie");
			scr_text("* Isn't that how you go through life, Lightner?|* Everything being a joke?", "king");
			scr_text("* All the friends you've made along your journey...", "king");
			scr_text("* All the Darkeners that you've helped, that you've battled...", "king");
			scr_text("* Have you ever taken any of it seriously?", "king");
			scr_text("* Has this week of adventure just been a satire for you?", "king");
			scr_text("* The way you all prance around, interacting with the other dark worlds...", "king");
			scr_text("* How do you sleep at night knowing you don't have this in your OWN world", "king");
				scr_text_cutoff_skip(73);
			scr_text("* ENOUGH.", "susie");
			scr_text("* You think you're so special?", "susie");
			scr_text("* Well, why don't I just go back up to the Light World...", "susie");
			scr_text("* And tear your card in half, huh???", "susie");
			scr_text("* How would you like that???", "susie");
			scr_text("* Susie, you can't get to the card unless you seal the fountain...", "ralsei");
			scr_text("* ...Damn it.", "susie");
			scr_text("* What a foolish Lightner.", "king");
			scr_text("* I bet your ice friend isn't much smarter than", "king");
				scr_text_cutoff_skip(46);
			scr_text("* Don't you DARE talk about Noelle.", "susie");
			scr_text("* Or what, Susie?", "king");
			scr_text("* Are you going to go back to your blissful ignorance of the true world?", "king");
			scr_text("* Or will you bring her here and watch her di", "king");
				scr_text_cutoff_skip(45);

				global.cutscene_lock = true;

				// remember where Susie's feet are so she gets knocked back to the same spot
				var _home = scr_get_feet(obj_susie);
				obj_susie.leap_home_x = _home.x;
				obj_susie.leap_home_y = _home.y;
				
				scr_obj_sprite_after_textbox(obj_ralsei, spr_ralsei_shocked_behind, false);
				scr_char_move_after_textbox(obj_susie, spr_susie_clash_jump, false, 5, -6, 1, 24, false, 0.05, "out");
				scr_snd_after_textbox(snd_boost, 1);

				// shortly after snd_boost's main hit dies down: swoon, then knockback when it ends
				scr_custom_call_after_textbox_delayed(function()
				{
				    scr_swoon(spr_roark_slash_susie, 180, scr_susie_knockback);
				}, 40);
		break;

		case "self_10":
			global.cutscene_lock = true;
			scr_text("* N-No...", "ralsei");
				scr_text_shake(1, 99);
			scr_text("* You...", "ralsei");
				scr_text_shake(1, 99);
			scr_text("* What have you do", "ralsei");
				scr_obj_sprite_on_page(obj_ralsei, spr_ralsei_head_down_sad, false);
				scr_text_shake(1, 99);
				scr_text_cutoff_skip(18);

			scr_custom_call_after_textbox_delayed(function()
			{
			    scr_swoon(spr_roark_slash_ralsei, 180, function()
			    {
			        scr_set_sprite_keep_feet(obj_ralsei, spr_ralsei_defeat);
			        scr_swoon_fall_sounds();
			        scr_camera_shake(4, 20);
			        global.cutscene_lock = false;
			    });
			}, 1);
		break;
			
		case "self_11":
			global.cutscene_lock = true;
			scr_text("* My Knight...", "king");
				scr_custom_call_after_textbox_delayed(function()
				{
				    scr_knight_fly_in(326, 180);
				}, 1);
		break;
		
		case "self_12":
			global.cutscene_lock = true;
			scr_text("* Where is the other one?", "knight");
				scr_text_slow(0.3);
				scr_text_shake(1, 99);
				scr_snd_on_page(snd_knight_phone_call, 1);
			scr_text("* I do not know, my Knight.|* They did not arrive with the rest of their party.", "king");
			scr_text("* I need... all 3...", "knight");
				scr_text_slow(0.2);
				scr_text_shake(1, 99);
				scr_snd_on_page(snd_knight_phone_call, 1);
				
				scr_snd_after_textbox(snd_hurt, 1);
				
				// stir for ~1 second
				scr_custom_call_after_textbox_delayed(function() {
				    scr_char_jolt(obj_susie, 1, 60);
				}, 0);
				
				// then switch to the landed (crouched) pose, keeping her feet planted
				scr_custom_call_after_textbox_delayed(function() {
				    scr_set_sprite_keep_feet(obj_susie, spr_susie_landed);
				    global.cutscene_lock = false;
				}, 61);
		break;
		
		case "self_13":
			global.cutscene_lock = true;
			scr_text("* You...", "susie");
			scr_text("* You won't get Kris...", "susie");
			
				// get up (3 frames at 6fps = 30 game frames)
				scr_custom_call_after_textbox_delayed(function() {
				    with (obj_susie)
				    {
				        sprite_index = spr_susie_getup;
				        image_index = 0;
				        image_speed = 1;
				        anim_loop = false;
				    }
				}, 0);
				
				// walk right a little (4 * 0.8 * 10 = 32px)
				scr_custom_call_after_textbox_delayed(function() {
				    scr_char_move_now(obj_susie, spr_susie_walk_right_neutral, true, 4, 0, 0.8, 10);
				}, 35);
				
				// then down to Ralsei (4 * 0.8 * 15 = 48px)
				scr_custom_call_after_textbox_delayed(function() {
				    scr_char_move_now(obj_susie, spr_susie_walk_down_neutral, true, 0, 4, 0.8, 15);
				}, 46);
				
				// heal
				scr_custom_call_after_textbox_delayed(function() {
				    with (obj_susie)
				    {
				        sprite_index = spr_susie_heal;
				        image_index = 0;
				        image_speed = 1;
				        anim_loop = false; // freezes on her last frame
				        charge_snd = scr_audio_fade_in(snd_charge, 1000, 1, true);
				    }
				    
				    // the heal lands on frame 14
				    scr_call_on_anim_frame(obj_susie, spr_susie_heal, 14, function() {
				        // quickly fade out the charge loop, then stop it
				        audio_sound_gain(obj_susie.charge_snd, 0, 150);
				        scr_call_after_frames(function() {
				            audio_stop_sound(obj_susie.charge_snd);
				        }, 10);
				        
				        audio_play_sound(snd_heal, 1, false);
				        
				        var _f = instance_create_depth(0, 0, obj_ralsei.depth - 1, obj_heal_flash);
				        _f.target = obj_ralsei;
				        _f.duration = 60;
				        _f.on_finish = function() {
				            // Ralsei gets up
				            scr_set_sprite_keep_feet(obj_ralsei, spr_ralsei_shocked);
				            
				            // his body sits ~21px left of center in spr_ralsei_defeat,
				            // so pull him back to where he was actually lying
				            var _ralsei_shift = 21;
				            obj_ralsei.x -= _ralsei_shift * obj_ralsei.image_xscale;
				            
				            // Susie turns to face him
				            with (obj_susie)
				            {
				                sprite_index = spr_susie_left_neutral;
				                image_index = 0;
				                image_speed = 0;
				                anim_loop = true;
				            }
				            
				            global.cutscene_lock = false;
				        };
				    });
				}, 62);
		break;
		
		
/*
Susie: You...
Susie: You won't get Kris...
(Susie gets up, heals Ralsei, and moves above him)
*/


		/*array_push(obj_cutscenehandler_midfightattacks.after_textbox_queue, {
			type: "tenna_battle_intro"
			});*/
				
	
		/* Warp Code:
		if (instance_exists(obj_cutscenehandler_midfightattacks))
			    {
			        obj_cutscenehandler_midfightattacks.waiting_for_warp = true;
			    }
		*/
		
		/* Pitching Music:
			global.song = { sound: sng_?, bpm: ?, beats: ? };
			global.music = audio_play_sound(sng_?, 1, true);
			audio_sound_pitch(global.music, 0.7);
			global.song_start = current_time;
		*/
		/* Summoning UI (Not in battle):
			if (instance_exists(obj_UI))
			{
			    instance_destroy(obj_UI);
			}
			instance_create_depth(0, 0, -5000, obj_UI);
		    audio_stop_all();
		    global.song = { sound: sng_cmmm, bpm: 130, beats: 9999 };
			global.music = audio_play_sound(sng_cmmm, 1, true);
			audio_sound_pitch(global.music, 1.25);
			global.song_start = current_time;
		*/
		
		/* Movement Queue:
			scr_queue_movement_group_after_textbox([
				   { obj: obj_gerson, sprite: spr_gerson_hammer_walkright_lantern, loop: true, dx: 15, dy: 3, speed: .2, duration: 75 },
				   { obj: obj_mewmew, sprite: spr_ghost_shocked_left, loop: false, dx: 0, dy: -10, speed: .2, duration: 75 }
			]);
		*/
		
		// Battle Example:
		/* case "self_18":
			if (instance_exists(obj_UI))
			{
			    instance_destroy(obj_UI);
			}
			instance_create_depth(0, 0, -5000, obj_UI);
		    obj_UI.sprite_index = spr_UI_Pink;
			obj_mewmew.sprite_index = spr_ghost_shocked_left;
		    var pink = obj_mewmew;
		    var _seq = instance_create_depth(0, 0, 0, obj_fight_sequencer);
		    _seq.sequence = [
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
		        { type: "talk", batch: [ { speaker: pink, text: "Hey! Hey!!! HEY!!!"} ] },
				{ type: "talk", batch: [ { speaker: pink, text: "GERSON!!! I'M ON YOUR SIDE!!!" } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "WHAT'S GOING ON???" } ] },
		        { type: "attack", attacker: obj_sound_of_justice, data: global.atk_sound_of_justice_hammers },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
		        { type: "talk", batch: [ { speaker: pink, text: "DIDN'T WE PLAN TO DO THIS???" } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "WHY ARE YOU ATTACKING ME???" } ] },
		        { type: "attack", kind: "custom", start_func: scr_start_giant_hammer_attack },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
				{ type: "talk", batch: [ { speaker: pink, text: "You know I can't take damage... right???" } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "So... quit it!!!" } ] },
				{ type: "attack", kind: "custom", start_func: scr_start_falling_hammer_attack },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_wistful },
				{ type: "talk", batch: [ { speaker: pink, text: "We need to... find my body..." } ] },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_yelling_right },
				{ type: "talk", batch: [ { speaker: pink, text: "Damn it, Gerson, don't you double-cross me too!!!" } ] },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_shocked_left },
				{ type: "attack", kind: "custom", start_func: scr_start_gavel_slam_attack },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_wistful },
				{ type: "talk", batch: [ { speaker: pink, text: "Come on, Gerson. I don't want to fight you." } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "So stop fighting me..." } ] },
		        // add more talk/attack pairs as you write more dialogue/attacks
		    ];		
		break;
		
		case "self_19":
			scr_ui_reverse(sng_empty);
			audio_stop_all();
			scr_text("* Please...", "mewmewghost");
				scr_portrait_on_page(spr_pinkghost_scared);
	        scr_portrait_tail_off();
	        scr_snd_after_textbox(snd_sojlaugh, 1);
	        scr_obj_sprite_after_textbox(obj_sound_of_justice, spr_sound_of_justice_laugh, true);
	        scr_custom_call_after_textbox_delayed(scr_spawn_soj_hit_hammer, 113); // mid-laugh hammer hit
			scr_obj_sprite_after_textbox_delayed(obj_mewmew, spr_ghost_shocked_left, false, 120);
	        scr_custom_call_after_textbox_delayed(scr_start_pan_and_reveal_left, 150); // shortly after the hit
		break;
	*/
	}
}