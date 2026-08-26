global.money = 0;
global.visitors_seen = 0;
global.daily_earnings = 0;
global.daily_penalties = 0;

global.current_visitor_index = 0;
    
global.visitor_database = [
    
    {
        name: "Paster Bob",
        sprite: spr_paster, 
        dialogue: "this is a superb opportunity for you my freind, the church of christ is in need of more loyal followers to the good cause, so if you accept this very hefty offer from the donation basket, in exchange, I would like you to share the good word of the lord with the non belivers to make them join the cause.",
        article_type: "religeon",
        article_text: "BREAKING NEWS.",
        has_certificate: true,
        is_stamped: true,
        dialogue_yes: "Thank you, my freind christs blessings be upon you child.",
        dialogue_no: "you sinful, blasphomous child how dare you renonce the only true god"
    },
    
    {
        name: "Crack Head",
        sprite: spr_crack_head, 
        dialogue: "H-hh-hey m-man, Cc--could you t-take a look at t-t-this d-d-dude, its a document to legalise Mary Jane bro, you know the mean green machine h-h-hasn't bin churnin out dough like usual you know, yeah i know the mean green machine is a cooooll nickname right bro?, anyway this act of legalisin the cush would help my old man he got the big C y'know it'd h-help me out if you could ease his pain man ",
        article_type: "non-sence",
        article_text: "UPDATE.",
        has_certificate: true,
        is_stamped: false,
        dialogue_yes: "duuuudeeee, this is sick nasty style bro, my pops can sleep easy man .",
        dialogue_no: "dude no stress I-i-i guess i'll find some s-s-somehow"
    },
    
    {
        name: "Dr Boss",
        sprite: spr_dr_boss, 
        dialogue: "Put this on the front page!",
        article_type: "sicence",
        article_text: "UPDATE.",
        has_certificate: true,
        is_stamped: true,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
    {
        name: "Hubert Billingsworth",
        sprite: spr_hubert_billingsworth, 
        dialogue: "Put this on the front page!",
        article_type: "money",
        article_text: "UPDATE.",
        has_certificate: false,
        is_stamped: false,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
    {
        name: "Hippy",
        sprite: spr_hippy, 
        dialogue: "Put this on the front page!",
        article_type: "non-sence",
        article_text: "UPDATE.",
        has_certificate: true,
        is_stamped: false,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
];


