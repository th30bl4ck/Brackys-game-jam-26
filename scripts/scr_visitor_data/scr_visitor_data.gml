global.money = 0;
global.visitors_seen = 0;
global.daily_earnings = 0;
global.daily_penalties = 0;
global.daily_bribes = 0;

global.current_visitor_index = 0;
    
global.visitor_database = [
    
    {
        name: "Paster Bob",
        sprite: spr_paster, 
        dialogue: "This is a superb opportunity for you my freind, the church of christ is in need of more loyal followers to the good cause, so if you accept this very hefty offer from the donation basket, in exchange, I would like you to share the good word of the lord with the non belivers to make them join the cause.",
        article_type: "religeon",
        article_text: "New ruins uncover the existance of christ and his promised return.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_blue_T, 
        is_forged: false,
        dialogue_yes: "Thank you, my freind christs blessings be upon you child.",
        dialogue_no: "You sinful, blasphomous child how dare you renonce the only true god",
        has_bribe: true,
        bribe_amount: 10
    },
    
    {
        name: "Crack Head",
        sprite: spr_crack_head, 
        dialogue: "H-hh-hey m-man, Cc--could you t-take a look at t-t-this d-d-dude, its a document to legalise Mary Jane bro, you know the mean green machine h-h-hasn't bin churnin out dough like usual you know, yeah i know the mean green machine is a cooooll nickname right bro?, anyway this act of legalisin the cush would help my old man he got the big C y'know it'd h-help me out if you could ease his pain man ",
        article_type: ".",
        article_text: "Marijuana studies have shown it can lower or eliminate pain for the termanily ill.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_blue_fake,
        is_forged: true,
        dialogue_yes: "Duuuudeeee, this is sick nasty style bro, my pops can sleep easy man .",
        dialogue_no: "Dude no stress I-i-i guess i'll find some s-s-somehow",
        has_bribe: false,
        bribe_amount: 0
    },
    
    {
        name: "Dr Boss",
        sprite: spr_dr_boss, 
        dialogue: "Hello my freind, I have a very interesting propistion for you, a new development in the world of sciance. my company has unvailed a new strand of enzmeys that can slow the reaction involved in aging, thus extending life. I hear this paper has quite the following, so to the jist of my issue we need people to see this product and the genral media as a whole has been spreading some nasty rumours about this new medical miricale so if you could publish this article this would be much appericated.  ",
        article_type: "sicence",
        article_text: "New scientific drug discovered to have a slowing effect on aging more effective on elderly people.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_red_M,
        is_forged: true,
        dialogue_yes: "The sciance world thanks you, you will be in the history books freind.",
        dialogue_no: "This is a terrible shame a suppose you don't grasp the importance of this issue.",
        has_bribe: false,
        bribe_amount: 0   
    },
    
    {
        name: "Hubert Billingsworth",
        sprite: spr_hubert_billingsworth, 
        dialogue: "Hey buddy, pal, freind-o. you've got to spread the good word of crypyo my guy. it reponsable for my incrdible wealth and a freind told me that people who do crypto are more likely to have more attrative faces y'know",
        article_type: "money",
        article_text: "Cyrptocurrency market has boomed 1 schmitcoin being valued at £100 expedted to a thousandfold.",
        has_certificate: false,
        is_stamped: false,
        cert_sprite: -1, 
        is_forged: false,
        dialogue_yes: "Nice my freind, i see you have a postive canfield tilt.",
        dialogue_no: "Sure bud miss out on the bigest of all bucks!, your ugly to by the way, I mog the hell out of you.",
        has_bribe: true,
        bribe_amount: 15 
    },
    
    {
        name: "Hippy",
        sprite: spr_hippy, 
        dialogue: "Hey man I think this sick jam has gotta go straight to fron page man, me and my indie psychedelic ethereal jazz rock fusion band put together this awesome piece, no pressure I just think we need more recognish y'know to get out there.",
        article_type: "",
        article_text: "New experimental music album dropped by underground band JPEGwastakenagainstthemachinemafia, 100 songs and 3 hours long.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_gray_J,
        is_forged: false,
        dialogue_yes: "Wait what, really I never actually thought this would happen, wow man this has been a life long dream, thank you freind, here take this mixtape, its the first song me and my band have made its a little weird but please stick it on..",
        dialogue_no: "What the hell jackass, you think you're better than me, man hey screw you man.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "Officer",
        sprite: spr_officer, 
        dialogue: "Morning, to the point, I won't give you some long borning schpeil about how much this means to me both our time is valued, so I need you to print this article, it is pushing the agenda to increase the milatary spending budget, you will do this by writing about the impending threats across the pond. ",
        article_type: "war",
        article_text: "Enemys of the country gearng up for nuclear war, increase in milatary spending budget needed to combat threats.",
        has_certificate: true,
        is_stamped: false,
        cert_sprite: spr_certificate_no_stamp_M,
        is_forged: false,
        dialogue_yes: "I appreicate it.",
        dialogue_no: "Fool, you will be the reason this country falls",
        has_bribe: true,
        bribe_amount: 50
    },
    
    {
        name: "Judge",
        sprite: spr_judge, 
        dialogue: "Boy oh boy do I have a pitch for you. your aware that there releasing a prisoner today, yes the murderer, I want you to write about legalising the death penalty then all we have to do is get him before the monster is released.",
        article_type: "",
        article_text: "Evil crimanal serial killer released, public calls for legalisation of death penalty.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Thank you this helps the world a lot .",
        dialogue_no: "thats fine, I get it this is a moral conundrum.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "Punk",
        sprite: spr_punk, 
        dialogue: "yo fool, you gotta pulish this thing about the prez yo hes a monster yo, he's done horrible things to the people, c'mon you want to give power to the public right",
        article_type: "",
        article_text: "President of country ousted as sexual predator, public outraged.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Yo sick, lets expose this Nazi fuckwad.",
        dialogue_no: "Fucks wrong with you man I thought you cared about the cause.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "Puma",
        sprite: spr_puma, 
        dialogue: "Hey can you help fund the botanical gardens im trying to make a wildlife sanctary for endangered animals, so they can have happier lives and live longer, and hopefully recover",
        article_type: "",
        article_text: "Wildlife sanctuary requires funding to save endangered animals from extinction.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Thank you this helps the world a lot more than you know .",
        dialogue_no: "Thats a shame you're leaving all these animals to become extict there blood is on your hands.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "Alien",
        sprite: spr_alien, 
        dialogue: "Hey man I'm looking to sue this radio station they said is some person tattooed krud on there forehead they would get paid 250,000 smackaroo's but when I got to the station they just pointed and laughed at me.",
        article_type: "radio scheme",
        article_text: "Radio station scams normal looking fellow.",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Yeah lets sue these bastards .",
        dialogue_no: "Man no one ever takes me seriously, is it the tattoo isn't it.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "Guy",
        sprite: spr_guy, 
        dialogue: "Hello I would like to implemnt a neighbourhood watch to keep this town safe from hooilgains and ruffians.",
        article_type: "Vandals terrorise town nobel man sets up neighbourhood",
        article_text: ".",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Alrighty then.",
        dialogue_no: "Aw man.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "Nude Guy",
        sprite: spr_nude_guy, 
        dialogue: "Hello I would like to implemnt a neighbourhood watch to keep this town safe from hooilgains and ruffians.",
        article_type: "Vandals terrorise town nobel man sets up neighbourhood",
        article_text: ".",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Alrighty then.",
        dialogue_no: "Aw man.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "Boss",
        sprite: spr_boss, 
        dialogue: "Hello I would like to implemnt a neighbourhood watch to keep this town safe from hooilgains and ruffians.",
        article_type: "Vandals terrorise town nobel man sets up neighbourhood",
        article_text: ".",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Alrighty then.",
        dialogue_no: "Aw man.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "kid",
        sprite: spr_kid, 
        dialogue: "Hello I would like to implemnt a neighbourhood watch to keep this town safe from hooilgains and ruffians.",
        article_type: "Vandals terrorise town nobel man sets up neighbourhood",
        article_text: ".",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Alrighty then.",
        dialogue_no: "Aw man.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
    {
        name: "lepracon",
        sprite: spr_lepracon, 
        dialogue: "Hello I would like to implemnt a neighbourhood watch to keep this town safe from hooilgains and ruffians.",
        article_type: "Vandals terrorise town nobel man sets up neighbourhood",
        article_text: ".",
        has_certificate: true,
        is_stamped: true,
        cert_sprite: spr_certificate_stamp_green_B,
        is_forged: false,
        dialogue_yes: "Alrighty then.",
        dialogue_no: "Aw man.",
        has_bribe: false,
        bribe_amount: 0 
    },
    
];


