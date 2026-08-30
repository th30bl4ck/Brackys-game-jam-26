global.money = 0;
global.visitors_seen = 0;
global.daily_earnings = 0;
global.daily_penalties = 0;
global.daily_bribes = 0;
global.world_karma = 0;
global.wife_alive = true;

global.current_visitor_index = 0;
    
global.visitor_database = [
    
    {
        name: "Boss",
        sprite: spr_boss, 
        dialogue: "Hey, you must be the new hire. Your job is simple: people will want their stories published. Ignore their sob stories; your only goal is profit, press the tick on your desk to accept them and the cross to deny them. Remember your wife in the hospital speaking of, she sent a letter. The rule book covers the rest. I'll be back in four days.",
        article_type: "", article_text: "",
        has_certificate: false, is_stamped: false, cert_sprite: -1, is_forged: false,
        dialogue_yes: "Good. Now get to work.", dialogue_no: "Don't hit that deny button at me. Just get to work.",
        has_bribe: false, bribe_amount: 0, is_tutorial: true,
        karma_impact: 0
    },
    
    {
        name: "Paster Bob",
        sprite: spr_paster, 
        dialogue: "This is a superb opportunity for you my freind...",
        article_type: "religeon", article_text: "New ruins uncover the existance of christ and his promised return.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_blue_T, is_forged: false,
        dialogue_yes: "Thank you, my freind christs blessings be upon you child.", dialogue_no: "You sinful, blasphomous child how dare you renonce the only true god",
        has_bribe: true, bribe_amount: 10, is_tutorial: false,
        karma_impact: 1 
    },
    
    {
        name: "Crack Head",
        sprite: spr_crack_head, 
        dialogue: "H-hh-hey m-man, Cc--could you t-take a look at t-t-this d-d-dude...",
        article_type: ".", article_text: "Marijuana studies have shown it can lower or eliminate pain for the termanily ill.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_blue_fake, is_forged: true,
        dialogue_yes: "Duuuudeeee, this is sick nasty style bro, my pops can sleep easy man .", dialogue_no: "Dude no stress I-i-i guess i'll find some s-s-somehow",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: 2 
    },
    
    {
        name: "Dr Boss",
        sprite: spr_dr_boss, 
        dialogue: "Hello my freind, I have a very interesting propistion for you...",
        article_type: "sicence", article_text: "New scientific drug discovered to have a slowing effect on aging more effective on elderly people.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_purple_fake, is_forged: true,
        dialogue_yes: "The sciance world thanks you, you will be in the history books freind.", dialogue_no: "This is a terrible shame a suppose you don't grasp the importance of this issue.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: -2 
    },
    
    {
        name: "Hubert Billingsworth",
        sprite: spr_hubert_billingsworth, 
        dialogue: "Hey buddy, pal, freind-o. you've got to spread the good word of crypyo my guy. it reponsable for my incrdible wealth and a freind told me that people who do crypto are more likely to have more attrative faces y'know",
        article_type: "money",
        article_text: "Cyrptocurrency market has boomed 1 schmitcoin being valued at 100 dollars expedted to a thousandfold.",
        has_certificate: false,
        is_stamped: false,
        cert_sprite: -1, 
        is_forged: false,
        dialogue_yes: "Nice my freind, i see you have a postive canfield tilt.",
        dialogue_no: "Sure bud miss out on the bigest of all bucks!, your ugly to by the way, I mog the hell out of you.",
        has_bribe: false,
        bribe_amount:  0,
        is_tutorial: false
    },
    
    {
        name: "Hippy",
        sprite: spr_hippy, 
        dialogue: "Hey man I think this sick jam has gotta go straight to fron page man, me and my indie psychedelic ethereal jazz rock fusion band put together this awesome piece, no pressure I just think we need more recognish y'know to get out there.",
        article_type: "",
        article_text: "New experimental music album dropped by underground band JPEGwastakenagainstthemachinemafia, 100 songs and 3 hours long.",
        has_certificate: false,
        is_stamped: false,
        cert_sprite: spr_certificate_stamp_gray_fake,
        is_forged: true,
        dialogue_yes: "Wait what, really I never actually thought this would happen, wow man this has been a life long dream, thank you freind.",
        dialogue_no: "What the hell jackass, you think you're better than me, man hey screw you man.",
        has_bribe: false,
        bribe_amount: 0,
        is_tutorial: false        
    },
    
    {
        name: "Officer",
        sprite: spr_officer, 
        dialogue: "Morning, to the point, I won't give you some long borning schpeil...",
        article_type: "war", article_text: "Enemys of the country gearng up for nuclear war, increase in milatary spending budget needed to combat threats.",
        has_certificate: true, is_stamped: false, cert_sprite: spr_certificate_stamp_blue_J, is_forged: false,
        dialogue_yes: "I appreicate it.", dialogue_no: "Fool, you will be the reason this country falls",
        has_bribe: true, bribe_amount: 10, is_tutorial: false,
        karma_impact: -3 
    },
    
    {
        name: "Judge",
        sprite: spr_judge, 
        dialogue: "Boy oh boy do I have a pitch for you. your aware that there releasing a prisoner today...",
        article_type: "", article_text: "Evil crimanal serial killer released, public calls for legalisation of death penalty.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_green_B, is_forged: false,
        dialogue_yes: "Thank you this helps the world a lot .", dialogue_no: "thats fine, I get it this is a moral conundrum.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: -2
    },
    
    {
        name: "Punk",
        sprite: spr_punk, 
        dialogue: "yo fool, you gotta pulish this thing about the prez yo...",
        article_type: "", article_text: "President of country ousted as sexual predator, public outraged.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_blue_B, is_forged: false,
        dialogue_yes: "Yo sick, lets expose this Nazi fuckwad.", dialogue_no: "Fucks wrong with you man I thought you cared about the cause.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: 3 
    },
    
    {
        name: "Puma",
        sprite: spr_puma, 
        dialogue: "Hey can you help fund the botanical gardens im trying to make a wildlife sanctary...",
        article_type: "", article_text: "Wildlife sanctuary requires funding to save endangered animals from extinction.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_blue_M, is_forged: false,
        dialogue_yes: "Thank you this helps the world a lot more than you know .", dialogue_no: "Thats a shame you're leaving all these animals to become extict there blood is on your hands.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: 2 
    },
    
    {
        name: "Kid",
        sprite: spr_kid, 
        dialogue: " H-hey can you help me. I want to get funding for a planetarium...",
        article_type: ".", article_text: "Fundraiser started for planetarium to gaze upon the stars.",
        has_certificate: false, is_stamped: false, cert_sprite: -1, is_forged: false,
        dialogue_yes: "Really you mean it...", dialogue_no: "Oh okay. Maybe I will never meet an alien.",
        has_bribe: true, bribe_amount: 1, is_tutorial: false,
        karma_impact: 1 
    },
    
    {
        name: "Alien",
        sprite: spr_alien, 
        dialogue: "Hey man I'm looking to sue this radio station...",
        article_type: "radio scheme", article_text: "Radio station scams a normal looking fellow.",
        has_certificate: false, is_stamped: false, cert_sprite: spr_certificate_stamp_gray_fake, is_forged: true,
        dialogue_yes: "Yeah lets sue these bastards .", dialogue_no: "Man no one ever takes me seriously, is it the tattoo isn't it.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: 0 
    },
    
    {
        name: "Guy",
        sprite: spr_guy, 
        dialogue: "Hello I would like to implemnt a neighbourhood watch...",
        article_type: "", article_text: "Vandals terrorise town nobel man sets up neighbourhood.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_green_B, is_forged: false,
        dialogue_yes: "Alrighty then.", dialogue_no: "Aw man.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: 1 
    },
    
    {
        name: "Nude Guy",
        sprite: spr_nude_guy, 
        dialogue: "Hi. so, these guys round the city have been complaining about my being a nudist...",
        article_type: ".", article_text: "Nudity should be socaily aceptible says 10/10 people on the street...",
        has_certificate: false, is_stamped: false, cert_sprite: -1, is_forged: true,
        dialogue_yes: "Alright I new you would support the cause...", dialogue_no: "Dagnabit.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: 0
    },
    
    {
        name: "Lepracon",
        sprite: spr_lepracon, 
        dialogue: "Well looky what we have hear. I need you to publish a paper me boy...",
        article_type: "", article_text: "Sacred tresure found containing vile curse decided by goverment to be ilegal to approach.",
        has_certificate: true, is_stamped: true, cert_sprite: spr_certificate_stamp_gray_B, is_forged: false,
        dialogue_yes: "Yipppe all the gold for me .", dialogue_no: "I curse ye evil man.",
        has_bribe: true, bribe_amount: 0, is_tutorial: false,
        karma_impact: -2 
    },
    
    {
        name: "Monk",
        sprite: spr_monk, 
        dialogue: "Hello child I require your assitance, I have been exiled from my monastary...",
        article_type: "", article_text: "Man asks for donation to support family.",
        has_certificate: false, is_stamped: false, cert_sprite: spr_certificate_stamp_blue_fake, is_forged: true,
        dialogue_yes: "Thank you my freind.", dialogue_no: "No issue child I will find work elsewhere.",
        has_bribe: false, bribe_amount: 0, is_tutorial: false,
        karma_impact: 1
    }
];