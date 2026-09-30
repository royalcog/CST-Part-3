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
			scr_text("* That's A Valid Request", "queen", 32);
			scr_text("* Unfortunately Your Dad Does Not Seem Very Interested In The Whole Family Ordeal", "queen", 11);
			scr_text("* ...", "lancer", 11);
			scr_text("* Do you think... Is someone gonna get hurt?", "lancer", 7);
			scr_text("* I Wouldn't Be Surprised Based On Your Dad And Susie's Personalities", "queen", 15);
			scr_text("* Hopefully Ralsei Can Pacify Him, But If He Can't Then", "queen", 2);
			scr_text("* Uh", "queen", 3);
			scr_text("* ...", "queen", 5);
			scr_text("* Let Me Buy You Another Drink", "queen", 1);
			scr_text("* ...", "lancer", 10);
		break;
		
		case "self_4":
			scr_text("* Where are you?", "king");
			scr_text("* ...", "king");
			scr_text("* No, I am not rushing you, but", "king");
				scr_text_cutoff_skip(31);
			scr_text("* ...", "king");
			scr_text("* What?", "king");
			scr_text("* ...", "king");
			scr_text("* But that's not possible!", "king");
			scr_text("* He was locked", "king");
				scr_text_cutoff_skip(15);
			scr_text("* ...", "king");
			scr_text("* I am sorry.|* Forgive me, please.", "king");
			scr_text("* I", "king");
				scr_text_cutoff_skip(3);
			scr_text("* Hey!!!", "susie");
			scr_text("* ...", "king");
			scr_text("* I must go.", "king");
			scr_text("* I hope to see you soon.", "king");
			scr_text("* (Click)", "empty");
		break;
		
		
/*
(end of phone call)
*/



/*
(King laughs and battle begins)
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